// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tui-todo",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/rensbreur/SwiftTUI", revision: "537133031bc2b2731048d00748c69700e1b48185")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "tui-todo",
            dependencies: [
                .product(name: "SwiftTUI", package: "SwiftTUI")
            ]
        ),
    ]
)
