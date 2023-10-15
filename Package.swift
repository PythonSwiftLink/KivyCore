
// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KivyCore", 
    platforms: [.iOS(.v13)], 
    products: [
        .library(
            name: "KivyCore", 
            targets: [
                "KivyCore"
            ]), 
    ], 
    dependencies: [
        .package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", from: .init(310, 0, 0)), 
    ], 
    targets: [
        .target(
            name: "KivyCore", 
            dependencies: [
                .product(name: "PythonCore", package: "KivyPythonCore"), 
                "libfreetype", 
                "libios", 
                "libjpeg", 
                "libkivy", 
                "libpillow", 
                "libpng16", 
                "libpyobjus", 
                "libSDL2_image", 
                "libSDL2_mixer", 
                "libSDL2_ttf", 
                "libSDL2", 
            ], 
            linkerSettings: [
                // frameworks for sdl
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
                .linkedFramework("CoreMedia")
            ]
        ), 
    	.binaryTarget(name: "libios", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libios.zip", checksum: "c35854f7f3aa08a6dd4a1fdf9528f9f8d0e28d0f57fd8fc3f21fe3073074ab45")
    	.binaryTarget(name: "libfreetype", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libfreetype.zip", checksum: "9d400e9c14106cab8015180a179afc3044fde6ddd6a3d31114718cbfb5d398f8")
    	.binaryTarget(name: "libpng16", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libpng16.zip", checksum: "285bb36d02596e43da224911698b81a2734201767020a35fd3f86e96543a1f8a")
    	.binaryTarget(name: "libpillow", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libpillow.zip", checksum: "4055c188785c7def5a27dc8b74da5615188ea6e8503d35adfac5eda9e6bea875")
    	.binaryTarget(name: "libkivy", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libkivy.zip", checksum: "4833e5528f7d5895e63cadca453709baf83d2e5ed42ac3d0ea34771a5eb58107")
    	.binaryTarget(name: "libjpeg", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libjpeg.zip", checksum: "672c85d13a71612ab27921f565a932e0907eef88a2711cd215967f6102611dbc")
    	.binaryTarget(name: "libpyobjus", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libpyobjus.zip", checksum: "ce4d877c3ac083095a1ee459290447537449c37f20d329644acfe93c4306e1da")
    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libSDL2_mixer.zip", checksum: "d3633c9020c15fcb0ccfede42f2b16551375e05dae53fb2daf7808ada9cf1051")
    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libSDL2_ttf.zip", checksum: "ba24685f778c8cbd3a5086045f83b42179e583727751e99378b009d80e029e88")
    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libSDL2_image.zip", checksum: "39fcda1a7158a68c920cd952da8319f91356d132ef8bb1ff21c095da650284e2")
    	.binaryTarget(name: "libSDL2", url: "https://github.com/PythonSwiftLink/KivyCore/releases/download/310.999.4/libSDL2.zip", checksum: "eb9582c78259bca1f50b123aed7af032bf1349e8d937585a2c970f13337fad77")
    ]
)