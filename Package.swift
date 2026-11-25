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
            url: "https://github.com/coollazy/RSAds-iOS/releases/download/0.1.1/RSAds.xcframework.zip",
            checksum: "6743897e7834fe63da96e3495a5f876799e5f319f1503a346bccaba6966b6928"
        ),
    ]
)
