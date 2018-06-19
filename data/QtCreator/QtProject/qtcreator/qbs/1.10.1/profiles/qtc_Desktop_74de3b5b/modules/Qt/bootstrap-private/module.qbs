import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["pthread", "z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.9.3\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=9", "QT_VERSION_PATCH=3", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtCore", "/opt/qt59/include/QtCore/5.9.3", "/opt/qt59/include/QtCore/5.9.3/QtCore", "/opt/qt59/include/QtXml", "/opt/qt59/include/QtXml/5.9.3", "/opt/qt59/include/QtXml/5.9.3/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
