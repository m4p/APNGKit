// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "APNGKit",
    platforms: [.macOS(.v10_11), .iOS(.v13), .tvOS(.v9)],
    products: [
        .library(name: "APNGKit", targets: ["APNGKit"])
    ],
    dependencies: [
        .package(name: "Delegate", url: "https://github.com/onevcat/Delegate.git", .upToNextMajor(from: "1.1.1"))
    ],
    targets: [
        .target(name: "APNGKit", dependencies: ["Delegate"]),
        .testTarget(name: "APNGKitTests", dependencies: ["APNGKit"], resources: [
            .copy("Resources/SpecTesting"),
            .copy("Resources/General")
        ])
    ]
)
