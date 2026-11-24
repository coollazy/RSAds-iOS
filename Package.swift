// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RSAds",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "RSAds", targets: ["RSAds"]),
    ],
    targets: [
        .binaryTarget(
            name: "RSAds",
            url: "https://github.com/coollazy/RSAds-iOS/releases/download/0.1.0/RSAds.xcframework.zip",
            checksum: "25125776dd3e3927acb6116e947c7b94fc0233a93ff5e3b6c2b49fbb00e16dca"
        ),
    ]
)
