import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickInput"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3dinput", "3dquick"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt59/lib/libQt53DInput.so.5.9.3", "/opt/qt59/lib/libQt53DQuick.so.5.9.3", "/opt/qt59/lib/libQt53DCore.so.5.9.3", "/opt/qt59/lib/libQt5Quick.so.5.9.3", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DQuickInput"
    libNameForLinkerRelease: "Qt53DQuickInput"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt53DQuickInput.so.5.9.3"
    cpp.defines: ["QT_3DQUICKINPUT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/Qt3DQuickInput"]
    cpp.libraryPaths: ["/opt/qt59/lib", "/opt/qt59/lib"]
    
}
