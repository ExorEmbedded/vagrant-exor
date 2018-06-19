import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "KmsSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "drm", "dl", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5KmsSupport"
    libNameForLinkerRelease: "Qt5KmsSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5KmsSupport.a"
    cpp.defines: ["QT_KMS_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtKmsSupport", "/opt/qt59/include/QtKmsSupport/5.9.3", "/opt/qt59/include/QtKmsSupport/5.9.3/QtKmsSupport"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    isStaticLibrary: true
}
