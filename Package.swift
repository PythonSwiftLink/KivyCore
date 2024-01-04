
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libios.zip", checksum: "64135859d160c46535fe376dbc7a3eb2da43e29e1079a118d6d1c322c29196d1"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libfreetype.zip", checksum: "ff50330800126022653b857131b275dcf7f1472432c29c9986d0335ff879b085"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpng16.zip", checksum: "0383a2bfd570f2f32b77b054b2dd211344d19553a6d629d0c895e756c9918b73"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpillow.zip", checksum: "525c12b2b2e0f4845519e7f282b4079167b4852b8f12bf30eef862ad954dac04"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libkivy.zip", checksum: "74e09d28d870c0d3db6a6c10544898cb2e8ac1e119d8c84326b94fbb57567e0f"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libjpeg.zip", checksum: "3099ac74aa8c93b3cf1d6002ef430ab2c2e6ee3adbbde7246993c2299890e0fb"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libpyobjus.zip", checksum: "226a812ec80af240216cc2031639e088c9cf6027130d1cd99d8c649a44f4d765"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_mixer.zip", checksum: "7d85c61fe0bed4eb029f0b91afac0d8ae3e865307809bcf58d7d0310af9b558d"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_ttf.zip", checksum: "4505c1a95c0880ba84c31e2bfd8f63e3a5d35e05bc6a16ab5f89f51d3a3531fc"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2_image.zip", checksum: "b369d2c07b8350ed3d00a1c5970d329fe3abce505f1dba0c4b090a1fc17ede23"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.3/libSDL2.zip", checksum: "fb5e9f4612dce6a1889d1960243371796c40cbab658eeee97ec1ae0bbcfd986f"), 
    ]
)