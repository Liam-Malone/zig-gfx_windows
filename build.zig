const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "GfxDemo",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    if (b.lazyDependency("zig-win32", .{})) |zigwin32_dep| {
        const win32_bind = zigwin32_dep.module("zigwin32");
        exe.root_module.addImport("win32", win32_bind);
    }

    b.installArtifact(exe);
    const run_cmd = b.addRunArtifact(exe);
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run Program");
    run_step.dependOn(&run_cmd.step);
}
