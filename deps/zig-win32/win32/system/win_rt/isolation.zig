//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (1)
//--------------------------------------------------------------------------------
const IID_IIsolatedEnvironmentInterop_Value = Guid.initString("85713c2e-8e62-46c5-8de2-c647e1d54636");
pub const IID_IIsolatedEnvironmentInterop = &IID_IIsolatedEnvironmentInterop_Value;
pub const IIsolatedEnvironmentInterop = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetHostHwndInterop: *const fn(
            self: *const IIsolatedEnvironmentInterop,
            containerHwnd: ?HWND,
            hostHwnd: ?*?HWND,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetHostHwndInterop(self: *const IIsolatedEnvironmentInterop, containerHwnd: ?HWND, hostHwnd: ?*?HWND) callconv(.Inline) HRESULT {
        return self.vtable.GetHostHwndInterop(self, containerHwnd, hostHwnd);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (4)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const HRESULT = @import("../../foundation.zig").HRESULT;
const HWND = @import("../../foundation.zig").HWND;
const IUnknown = @import("../../system/com.zig").IUnknown;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}