import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "webchannel", "positioning"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt59/lib/libQt5Quick.so.5.9.3", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5WebChannel.so.5.9.3", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5Qml.so.5.9.3", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5Network.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5Positioning.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebEngineCore"
    libNameForLinkerRelease: "Qt5WebEngineCore"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5WebEngineCore.so.5.9.3"
    cpp.defines: ["QT_WEBENGINECORE_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtWebEngineCore"]
    cpp.libraryPaths: ["/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib", "/opt/qt59/lib"]
    
}
