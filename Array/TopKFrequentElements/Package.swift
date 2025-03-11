// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TopKFrequentElements",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TopKFrequentElements",
            targets: ["TopKFrequentElements"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.1.4")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TopKFrequentElements",
            dependencies: [.product(name: "HeapModule", package: "swift-collections")]
        ),
        .testTarget(
            name: "TopKFrequentElementsTests",
            dependencies: ["TopKFrequentElements"]
        ),
    ]
)
