import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiTools"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Widgets.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Widgets.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread", "GLESv2", "srv_um"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5UiTools"
    libNameForLinkerRelease: "Qt5UiTools"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5UiTools.a"
    cpp.defines: ["QT_UITOOLS_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtUiTools"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
