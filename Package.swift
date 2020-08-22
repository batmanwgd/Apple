// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SolarDesignSystem",
    platforms: [
        .watchOS(.v7),
        .iOS(.v14),
        .tvOS(.v14),
        .macOS(.v11),
    ],
    products: [
        .library(name: "SolarDesignSystem", targets: ["SolarDesignSystem"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SolarDesignSystem", dependencies: []),
        // .testTarget(name: "SolarDesignSystemTests", dependencies: ["SolarDesignSystem"]),
    ]
)
