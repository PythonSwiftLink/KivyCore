
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
        		"libffi", 
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libios.zip", checksum: "b5f929e6bcaeeb6f778e0f1eb25c157ebb4ea4b783d772ad1331f23eae45093d"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libfreetype.zip", checksum: "fbe2001118b7f42af184275f5440d5a230bb7edc0cde42c812913af647047ead"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpng16.zip", checksum: "60ecac2eb51b054774d7d6b72a5715e395cfdc272cbfe1d52c824a00c0fcbdd6"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpillow.zip", checksum: "f46b5d1a2e345dd4c83fe7ba9a058d431aedffe89a700576e416ec1dd2300eec"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libkivy.zip", checksum: "c9eff36e4302a775d293e1ee3e8c569ff475557980dd314fb5546218687455d8"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libjpeg.zip", checksum: "83dfd3fc3a4583a75fffd9e9308b046694f7ccfd50b3f62097c8cbbb340d70d2"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpyobjus.zip", checksum: "866f11928fe4e90c376f4e538c3241fd0d1872f35dd11168818b9342ce422359"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "ac5f615f843a08e8df5a6f557a376bb0acf9595fc151a229a7b8dc9b9dd8de8a"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "500de5bb5b3719fa4ce32accd8c0478240656df09d237a5c85a8279eb977ca24"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_image.zip", checksum: "6ba2b48bf7d72415d3a0f3c97a275437bd129236325643970fdb4c9c4eaff8e7"), 
    	.binaryTarget(name: "libffi", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libffi.zip", checksum: "c443ece5ef0ddee4fed0ffded18308a92900e60c021bb86760f2f159e752ce50"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2.zip", checksum: "e2b9595c2790111d9ae599ccf1ea79d3da20f5a478fb1f389c3c38b198d81980"), 
    ]
)