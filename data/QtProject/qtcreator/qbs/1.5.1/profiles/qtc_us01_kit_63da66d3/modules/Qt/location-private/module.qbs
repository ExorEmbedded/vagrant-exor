import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core-private", "positioning-private", "location"]}

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
    cpp.includePaths: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtLocation/5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtLocation/5.6.1/QtLocation"]
    cpp.libraryPaths: []
    
}
