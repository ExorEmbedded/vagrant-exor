import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ServiceSupport"
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
    libNameForLinkerDebug: "Qt5ServiceSupport"
    libNameForLinkerRelease: "Qt5ServiceSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5ServiceSupport.a"
    cpp.defines: ["QT_SERVICE_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtServiceSupport", "/opt/qt59/include/QtServiceSupport/5.9.3", "/opt/qt59/include/QtServiceSupport/5.9.3/QtServiceSupport"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    isStaticLibrary: true
}
