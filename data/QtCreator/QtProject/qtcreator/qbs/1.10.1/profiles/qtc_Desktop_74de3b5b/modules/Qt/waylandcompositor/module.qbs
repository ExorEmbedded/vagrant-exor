import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandCompositor"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick", "qml"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt59/lib/libQt5Quick.so.5.9.3", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "wayland-server", "xkbcommon"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WaylandCompositor"
    libNameForLinkerRelease: "Qt5WaylandCompositor"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5WaylandCompositor.so.5.9.3"
    cpp.defines: ["QT_WAYLANDCOMPOSITOR_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtWaylandCompositor"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    
}
