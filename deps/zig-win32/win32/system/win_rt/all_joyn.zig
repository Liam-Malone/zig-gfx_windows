//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (4)
//--------------------------------------------------------------------------------
const IID_IWindowsDevicesAllJoynBusAttachmentInterop_Value = Guid.initString("fd89c65b-b50e-4a19-9d0c-b42b783281cd");
pub const IID_IWindowsDevicesAllJoynBusAttachmentInterop = &IID_IWindowsDevicesAllJoynBusAttachmentInterop_Value;
pub const IWindowsDevicesAllJoynBusAttachmentInterop = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Win32Handle: *const fn(
            self: *const IWindowsDevicesAllJoynBusAttachmentInterop,
            value: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn get_Win32Handle(self: *const IWindowsDevicesAllJoynBusAttachmentInterop, value: ?*u64) callconv(.Inline) HRESULT {
        return self.vtable.get_Win32Handle(self, value);
    }
};

const IID_IWindowsDevicesAllJoynBusAttachmentFactoryInterop_Value = Guid.initString("4b8f7505-b239-4e7b-88af-f6682575d861");
pub const IID_IWindowsDevicesAllJoynBusAttachmentFactoryInterop = &IID_IWindowsDevicesAllJoynBusAttachmentFactoryInterop_Value;
pub const IWindowsDevicesAllJoynBusAttachmentFactoryInterop = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromWin32Handle: *const fn(
            self: *const IWindowsDevicesAllJoynBusAttachmentFactoryInterop,
            win32handle: u64,
            enableAboutData: u8,
            riid: ?*const Guid,
            ppv: ?*?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn CreateFromWin32Handle(self: *const IWindowsDevicesAllJoynBusAttachmentFactoryInterop, win32handle: u64, enableAboutData: u8, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.CreateFromWin32Handle(self, win32handle, enableAboutData, riid, ppv);
    }
};

const IID_IWindowsDevicesAllJoynBusObjectInterop_Value = Guid.initString("d78aa3d5-5054-428f-99f2-ec3a5de3c3bc");
pub const IID_IWindowsDevicesAllJoynBusObjectInterop = &IID_IWindowsDevicesAllJoynBusObjectInterop_Value;
pub const IWindowsDevicesAllJoynBusObjectInterop = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        AddPropertyGetHandler: *const fn(
            self: *const IWindowsDevicesAllJoynBusObjectInterop,
            context: ?*anyopaque,
            interfaceName: ?HSTRING,
            callback: isize,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        AddPropertySetHandler: *const fn(
            self: *const IWindowsDevicesAllJoynBusObjectInterop,
            context: ?*anyopaque,
            interfaceName: ?HSTRING,
            callback: isize,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Win32Handle: *const fn(
            self: *const IWindowsDevicesAllJoynBusObjectInterop,
            value: ?*u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn AddPropertyGetHandler(self: *const IWindowsDevicesAllJoynBusObjectInterop, context: ?*anyopaque, interfaceName: ?HSTRING, callback: isize) callconv(.Inline) HRESULT {
        return self.vtable.AddPropertyGetHandler(self, context, interfaceName, callback);
    }
    pub fn AddPropertySetHandler(self: *const IWindowsDevicesAllJoynBusObjectInterop, context: ?*anyopaque, interfaceName: ?HSTRING, callback: isize) callconv(.Inline) HRESULT {
        return self.vtable.AddPropertySetHandler(self, context, interfaceName, callback);
    }
    pub fn get_Win32Handle(self: *const IWindowsDevicesAllJoynBusObjectInterop, value: ?*u64) callconv(.Inline) HRESULT {
        return self.vtable.get_Win32Handle(self, value);
    }
};

const IID_IWindowsDevicesAllJoynBusObjectFactoryInterop_Value = Guid.initString("6174e506-8b95-4e36-95c0-b88fed34938c");
pub const IID_IWindowsDevicesAllJoynBusObjectFactoryInterop = &IID_IWindowsDevicesAllJoynBusObjectFactoryInterop_Value;
pub const IWindowsDevicesAllJoynBusObjectFactoryInterop = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromWin32Handle: *const fn(
            self: *const IWindowsDevicesAllJoynBusObjectFactoryInterop,
            win32handle: u64,
            riid: ?*const Guid,
            ppv: ?*?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn CreateFromWin32Handle(self: *const IWindowsDevicesAllJoynBusObjectFactoryInterop, win32handle: u64, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.CreateFromWin32Handle(self, win32handle, riid, ppv);
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
// Section: Imports (5)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const HRESULT = @import("../../foundation.zig").HRESULT;
const HSTRING = @import("../../system/win_rt.zig").HSTRING;
const IInspectable = @import("../../system/win_rt.zig").IInspectable;
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