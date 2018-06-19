import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick_p"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Multimedia.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Quick.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Qml.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread", "pulse-mainloop-glib", "pulse", "glib-2.0"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaQuick_p"
    libNameForLinkerRelease: "Qt5MultimediaQuick_p"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5MultimediaQuick_p.so.5.9.4"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtMultimediaQuick_p", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtMultimediaQuick_p/5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtMultimediaQuick_p/5.9.4/QtMultimediaQuick_p"]
    cpp.libraryPaths: []
    
}
