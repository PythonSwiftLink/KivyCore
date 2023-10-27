
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
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libios.zip", checksum: "10714b962cd91526cb121e286073915c72ec5cfe9afb6bce6178dff099444a1c"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libfreetype.zip", checksum: "c58b1220c56a4ef92f812285d1c59150f38aa8b5b93f647b275de7c1bbef700e"), 
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpng16.zip", checksum: "3ac529856226229d8696ba5b4805bbddd4438512de19caadd365cf5f697a149a"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpillow.zip", checksum: "688260cc581023f1002f25575271cda7a2291ddfb6b26c67036fd4ddb829dbd9"), 
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libkivy.zip", checksum: "1536ba1c0aad853de5640ff93acec2806b9031ba66100b075dd8fbc71fe9533b"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libjpeg.zip", checksum: "bd4d93a44304f5cbb160fb3f3287e931b49ad7a0076a75fa55ab174d2efc647a"), 
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libpyobjus.zip", checksum: "4c46668429c3e9ea2073f1edcbfacfe6dade5c87c20999a390350f7a100200c1"), 
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "7818ab2214af3ab2e94d184dfa23058ebdaf398ac4c04eaf4de0076c75822a42"), 
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "5edadbd332dc7e89aecffad5d326528b0eaf884f326be8e93319f32d2db3c0a9"), 
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2_image.zip", checksum: "8ca293c3af8eba89068432e57dd41c4110754e0bfd422fe8a7d476fb6cbc82cc"), 
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/311.0.0/libSDL2.zip", checksum: "4776ce42b3b8f800bf4c47c99288ed31023ec3cdc3be7f4579f34a97d293e290"), 
    ]
)