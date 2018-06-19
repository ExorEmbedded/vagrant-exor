import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
    Depends { name: "Qt"; submodules: ["core-private", "script"]}

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
    cpp.includePaths: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtScript/5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtScript/5.9.4/QtScript"]
    cpp.libraryPaths: []
    
}
