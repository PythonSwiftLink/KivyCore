
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libios.zip", checksum: "a76ba6bfdf7005c4ac821501afcfa06882587681a4397545721008519352a3b1"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libfreetype.zip", checksum: "708c1e9547cd09e14fd5e3d89638af6aaa234b33c29362cc65e401edcb76f070"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpng16.zip", checksum: "1338241a9e83489369d99f2634460af69a2a3b9ef9cd6df5d03332109dfff6b5"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpillow.zip", checksum: "13bd6c25a9f34ef73002a8ad295cac02fca7593ecf7036c277f32cb2d25180f6"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libkivy.zip", checksum: "13a2fe7d23180fea24fa7aafdc2db91c24ce06afa294bf7994de1e3b59072a26"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libjpeg.zip", checksum: "2c203294987e1d4022da19df1544788a0aebf2e7bdd4f6f10a32a225fe900091"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libpyobjus.zip", checksum: "b99a84a1fb1355af4c4e638ba1046b46aacef48c2da3abefaf87072e5f7804a7"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_mixer.zip", checksum: "106c9ae18b6d55ff62d8bce9f7481e99ea62e799d49f6944e5567c9f4f94a299"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_ttf.zip", checksum: "ee33b1ed9440989eee3c14762174e25c841045dbd99153fc9d3079a6e885b6e2"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2_image.zip", checksum: "8565f4ead058d8af6741e84f146c7d7751831a0f9f634cad44b5f989d77e0b82"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.2/libSDL2.zip", checksum: "c64ace7c230ca266ce9f544a83252c91b6c037e163fc4442637f42e55f642977"), 
    ]
)