const std = @import("std");

pub fn build(b: *std.Build) void {
    const dep = b.addModule("dep", .{
        .root_source_file = .{ .path = "src/root.zig" },
    });
    dep.addImport("subdep", b.dependency("subdep", .{}).module("subdep"));
}
