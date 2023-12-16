// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnlineRadioBoxToSpotify",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "OnlineRadioBoxToSpotify", targets: ["OnlineRadioBoxToSpotify"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
        //.package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from: "0.3.0")),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", .upToNextMajor(from: "2.6.1")),
        .package(url: "https://github.com/Peter-Schorn/SpotifyAPI.git", .upToNextMajor(from: "2.2.4")),
        .package(url: "https://github.com/JohnSundell/CollectionConcurrencyKit.git", .upToNextMajor(from: "0.2.0")),
        .package(url: "https://github.com/autozimu/StringMetric.swift.git", exact: "0.3.2"),
        .package(url: "https://github.com/tonyarnold/Differ.git", .upToNextMajor(from: "1.4.6")),
    ],
    targets: [
        .executableTarget(
            name: "OnlineRadioBoxToSpotify",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                //.product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                .product(name: "SwiftSoup", package: "SwiftSoup"),
                .product(name: "CollectionConcurrencyKit", package: "CollectionConcurrencyKit"),
                .product(name: "SpotifyAPI", package: "SpotifyAPI"),
                .product(name: "StringMetric", package: "StringMetric.swift"),
                .product(name: "Differ", package: "Differ")
            ]
        ),
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        //.executableTarget(name: "OnlineRadioBoxToSpotify"),
    ]
)