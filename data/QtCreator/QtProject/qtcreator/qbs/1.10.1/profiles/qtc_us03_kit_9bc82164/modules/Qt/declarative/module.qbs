import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Declarative"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "script", "sql", "network", "xmlpatterns"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Widgets.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Script.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Sql.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5XmlPatterns.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.9.4", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Declarative"
    libNameForLinkerRelease: "Qt5Declarative"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Declarative.so.5.8.0"
    cpp.defines: {
        var result = ["QT_DECLARATIVE_LIB"];
        if (qmlDebugging)
            result.push("QT_DECLARATIVE_DEBUG");
        return result;
    }
    cpp.includePaths: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtDeclarative"]
    cpp.libraryPaths: []
    property bool qmlDebugging: false
    property string qmlPath: "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5/qml"
    property string qmlImportsPath: "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5/imports"
}
