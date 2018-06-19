import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ThemeSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/qt59/lib/libQt5Gui.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "/opt/qt59/lib/libQt5DBus.so.5.9.3", "/opt/qt59/lib/libQt5Core.so.5.9.3", "pthread", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ThemeSupport"
    libNameForLinkerRelease: "Qt5ThemeSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5ThemeSupport.a"
    cpp.defines: ["QT_THEME_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtThemeSupport", "/opt/qt59/include/QtThemeSupport/5.9.3", "/opt/qt59/include/QtThemeSupport/5.9.3/QtThemeSupport"]
    cpp.libraryPaths: ["/opt/qt59/lib", "/opt/qt59/lib"]
    isStaticLibrary: true
}
