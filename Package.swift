// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVSwift",
    products: [
        .library(
            name: "BVSwift",
            targets: ["BVSwift"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BVSwift",
            dependencies: [],
            path: "BVSwift"),
        .testTarget(
            name: "BVSwiftTests",
            dependencies: ["BVSwift"],
            path: "BVSwiftTests"),
    ],
    swiftLanguageVersions: [.v4_2]
)
