const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    if (b.lazyDependency("single_module", .{ .target = target, .optimize = optimize })) |single_module| {
        const main = b.addModule("main", .{
            .target = target,
            .optimize = optimize,
            .root_source_file = b.path("src/main.zig"),
        });
        main.addImport("single_module", single_module.module("main"));
    }
}
