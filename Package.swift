
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libios.zip", checksum: "7a75048a199e29191ca9c1a68fbcaa2a356f91ef3296276c1b451be45c3c573c")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libfreetype.zip", checksum: "c3f2b3dac18f6b8666462079abd5d4d490221cf353a887bc8ef08565ffd864c5")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libpng16.zip", checksum: "4f4c4d22d3e41d31a846aaa6ca579035d3660f1cf3b54c49d86eb6d138503f98")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libpillow.zip", checksum: "cbb2e0ed5822976757d48ad0d8eab74a1952731f4761385f4df82333eead99d6")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libkivy.zip", checksum: "1f36ad3d4efc557b980474fece9b30dde954db57f17c8d143864d2dc8a23c708")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libjpeg.zip", checksum: "d693b57762c9ed456f433c9f16b99e2ee46b087a4355d631ee548b52b5011e79")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libpyobjus.zip", checksum: "12751f22dceff490ae88be6d0501a6069dbc09df40a773c46151d957c235fcbb")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libSDL2_mixer.zip", checksum: "6b49d2bdf97caa5da51a9bea895b4a1c9cd8efa0f17ed690fc99ca2f570443e6")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libSDL2_ttf.zip", checksum: "a0cc3ab5f45e53e201e7371e019a2caf5c3e6a3305825c1d31f635fccb1c1fc9")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libSDL2_image.zip", checksum: "d4e7a06082153f0e2435580671efb59cfaa210734422e913067e84ca7c7de1b9")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.0/libSDL2.zip", checksum: "e688713e375a6e939d2cbc0adef4d91922d700330b3f044ba83d7ac81b286525")
    ]
)