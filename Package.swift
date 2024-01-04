
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libios.zip", checksum: "18a5a320ec2754ae657c13f26ea61beeeec5716a2e443f5e96e215588d20328e"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libfreetype.zip", checksum: "7699d69b14abcee86e8e8be40ae4993fdb185bf1223e2115b9ade692afb518a5"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpng16.zip", checksum: "4b730d0d7c69e67f473d4a280b21ebba1e6a8f2be948c5e6dddca3069c1d4ef6"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpillow.zip", checksum: "d00fb96dfa6757d27ffb34625618b917294da52e9c273e7a4313b23e06a446f3"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libkivy.zip", checksum: "30c334ae76ec657ba9b51f3b41c4913b811b31cd932f87c6b8c152dfda5e1583"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libjpeg.zip", checksum: "d0e77c7b996d69f7566239577338d8133be31867d32de581db3e33197ea773ab"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpyobjus.zip", checksum: "a43adf0565421c6eab88f4fa2cb0e0e6e9dab1ea9faeb4dc5f6fd049d78f6905"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_mixer.zip", checksum: "2568b6e554d312d466e2a97eec48b4538ecce962cb07dbe4c15cf69d39de7ab5"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_ttf.zip", checksum: "107ec020933e8a69da6d9dc0a2a8e0edde784f2b4035370e3a16736a970facc7"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_image.zip", checksum: "3dad27350a3917202477297332544985439f3a00a9509940a26352cbcc61888f"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2.zip", checksum: "6a5dd660f857b7ceae9b70f5fbc7b3f5bfeba3df48dcafb654686731bbac7569"), 
    ]
)