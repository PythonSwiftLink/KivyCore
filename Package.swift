
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libios.zip", checksum: "b44f84ef2d6c584d29b330afbe3351cc499e2a8b32971d030d1e313aa31cea40"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libfreetype.zip", checksum: "8a5161d9b05fb2639062f696f39c72e7a503f151a521845bca91c71722aeab9c"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpng16.zip", checksum: "1117dab3b3c9d0f3c861933abbadea69e33eaa24225f0282cb3c74bc0d324851"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpillow.zip", checksum: "eb6fb4853d1d131d6d0b5f035b8259545019735e373564b723fe382801fa0754"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libkivy.zip", checksum: "c5546c902fb778c20cbb8bdad980ba88aea1f3a6dba572cae40bee140499face"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libjpeg.zip", checksum: "ec22483ee18833499bf7ae0e4a455e77be30f3a0bcb12c6203054ef83916ae7d"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libpyobjus.zip", checksum: "6a688cebb76b09fda523e7f55eebaa51fc2d182def5b8ed16d3663db22ccac9b"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_mixer.zip", checksum: "abd173d7c401154e6b2377ed4418c1e38a6853c23b685314ad4b2872c3959759"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_ttf.zip", checksum: "1c8e3ab7c160c1da231480d3399c89503fa55acda754d2ea01ef4cd441da85ee"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2_image.zip", checksum: "6c325e93bd7b4eade3830dea0b8a1075b2a9f568da12f3d9ab95f55a4289c704"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.1.0/libSDL2.zip", checksum: "bf468f22d052589d3b1cfa4f77118dd099f0571bc2f3ce6c4eb5b3201bbfd83f"), 
    ]
)