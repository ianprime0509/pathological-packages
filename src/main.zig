const std = @import("std");
const lazy_dependency = @import("lazy_dependency");

pub fn main() void {
    std.debug.print("Random number: {}\n", .{lazy_dependency.randomNumber()});
}
