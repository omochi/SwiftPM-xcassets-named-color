// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AssetsPackage",
    products: [
        .library(name: "FirstModule", targets: ["FirstModule"]),
        .library(name: "SecondModule", targets: ["SecondModule"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FirstModule",
            dependencies: []
        ),
        .target(
            name: "SecondModule",
            dependencies: [
                .target(name: "FirstModule")
            ]
        )
    ]
)
