import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "RepParser"
    Depends { name: "Qt"; submodules: ["repparser"]}

    architecture: "x86_64"
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
    cpp.includePaths: ["/opt/qt59/include/QtRepParser/5.9.3", "/opt/qt59/include/QtRepParser/5.9.3/QtRepParser"]
    cpp.libraryPaths: []
    
}
