const std = @import("std");
const helper = @import("helper");

pub fn build(b: *std.Build) void {
    helper.addStep(b);
}
