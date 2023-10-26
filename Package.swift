
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libios.zip", checksum: "be16c77017002087e9e7e63d367cb015a086f5844737b3cf51284df5df5678ad"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libfreetype.zip", checksum: "60b5ad467841d9660537d64290826ebe9be75a7e575156db1404d9f2778c6b92"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libpng16.zip", checksum: "4c203573ef84c23f21df9730180c970d6f540edb149d01fafe5497595f7d2398"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libpillow.zip", checksum: "4e63d8b2e91a3ec6130c58c58985b475b8440c8b5d506c52a2e5db1bfbcf6445"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libkivy.zip", checksum: "c1a7307b2c184272e0d6d24cac0766b536850042337065b5994565dd7d138715"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libjpeg.zip", checksum: "9bc65ee6abef97d8cad3fe240543963d35c15799c166170fa5de9d62a7187588"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libpyobjus.zip", checksum: "cfe2920c93287a8fea54e17f0ce45971b135645bbfdf7fc721611398b9e8025d"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libSDL2_mixer.zip", checksum: "ab256228369fee9fc650966a304721a0c0f67545f754d10a02812dfdbf02a19d"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libSDL2_ttf.zip", checksum: "357282357c5505b81c5994e7f9ab098b9cee0444eabdefbd4705f1887fc550cf"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libSDL2_image.zip", checksum: "53c320f5b388555a4345d6ed7ef60985e5009de6a329088c54eb5bb15f5cb175"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.0.0/libSDL2.zip", checksum: "bc4c8ca7e8675badbe2c64f473f3664f5883569b5796e4f11cd86271bece9054"), 
    ]
)