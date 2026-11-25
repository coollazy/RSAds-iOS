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
            url: "https://github.com/coollazy/RSAds-iOS/releases/download/0.1.2/RSAds.xcframework.zip",
            checksum: "c8d55f1a395ab558cacdf0792ef7d7c6ec3ed867bd7f3375fd398652f9e329b3"
        ),
    ]
)
