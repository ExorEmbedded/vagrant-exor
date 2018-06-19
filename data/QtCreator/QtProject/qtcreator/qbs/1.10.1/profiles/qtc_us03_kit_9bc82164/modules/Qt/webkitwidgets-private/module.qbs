import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebKitWidgets"
    Depends { name: "Qt"; submodules: ["webkitwidgets"]}

    architecture: "arm"
    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebKitWidgets/5.9.2", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebKitWidgets/5.9.2/QtWebKitWidgets"]
    cpp.libraryPaths: []
    
}
