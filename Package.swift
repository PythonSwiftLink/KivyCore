
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libios.zip", checksum: "61574e4ae5d82dc247e66d4e3fdeaf00a461d6805c4b5ac5d99408b76c7ce860")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libfreetype.zip", checksum: "95f0355ef06966d095f67eba566e5a11de8334005bba701b1b6e9bd3c69356b9")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libpng16.zip", checksum: "dc3b41930e5d8ebf17c179b89174c1551d987f3244d65c32d120682c3a45572f")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libpillow.zip", checksum: "77bb479bf6e154a44c4fc12151907330d76b47e4f168a8f6479da6497ca3c8e2")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libkivy.zip", checksum: "cf9832169f50036afa897fa6d8e1c163fafd12a11bf4af7d377f30aeac228138")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libjpeg.zip", checksum: "8660cbd0a8cb028c74443fd7283733151077d3e2d7309bbda1ad246e2d3052dd")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libpyobjus.zip", checksum: "5390fd3869fe6e66695655b48d05ad436f28611d9445da691f94bb5375a0daa7")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libSDL2_mixer.zip", checksum: "bb6732d12578fb72163e7e3b58360549f994e5be4c62bbad5898dd790bd2a635")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libSDL2_ttf.zip", checksum: "ad7955a31dd091d6be547b75773b38425d749228e6a4c0a9aa29f364e9aca244")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libSDL2_image.zip", checksum: "853b68ed9ec16ee0850c6db073aaba515572f595fd57e981eb6426d6e48db48f")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.3/libSDL2.zip", checksum: "cb803ad326dcf76f00eb8111a7922c732ed07b5a9821a838008308fc32c24de1")
    ]
)