import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebSockets"
    Depends { name: "Qt"; submodules: ["core-private", "websockets"]}

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
    cpp.includePaths: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebSockets/5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebSockets/5.9.4/QtWebSockets"]
    cpp.libraryPaths: []
    
}
