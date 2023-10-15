
// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KivyCore", 
    platforms: [.iOS(.v13)], 
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
                .product(name: "PythonCore", package: "KivyPythonCore"), 
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
    	.binaryTarget(name: "xcframework", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/xcframework", checksum: "")
    ]
)