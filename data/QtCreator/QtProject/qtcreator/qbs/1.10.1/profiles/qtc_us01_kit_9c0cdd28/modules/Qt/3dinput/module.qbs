import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DInput"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt53DCore.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DInput"
    libNameForLinkerRelease: "Qt53DInput"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt53DInput.so.5.9.4"
    cpp.defines: ["QT_3DINPUT_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/Qt3DInput"]
    cpp.libraryPaths: []
    
}
