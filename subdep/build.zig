const std = @import("std");

pub fn build(b: *std.Build) void {
    const subdep = b.addModule("subdep", .{
        .root_source_file = .{ .path = "src/root.zig" },
    });
    _ = subdep;
}
