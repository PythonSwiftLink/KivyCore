
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
    	.package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", .upToNextMajor(from: "310.0.0"))
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libios.zip", checksum: "36c99ddb99ff8743249c805bc63fe189b83d53ba1fa25cb8150903005941caa6"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libfreetype.zip", checksum: "ee6396bf296c0a30497ee6a866d9b74a808d85fc56910c0061a248b6e7b993c8"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libpng16.zip", checksum: "5a80b1f1d47e53f788a40025c7f9adab72d63b9d8d94cb27160881f22d9ee3ba"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libpillow.zip", checksum: "37627ff25e48cdaa7d017b8b5f079c4ed6bcaf3c696ccfc91843bf9d01d18a40"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libkivy.zip", checksum: "fb863a3b755fa51ddd79327d9af626cee9ab98ce9008cf64e9bca7f57677254f"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libjpeg.zip", checksum: "a95b654505a5f8aaeaf9bb161a6a59b268484b50bb54fb4368bd6cd2d03f4d05"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libpyobjus.zip", checksum: "d2ec27ec6b47a84358417b46e8cb3e72be02a893c74ee5e54880feb5acf6e9f0"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libSDL2_mixer.zip", checksum: "c1b05273a832212c3b261cfc44a261c72e2b82c81cac1c4bd9c79e83a29af4ab"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libSDL2_ttf.zip", checksum: "cc6eb1f26f3476865c430f3b98f4f87e1420d63a1405beb35e248f58ef485051"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libSDL2_image.zip", checksum: "7addfc60dea17bb8dcec14f8a2d9f5cb827088452191a2a5ff65988492c6f07e"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/999.0.0/libSDL2.zip", checksum: "c722ec3e596696580f6cb054b20cffd1f0ec00c646b4cdb29db284e356f2f6c8"), 
    ]
)