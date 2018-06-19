import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Designer"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "xml", "uiplugin"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/qt59/lib/libQt5Widgets.so.5.9.3", "/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Xml.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Designer"
    libNameForLinkerRelease: "Qt5Designer"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5Designer.so.5.9.3"
    cpp.defines: ["QT_DESIGNER_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtDesigner"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    
}
