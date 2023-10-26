
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "KivyCore", 
    platforms: [.iOS(.v13)], 
    products: [
    	.library(
        	name: "KivyCore", 
        	targets: [
        		"KivyCore"
        	]
    	), 
    ], 
    dependencies: [
    	.package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "KivyCore", 
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"), 
        		"libios", 
        		"libfreetype", 
        		"libpng16", 
        		"libpillow", 
        		"libkivy", 
        		"libjpeg", 
        		"libpyobjus", 
        		"libSDL2_mixer", 
        		"libSDL2_ttf", 
        		"libSDL2_image", 
        		"libSDL2", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
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
        		.linkedFramework("CoreMedia"), 
        	]
    	), 
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libios.zip", checksum: "a32dc829e85828e641a2b61a5bb49b17576b178cb3835ebc4d678978dd8970e1"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libfreetype.zip", checksum: "574eac88f1febaa9ea228026634d209c1b4aac52c524927e1432724c462d7f3e"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpng16.zip", checksum: "e27fba70ddfe8787f105c0ec2c0240206e9d5ed81079def4e0764ee24721a62c"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpillow.zip", checksum: "23f5370400ff717996b796d3719ce04e8adf4bd78a87307596c41561501ddfa4"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libkivy.zip", checksum: "0dce4118035fb15523553dc231053653adf83a72a723a8cd943f192a1c34bc1c"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libjpeg.zip", checksum: "a4c51b3af67a44afe1f22f30712b771e1058c686ecd08eea0e2c67344706cf47"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpyobjus.zip", checksum: "d3a5a47f7dcba1064cebfd44c661debe4ccfc611680463728c52724efd029cd8"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "d683109e71a754c5d6b4984519c07969f6b429f74740d2bc942a0209f09fc71d"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "5ed87ee0d7169cf4e84fba0fac3084937282973b683a4a2058ec627f97acbbd0"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_image.zip", checksum: "2e5421193d9c4e75d1be531760ba5d97302dcab32ead2526f1679ea925b44c0a"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2.zip", checksum: "9845af2aef328066345a33aa327c32dc92ff52842c3ce39791cc969b4b630acf"), 
    ]
)