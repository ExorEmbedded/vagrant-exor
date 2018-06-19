import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["bootstrap-private"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Bootstrap.a", "pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDevTools"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQml", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQml/5.9.4", "/opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQml/5.9.4/QtQml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
