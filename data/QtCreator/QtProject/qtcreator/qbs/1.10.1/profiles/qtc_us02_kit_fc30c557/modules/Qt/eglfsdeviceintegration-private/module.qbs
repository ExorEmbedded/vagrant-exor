import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglFSDeviceIntegration"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "devicediscovery_support-private", "eventdispatcher_support-private", "service_support-private", "theme_support-private", "fontdatabase_support-private", "fb_support-private", "egl_support-private", "input_support-private", "platformcompositor_support-private"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5ServiceSupport.a", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5ThemeSupport.a", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5DBus.so.5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5FontDatabaseSupport.a", "fontconfig", "freetype", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5FbSupport.a", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5EglSupport.a", "Xext", "X11", "m", "EGL", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5InputSupport.a", "input", "xkbcommon", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5PlatformCompositorSupport.a", "GLESv2", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5DeviceDiscoverySupport.a", "udev", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread", "dl"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglFSDeviceIntegration"
    libNameForLinkerRelease: "Qt5EglFSDeviceIntegration"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5EglFSDeviceIntegration.so.5.9.4"
    cpp.defines: ["QT_EGLFSDEVICEINTEGRATION_LIB"]
    cpp.includePaths: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtEglFSDeviceIntegration", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtEglFSDeviceIntegration/5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtEglFSDeviceIntegration/5.9.4/QtEglFSDeviceIntegration"]
    cpp.libraryPaths: []
    
}
