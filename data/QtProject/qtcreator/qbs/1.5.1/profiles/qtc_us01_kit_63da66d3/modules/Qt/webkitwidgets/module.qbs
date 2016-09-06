import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebKitWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "network", "webkit"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5WebKit.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Widgets.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebKitWidgets"
    libNameForLinkerRelease: "Qt5WebKitWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5WebKitWidgets.so.5.6.1"
    cpp.defines: ["QT_WEBKITWIDGETS_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebKitWidgets"]
    cpp.libraryPaths: []
    
}
