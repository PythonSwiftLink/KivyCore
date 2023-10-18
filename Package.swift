
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libios.zip", checksum: "2554807a6839eac45b12a0ac33cb0471ee7b35c9c3d9bc769a5147294461b691"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libfreetype.zip", checksum: "05e0e9ee8c5948a7e1d731b1a61196abf43dd0f1c157479b66d6268b372e0780"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpng16.zip", checksum: "318102d5c7d36f393a3cb5fd35ebacd498419a93a6010dbb84a12500134325a8"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpillow.zip", checksum: "bdb83294ea75a3c924968dcee408548581d4b16c992bce5772a7794678a3b578"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libkivy.zip", checksum: "d30b6c282c0cb03884df32edacea7d91f2bac61dbf042b1e815a6ebd086e94bb"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libjpeg.zip", checksum: "bb696d7aa788bf904f587ba1973a98d5a2be0a1110dd52f00d89bb4861343c4c"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpyobjus.zip", checksum: "8c1f461deb28ace4e4bab659fd435731c528a41e04d9753d6d961f3b1260dbdb"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_mixer.zip", checksum: "d75cabf0a62d20c53c1a14327311f18cec1e588202f82b388e94f5880f5e584b"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_ttf.zip", checksum: "2bced92da57582231069207709dac230cda13836eec8034774400e79688a1a9b"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_image.zip", checksum: "e753dc03184543437fcf40464e3238c9cd49c686ac3fe5cd6c72dbc0d3a03990"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2.zip", checksum: "3c3e6f07706de9a76884bdc0a9e8411fed7b12f27295c49b590349d87f793942"), 
    ]
)