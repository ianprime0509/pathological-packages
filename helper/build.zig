const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b;
}

pub fn addStep(b: *std.Build) void {
    _ = b.step("do-something", "Do something");
}
