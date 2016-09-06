import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiTools"
    Depends { name: "Qt"; submodules: ["uitools"]}

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
    cpp.includePaths: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtUiTools/5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtUiTools/5.6.1/QtUiTools"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
