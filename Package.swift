
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libios.zip", checksum: "dda1b2faa11525c868ecf7ae9ac7ce181c2e13e1f4290fe577d4a883424340e3")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libfreetype.zip", checksum: "8b5b839633a181ed266f218f8233bd9be59313d88218e8a9ddcfbed922d955c6")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpng16.zip", checksum: "8aaf472b2184bcc22e5be1b063474108bddfd77aacbe72030263645a2c576ac6")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpillow.zip", checksum: "2b6fb6f789638b48afc2b7642988576cae5b83df923f5d3e2c01f3ecd21516d5")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libkivy.zip", checksum: "3e0d0c3deee444f06a08d7cc4c01d40d3705c8b1f2a28702bc572451ed790426")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libjpeg.zip", checksum: "86683867fa03dbe076c7ad77c81123bbd27492319a58b61a001742439c0d3d1c")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpyobjus.zip", checksum: "35db0485e7eee9eb6a8ab52b3245b816c15a5490f680127cee8f1ea212af84a2")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_mixer.zip", checksum: "8a34884d125a9d6953cd7b5ca687cfd7dd772419f63d1e1d5e2bc3931207df10")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_ttf.zip", checksum: "aa4145c3d374c7d99410513fb5b38a272a190453231fb61d2594fd113263d515")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_image.zip", checksum: "fc18c049d84a336957c03ff6baead1660e502eba97d6e278f212d64289927e95")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2.zip", checksum: "3b4b004dfb5f33c6e2d87906c84bcbe0b2b75f77709087bed00be0a5e3c54f3f")
    ]
)