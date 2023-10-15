
// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KivyCore", 
    products: [
        .library(
            name: "KivyCore", 
            targets: [
                "KivyCore"
            ]), 
    ], 
    dependencies: [
        .package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", from: .init(310, 0, 0)), 
    ], 
    targets: [
        .target(
            name: "KivyCore", 
            dependencies: [
                "PythonCore", 
                "libfreetype", 
                "libios", 
                "libjpeg", 
                "libkivy", 
                "libpillow", 
                "libpng16", 
                "libpyobjus", 
                "libSDL2_image", 
                "libSDL2_mixer", 
                "libSDL2_ttf", 
                "libSDL2", 
            ], 
            linkerSettings: [
                // frameworks for sdl
                .linkedFramework("OpenGLES"), 
                .linkedFramework("Metal"), 
                .linkedFramework("AVFoundation"), 
                .linkedFramework("ImageIO"), 
                .linkedFramework("CoreHaptics"), 
                .linkedFramework("MobileCoreServices"), 
                .linkedFramework("MessageUI"), 
                .linkedFramework("WebKit"), 
                .linkedFramework("Accelerate"), 
                .linkedFramework("CoreGraphics"), 
                .linkedFramework("CoreVideo"), 
                .linkedFramework("CoreAudio"), 
                .linkedFramework("AudioToolbox"), 
                .linkedFramework("GameController"), 
                .linkedFramework("Photos"), 
                .linkedFramework("UIKit"), 
                .linkedFramework("QuartzCore"), 
                .linkedFramework("CoreMotion"), 
                .linkedFramework("CoreMedia")
            ]
        ), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.99.1/libjpeg.zip", checksum: "libkivy"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.99.1/libSDL2_mixer.zip", checksum: "libSDL2_ttf"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.99.1/libpillow.zip", checksum: "libpng16"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.99.1/libpyobjus.zip", checksum: "libSDL2_image"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.99.1/libfreetype.zip", checksum: "libios"), 
    ]
)