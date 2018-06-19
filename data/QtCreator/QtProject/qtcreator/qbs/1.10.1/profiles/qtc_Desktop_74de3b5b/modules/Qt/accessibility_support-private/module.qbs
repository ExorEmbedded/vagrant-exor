import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "AccessibilitySupport"
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
    libNameForLinkerDebug: "Qt5AccessibilitySupport"
    libNameForLinkerRelease: "Qt5AccessibilitySupport"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/qt59/lib/libQt5AccessibilitySupport.a"
    cpp.defines: ["QT_ACCESSIBILITY_SUPPORT_LIB"]
    cpp.includePaths: ["/opt/qt59/include", "/opt/qt59/include/QtAccessibilitySupport", "/opt/qt59/include/QtAccessibilitySupport/5.9.3", "/opt/qt59/include/QtAccessibilitySupport/5.9.3/QtAccessibilitySupport"]
    cpp.libraryPaths: ["/opt/qt59/lib"]
    isStaticLibrary: true
}
