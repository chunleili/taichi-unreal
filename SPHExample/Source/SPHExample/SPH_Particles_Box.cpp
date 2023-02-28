// Fill out your copyright notice in the Description page of Project Settings.
#include "SPH_Particles_Box.h"
#include "Modules/ModuleManager.h"
#include "AOTPlugin.h"

// Sets default values
ASPH_Particles_Box::ASPH_Particles_Box()
{
	
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	Root = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
	RootComponent = Root;

	InstancedMesh = CreateDefaultSubobject<UInstancedStaticMeshComponent>(TEXT("InstancedStaticMesh"));
	InstancedMesh->SetMobility(EComponentMobility::Static);
	InstancedMesh->SetCollisionEnabled(ECollisionEnabled::PhysicsOnly);
    InstancedMesh->SetGenerateOverlapEvents(false);

    InstancedMesh->SetupAttachment(RootComponent);
	InstancedMesh->RegisterComponent();

    InstancedMesh->ClearInstances();
    for (int i = 0; i < NR_PARTICLES; i++)
    {
        InstancedMesh->AddInstance(FTransform(FVector(0.f, 0.f, 0.f)), false);
    }

}

// Called when the game starts or when spawned
void ASPH_Particles_Box::BeginPlay()
{
	Super::BeginPlay();
    
    // 1. Initialize Taichi runtime
	// arch_ = TI_ARCH_CUDA;
    arch_ = TI_ARCH_X64;
	runtime_ = ti::Runtime(arch_);

	// 2. Load AOT file
	FString project_path = FPaths::Combine(FPaths::ProjectDir(), TEXT("Resources/SPH_AOT/sph_cuda"));
	module_ = runtime_.load_aot_module(TCHAR_TO_UTF8(*project_path));
	
	// 3. Create kernels
	k_initialize_ = module_.get_kernel("initialize");
	k_advect_ = module_.get_kernel("advect");
	
	// 4. Create kernel arguments - Ndarrays
    const std::vector<uint32_t> shape_1d = {NR_PARTICLES};
    const std::vector<uint32_t> vec3_shape = {3};

    pos_ = runtime_.allocate_ndarray<float>(shape_1d, vec3_shape, true);
    UE_LOG(LogTemp, Warning, TEXT("pos_.shape = %d"), pos_.elem_count());
	// 6. Setup taichi kernels
    k_initialize_[0] = pos_;
    k_advect_[0] = pos_;

	// Run Taichi initialization code to determine initial particle positions
	k_initialize_.launch();
    runtime_.wait();

    Update();
}

// Called every frame
void ASPH_Particles_Box::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

    // 8. Run compute kernels
    for(int i = 0; i < SUBSTEPS; i++) {
        k_advect_.launch();
    }
    runtime_.wait();
    Update();
}

void ASPH_Particles_Box::Update() {
	std::vector<float> positions(NR_PARTICLES * 3);
	pos_.read(positions);

    float scale = 5000;
    for (size_t i = 0; i < NR_PARTICLES; i++) {
        FVector NewLocation = FVector(positions[i * 3], positions[i * 3 + 2], positions[i * 3 + 1]) * scale;
        FTransform NewTransform = FTransform(NewLocation);
        InstancedMesh->UpdateInstanceTransform(i, NewTransform, false, true, true);
    }
    InstancedMesh->MarkRenderStateDirty();
}