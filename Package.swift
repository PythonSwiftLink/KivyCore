
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libios.zip", checksum: "3fa4349a4b9300922381c49ff4851be9d2d753341e7f6c0bbb95dd9fdb6cf750"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libfreetype.zip", checksum: "c7c8831568155db017546987d81aef34bed369cd51e606f7452e8d427d042b09"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libpng16.zip", checksum: "4972019734f811b355e65be4822ee6562ab6093b5d919afdd30f43a75b10afcc"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libpillow.zip", checksum: "de1c259aa4ce45e088f9874e1c06b5fa07654f55278ad92d029d3ab254bedf11"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libkivy.zip", checksum: "f49ad7080c69db66812ad06c27806261c1a92a68929d60837dd43c64a096d4d4"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libjpeg.zip", checksum: "854174df3d76599d6516cfd7e295d9c0ab3f95d49ca11563624484a4df051c11"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libpyobjus.zip", checksum: "06300c8897bdaf47e781ae0f42fd935bfc7777f907871ec5a70b215da65dd278"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libSDL2_mixer.zip", checksum: "cd9bde8de39e5b1d7f72433a73088d5e872bacc0e7f96dbf7cca7f9a09f9224f"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libSDL2_ttf.zip", checksum: "97fb2612a66c6fefb0b73395baed66ac39676acd062205bdeedcdce2a24932a3"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libSDL2_image.zip", checksum: "5de5becdfb16f5d2f347d34c589d664423e38b6b8c79ac11a824b1c5500d9e37"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.4/libSDL2.zip", checksum: "7eca0c1f4df1be5afa108dbc8616a32bb6deb23d5947b45654ff73f5b3297cb8"), 
    ]
)