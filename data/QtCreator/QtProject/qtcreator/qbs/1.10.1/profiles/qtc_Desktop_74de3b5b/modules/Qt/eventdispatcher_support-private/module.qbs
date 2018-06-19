import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EventDispatcherSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "GL", "gthread-2.0", "glib-2.0"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EventDispatcherSupport"
    libNameForLinkerRelease: "Qt5EventDispatcherSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5EventDispatcherSupport.a"
    cpp.defines: ["QT_EVENTDISPATCHER_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtEventDispatcherSupport", "/opt/qt59/include/QtEventDispatcherSupport/5.9.3", "/opt/qt59/include/QtEventDispatcherSupport/5.9.3/QtEventDispatcherSupport"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    isStaticLibrary: true
}
