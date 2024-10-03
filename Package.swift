// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "LookCamera",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "LookCamera",
            targets: ["LookCamera"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "LookCamera",
            path: "LookCamera.xcframework"
        ),
    ]
)
