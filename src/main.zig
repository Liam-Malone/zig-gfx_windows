const std = @import("std");
const win32 = @import("win32");

const Window = win32.ui.windows_and_messaging.WNDCLASSEX;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello Win32!\n", .{});

    const window: Window = .{
        .cbSize = @sizeOf(@This()),
        .style = 0,
        .lpfnWndProc = win_proc,
    };
    _ = window;
}

// pub const WNDPROC = *const fn(
//     param0: HWND,
//     param1: u32,
//     param2: WPARAM,
//     param3: LPARAM,
// ) callconv(@import("std").os.windows.WINAPI) LRESULT;
fn win_proc(
    hwnd: win32.foundation.HWND,
    smt: u32,
    w_param: win32.foundation.WPARAM,
    l_param: win32.foundation.LPARAM,
) callconv(std.os.windows.WINAPI) win32.foundation.LRESULT {
    _ = hwnd;
    _ = smt;
    _ = w_param;
    _ = l_param;
}
