import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Gui"
    Depends { name: "Qt"; submodules: ["core-private", "gui"]}

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
    cpp.includePaths: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtGui/5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtGui/5.9.4/QtGui"]
    cpp.libraryPaths: []
    
}