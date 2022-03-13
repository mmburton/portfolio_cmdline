// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Portfolios",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "portfolio", targets: ["portfolios"])
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
            name: "portfolios",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .executableTarget(
            name: "browser",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .target(name: "portfolios", condition: .none)
            ],
            path: "Runnables/browser"),
        .executableTarget(
            name: "math",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Runnables/math"),
        .testTarget(
            name: "portfoliosTests",
            dependencies: ["portfolios"]),
    ]
)
