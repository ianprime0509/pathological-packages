const std = @import("std");
const dep = @import("dep");

pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{dep.thing});
}
