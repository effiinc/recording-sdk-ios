// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScreenRecordingSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ScreenRecordingSDK",
            targets: ["ScreenRecordingSDKTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tylerjonesio/ffmpeg-kit-spm/", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0")),
        .package(url: "https://github.com/KaneCheshire/ShowTime.git", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "ScreenRecordingSDK",
            path: "ScreenRecordingSDK.xcframework"),
        .target(
            name: "ScreenRecordingSDKTarget",
            dependencies: [
                .product(name: "FFmpeg-Kit", package: "ffmpeg-kit-spm"),
                .product(name: "FFmpeg", package: "ffmpeg-kit-spm"),
                .product(name: "Moya", package: "Moya"),
                .product(name: "ShowTime", package: "ShowTime"),
                .target(name: "ScreenRecordingSDK", condition: .when(platforms: .some([.iOS])))
            ])
    ],
    swiftLanguageVersions: [.v5]
)
