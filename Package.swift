
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
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libSDL2.zip", checksum: "febe5a4a8477243d486d8b9b26b49e0bbfbf888488c4c2191a7fb06f317a66f1"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libpng16.zip", checksum: "8ecbf2a569aace7ec82f5621f2b9e8aeb86fd88a91a5094e2bc0dac2e09ca0ed"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libkivy.zip", checksum: "ae8a7b5d85d0dff9eebca8d00f28339d3715cfdd5f19ade92dcf20f35b2cda3a"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libfreetype.zip", checksum: "8de312bfb1b1875a9b1acdb5c3201601b7923c8d0b6e477d8f7c1229615c03d9"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libSDL2_ttf.zip", checksum: "e391b34ccd755fc1cb41455b68dc3b81e3b6543e33fb7e0d126c27bbc41cfd59"), 
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libios.zip", checksum: "a2d86126a2669b2b2d204af726a18227be932e48cb03de66ebe4e68ac924acce"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libjpeg.zip", checksum: "c5c6e22e719b6fef040415aa75ec43fe0629c01eb138e725255d42f0abb6b29e"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libSDL2_mixer.zip", checksum: "05685210b684551fb53c51bdc93081eb9b0cd75e9889958f1d1564ecd61ec89a"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libpyobjus.zip", checksum: "74b89d4a96de96c81155cd724e4393883efd2850c784fb80d71827e32df5b572"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libSDL2_image.zip", checksum: "6119f5fb33f7f2fff6da46b9cf4aef2589a4256215427957efb7a51f036aa3bd"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.2/libpillow.zip", checksum: "7edb23ca215e87a9731cf6eb01f1dd70aab6cdf812a1518ea73a5002313e1ef6"), 
    ]
)