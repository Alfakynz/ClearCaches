// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "ClearCaches",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(
            name: "clrc",
            targets: ["ClearCachesCLI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
    ],
    targets: [
        .executableTarget(
            name: "ClearCachesCLI",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "ClearCaches",
            sources: [
                "main.swift",
                "ClearCaches.swift",
                "CLIInfo.swift",
                "Commands/AboutCommand.swift",
                "Commands/ClearCommand.swift",
                "Commands/ListCommand.swift",
                "Services/CacheManager.swift"
            ]
        ),
    ]
)
