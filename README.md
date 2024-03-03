# Pathological Zig packages

Each branch is a separate package that can be fetched using `zig fetch` to test
handling of these cases. URLs:

- `https://github.com/ianprime0509/pathological-packages/archive/BRANCH.tar.gz`
- `git+https://github.com/ianprime0509/pathological-packages#BRANCH`

A handy way to test many pathological cases on Linux is to create a FAT32
filesystem, which is case-insensitive and does not support symlinks:

```shell
fallocate -l 1G fat32.fs
mkfs.fat -F32 fat32.fs
mkdir fat32.mnt
sudo mount -o rw,umask=0000 fat32.fs fat32.mnt
ZIG_GLOBAL_CACHE_DIR=fat32.mnt zig fetch URL
```
