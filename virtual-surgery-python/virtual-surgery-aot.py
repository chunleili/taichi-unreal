import taichi as ti
import os

arch = ti.x64
ti.init(arch=arch, offline_cache=False, default_fp=ti.f32, device_memory_GB=0.01)
particle_num = 10

arr = ti.any_arr(field_dim=1)
@ti.kernel
def initialize(pos: arr):
        for i in range(particle_num):
            pos[i] = ti.Vector([0, i*0.1, 0])

@ti.kernel
def advect(pos: arr):
        for i in range(particle_num):
            vel = ti.Vector([0, -0.001, 0])
            pos[i] += vel

if __name__ == "__main__":
    pos = ti.Vector.ndarray(3, ti.f32, shape=particle_num)
    
    mod = ti.aot.Module(arch)
    mod.add_kernel(initialize,template_args={'pos':pos})
    mod.add_kernel(advect,template_args={'pos':pos})

    # ---------------------------------------------------------------------------- #
    #                                   save aot                                   #
    # ---------------------------------------------------------------------------- #
    save_dir = "D:/Dev/taichi-unreal/SPHExample/Resources/SPH_AOT/sph_cuda"
    import shutil
    if(os.path.exists(save_dir)):
        shutil.rmtree(save_dir)
    os.makedirs(save_dir, exist_ok=True)
    mod.save(save_dir)
    print("\n\n------------------\nPython AOT generated succeed!!!!! at\n", save_dir,"\n------------------\n\n")
