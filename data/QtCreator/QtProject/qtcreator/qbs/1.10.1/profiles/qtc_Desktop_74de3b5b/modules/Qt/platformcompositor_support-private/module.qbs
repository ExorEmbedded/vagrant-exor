import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PlatformCompositorSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PlatformCompositorSupport"
    libNameForLinkerRelease: "Qt5PlatformCompositorSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5PlatformCompositorSupport.a"
    cpp.defines: ["QT_PLATFORMCOMPOSITOR_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtPlatformCompositorSupport", "/opt/qt59/include/QtPlatformCompositorSupport/5.9.3", "/opt/qt59/include/QtPlatformCompositorSupport/5.9.3/QtPlatformCompositorSupport"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    isStaticLibrary: true
}
