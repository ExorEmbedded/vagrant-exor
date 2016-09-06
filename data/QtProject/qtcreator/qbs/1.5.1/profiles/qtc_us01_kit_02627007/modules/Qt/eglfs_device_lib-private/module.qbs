import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglDeviceIntegration"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "platformsupport-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["dl", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5PlatformSupport.a", "fontconfig", "freetype", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5DBus.so.5.6.1", "Xext", "X11", "m", "input", "udev", "EGL", "IMGegl", "drm_omap", "GLESv2", "srv_um", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglDeviceIntegration"
    libNameForLinkerRelease: "Qt5EglDeviceIntegration"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5EglDeviceIntegration.so.5.6.1"
    cpp.defines: ["QT_EGLFS_DEVICE_LIB_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    
}
