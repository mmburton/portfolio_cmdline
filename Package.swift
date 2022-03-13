// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Portfolio",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Portfolio", targets: ["Portfolio"])
    ],
    dependencies: [
        .package(name: "swift-argument-parser",
                 url: "https://github.com/apple/swift-argument-parser",
                 from: "1.0.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Portfolio",
            dependencies: [
            ]
        ),
        .executableTarget(
            name: "Browser",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .target(name: "Portfolio", condition: .none)
            ],
            path: "Runnables/Browser"),
        .executableTarget(
            name: "Math",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .target(name: "Portfolio", condition: .none)
            ],
            path: "Runnables/Math"),
        .testTarget(
            name: "PortfolioTests",
            dependencies: ["Portfolio"]),
    ]
)
