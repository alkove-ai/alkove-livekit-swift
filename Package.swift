// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AlkoveLiveKit",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(name: "AlkoveLiveKit", targets: ["AlkoveLiveKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alkove-ai/alkove.git", from: "0.4.3"),
        .package(url: "https://github.com/livekit/client-sdk-swift.git", from: "2.19.0"),
    ],
    targets: [
        .target(name: "AlkoveLiveKit", dependencies: [.product(name: "Alkove", package: "alkove"), .product(name: "LiveKit", package: "client-sdk-swift")]),
    ]
)
