// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SolarDesignSystem",
    platforms: [
        .watchOS(.v6),
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "SolarDesignSystem", targets: ["SolarDesignSystem"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SolarDesignSystem", dependencies: []),
        .testTarget(name: "SolarDesignSystemTests", dependencies: ["SolarDesignSystem"]),
    ]
)
