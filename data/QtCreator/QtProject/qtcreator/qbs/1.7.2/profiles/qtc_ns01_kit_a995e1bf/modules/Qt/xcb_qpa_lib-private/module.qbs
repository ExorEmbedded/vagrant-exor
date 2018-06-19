import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XcbQpa"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "service_support-private", "theme_support-private", "eventdispatcher_support-private", "fontdatabase_support-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["xcb-xinerama", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5ServiceSupport.a", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5ThemeSupport.a", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5DBus.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5FontDatabaseSupport.a", "GLESv2", "fontconfig", "freetype", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.2", "pthread", "X11-xcb", "X11", "Xi", "xcb-xkb", "xcb-render-util", "xcb-render", "xcb-sync", "xcb-xfixes", "xcb-randr", "xcb-image", "xcb-shm", "xcb-keysyms", "xcb-icccm", "xcb", "xcb-shape", "xkbcommon-x11", "xkbcommon"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XcbQpa"
    libNameForLinkerRelease: "Qt5XcbQpa"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5XcbQpa.so.5.9.2"
    cpp.defines: ["QT_XCB_QPA_LIB_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    
}
