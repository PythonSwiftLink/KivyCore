
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libios.zip", checksum: "54dc60d1c9e52c6c9c22e2094ea8c8d61a570814d01b017e2e9a5adf5f8032f9")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libfreetype.zip", checksum: "83e044ce021920a6fc35bfa5349743653bfb302045ceb61688adbbd600080ccf")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpng16.zip", checksum: "4ec3c0f37d3ad9e3dbe18e5f6da8f94cac3308a752818f744bdacd679c23b95a")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpillow.zip", checksum: "178e1d576cbcd4d2e571e01f7ed0e30fc0f5424b21dbea0092ab6214752a2d3e")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libkivy.zip", checksum: "775453d003b2432ac1b7c1dcfc61f4081dac529577a099e506883ca5c526d528")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libjpeg.zip", checksum: "e3c5f591f783e753e64ab7a73e7a43356a2f5174677a7e1c520a667ed78dc0ac")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpyobjus.zip", checksum: "da09b01aea536b6ee5ba7ad8bf59b9adb9d5537def7ae70db29385c3a8338065")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_mixer.zip", checksum: "e2da22f2042d131dc6cff15363d766104d6172181ef8db70db78ec982decee54")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_ttf.zip", checksum: "759e3f0981b1eef2fc1dd97ae6332df631df285fad7e545c7b14cbc3cc6d9e7c")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_image.zip", checksum: "49e68985d26919aa3de276523c4335e778f52863ec290852ab5b2c32878896b7")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2.zip", checksum: "a2a8a3a7cb1da1d3aaaa9859a8eca22a1d76007a8bd04a43f12e6115d9fd379c")
    ]
)