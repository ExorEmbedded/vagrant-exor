import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickScene2D"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3dquick"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt59/lib/libQt53DRender.so.5.9.3", "/opt/qt59/lib/libQt53DQuick.so.5.9.3", "/opt/qt59/lib/libQt53DCore.so.5.9.3", "/opt/qt59/lib/libQt5Quick.so.5.9.3", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Concurrent.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DQuickScene2D"
    libNameForLinkerRelease: "Qt53DQuickScene2D"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt53DQuickScene2D.so.5.9.3"
    cpp.defines: ["QT_3DQUICKSCENE2D_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/Qt3DQuickScene2D"]
    cpp.libraryPaths: ["/opt/qt59/lib", "/opt/qt59/lib"]
    
}
