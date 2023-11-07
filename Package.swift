
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libios.zip", checksum: "d94c3ff79dc3f6462cfa15a629321e896af18c4d0d3663a3352e7ed6c8f2f47d"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libfreetype.zip", checksum: "640ac29e9c74f1546dab5a85a282c3c24fc6ee38c40dff4c1b740bfe1513fe75"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpng16.zip", checksum: "129f36449cf83d527dc283d305d69920ab8892c18818a6a33def0c437c215459"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpillow.zip", checksum: "70574c1d2a47805a0e54308199bba8315f32b76e4de6926cedc0ad19ca5dd911"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libkivy.zip", checksum: "44c88120c623b3583946f377ad50aba881e3c90883cac84febfe62f73e8ceec1"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libjpeg.zip", checksum: "df5f498941853c190b455b3fe993f24db6da6af1e1cfaef6ebb9934d4425c604"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpyobjus.zip", checksum: "bcc71a0a80a5c42253de6b06a4bf1b954d7cf29a2f8ca4b65324f1acce047bce"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_mixer.zip", checksum: "e5a22f6bf21966a7b601d51ba793f3a98c1c7dbbd3073990917bbe95ea43e9af"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_ttf.zip", checksum: "b4f8f8fc295ef37b75a10bc51d6a5e5b06e62572ac896b08705783865ed47c75"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_image.zip", checksum: "54d6337dcc3c7f024bd3049d1d68a705e38afc0505c848312eac8fe1f40ddac8"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2.zip", checksum: "87f2e58e6886ac964bc6bd889a40f909968e50d3bd8476e19eb5d792ad5625c2"), 
    ]
)