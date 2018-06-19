import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DesignerComponents"
    Depends { name: "Qt"; submodules: ["core", "gui-private", "widgets-private", "designer-private", "xml"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Designer.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Widgets.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Xml.so.5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5DesignerComponents"
    libNameForLinkerRelease: "Qt5DesignerComponents"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5DesignerComponents.so.5.9.4"
    cpp.defines: ["QT_DESIGNERCOMPONENTS_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtDesignerComponents", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtDesignerComponents/5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtDesignerComponents/5.9.4/QtDesignerComponents"]
    cpp.libraryPaths: []
    
}
