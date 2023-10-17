
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libios.zip", checksum: "6400a975d31f0fc6944ba85ca0acc44763ee4e0c1eb23b54424840b67bb81b80")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libfreetype.zip", checksum: "8fddf2f8315ff0d59979839c1e8f46e1f52b541599474294c5467be1b9d7441a")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpng16.zip", checksum: "9be58da875da6014c01792475ab5a5a70b111d5b073826995a8880e5f626ce9b")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpillow.zip", checksum: "d6894e3e865b8aa9f7db06266d097fe8f945383f2b8c77603e728ca791404848")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libkivy.zip", checksum: "1d268bcf6af812d7740c0e4f65efbfe1098afede41808bdac64c3ddb367f0234")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libjpeg.zip", checksum: "5dd954bfad50037d331ec67e38e1502728dd8be7df0d3df2526b7bf4066da30a")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libpyobjus.zip", checksum: "26a4dbb1f8c822f2c8d5027623f42f3957ab0ffde81e2cf04214b55b1d2236b6")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_mixer.zip", checksum: "9fd36ab50679fd7453b24d81c0b988753b4bd2ba8ce2e34841311209fbe734b6")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_ttf.zip", checksum: "78976a36e51f2c51f2f38a534ba524e2a551d376b648b9f39868d73780f17430")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2_image.zip", checksum: "4dba681a563d66445f7aa6c63f58a8ec6c1369318899698b999049c0a4367a4c")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.1/libSDL2.zip", checksum: "4ae886666e759870ac8f69d099fb4ba4df38deb2ee0e801dbf944ffbffd6951e")
    ]
)