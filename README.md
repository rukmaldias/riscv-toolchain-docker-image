# riscv-toolchain-docker-image
A docker image for the RISC-V C and C++ cross-compiler.
(basically a build image of https://github.com/rukmaldias/riscv-toolchain-docker-image toolchain)

Run interactively
>docker pull rukmaldias/riscv-toolchain:ubuntu24.04
>docker run -it --rm riscv-toolchain:ubuntu24.04

Or mount your project directory
>docker run -it --rm -v $(pwd):/workspace riscv-toolchain:ubuntu24.04

Or run a specific command
>docker run --rm -v $(pwd):/workspace riscv-toolchain:ubuntu24.04 riscv64-unknown-elf-gcc --version

