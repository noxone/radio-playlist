// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadioPlaylistCLI",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
        .package(name: "OnlineRadioBoxToSpotify", path: "../OnlineRadioBoxToSpotify"),
        .package(url: "https://github.com/Peter-Schorn/SpotifyAPI.git", .upToNextMajor(from: "2.2.4")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "RadioPlaylistCLI",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "OnlineRadioBoxToSpotify", package: "OnlineRadioBoxToSpotify"),
                .product(name: "SpotifyAPI", package: "SpotifyAPI"),
            ]
        ),
    ]
)