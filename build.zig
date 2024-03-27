const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        .name = "exe",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = b.host,
        .optimize = .Debug,
    });
    exe.root_module.addImport("dep", b.dependency("dep", .{}).module("dep"));
    b.installArtifact(exe);

    const install_docs = b.addInstallDirectory(.{
        .source_dir = exe.getEmittedDocs(),
        .install_dir = .prefix,
        .install_subdir = "docs",
    });
    b.step("docs", "Generate docs").dependOn(&install_docs.step);
}
