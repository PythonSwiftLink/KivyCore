
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libios.zip", checksum: "c7c898e35faea27caf01b336ae4005096cccf651b916222a48fbad89f16ad5e6")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libfreetype.zip", checksum: "f21a7043dfb16b7a90c02a3c9037dc3a46fab56087f00da87615c91075356ab6")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpng16.zip", checksum: "11a5927978e136e8815f5a2975fab5805b00b9a6c22682cfc5e8548a5cdb1bb8")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpillow.zip", checksum: "466495bee8c8f9fbeb34423a380a151e6d04a4575b5caccd691c4e1e1df440e4")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libkivy.zip", checksum: "852fd9711cf34e9ffbba3359c18c5a665c70499c016a0198ccd7ed38c8423eec")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libjpeg.zip", checksum: "5691a9b1febae59a573b1702b4c2a61238fd0c956752ab908cd31cd615888cc6")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libpyobjus.zip", checksum: "dc59378971405b620da914b800d490481967606e0559b87bdac817902736511d")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_mixer.zip", checksum: "6050b728fcfc5f52b9919bd47e8bd5664c588ccf1c065540205ce6a5c86d583a")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_ttf.zip", checksum: "d543493c1e8fe03277984108ea70567717044dcad29dcc7eacbdebda8070a87f")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2_image.zip", checksum: "774f37ac49d9ed9f0ecf11b18471b04fc354ee165a581d68aed7d35a08e41d82")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.2/libSDL2.zip", checksum: "81ca1a6cad5eae7e34f6fae85987a14cc1c36e1ff6c170d6752da0e274f0fb21")
    ]
)