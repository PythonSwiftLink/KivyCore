
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
        		.product(name: "PythonCore", package: "KivyPythonCore"), 
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libios.zip", checksum: "392c551f77b5cc5fb21ef6e0e5aff99ecc0efa905eb922de676a8e28ca7451fc"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libfreetype.zip", checksum: "7568afbefb0c025a5574c89c8c44e82eb3ca08c38e6aaa2c328cafd42e89a6c3"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpng16.zip", checksum: "90271ec6354d194c77bf6b487047f999912a104a8aeb5efb1b14ae0cb7b05a26"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpillow.zip", checksum: "f2664d95739c1d8784d301ac278cd4e07aa9f73e97a6509ff78979b401594ad6"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libkivy.zip", checksum: "9e72195382758d30de72e0fd59faf42f3c33d816de93b0e6302ddc889a6d8be8"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libjpeg.zip", checksum: "5f4f6448675d4c05ba455e336919f84260a17e579fcecf6713a882287d8e9a22"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libpyobjus.zip", checksum: "ec9be6acf588ca0865bdab9f24d71c6b6fa657c666e8a19646b2daf8ef7e24a2"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "9144f949d63fad70c5433d466bab9341ef177f0010f9a26dcfdbe6aced227456"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "36f87e4d0a01abbdffe5d925c16d148d2740811466fc8866c3e56ddc2fcddaa7"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2_image.zip", checksum: "26cb19b85b9cf0652748ab66ef652e2bf2e1a43fe64c8134e16df977a27e81ce"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.1/libSDL2.zip", checksum: "d50999cf5bf71bfe3f748e8ee11be76c2d5175402fbf8b7c497ab7fc2a9cf723"), 
    ]
)