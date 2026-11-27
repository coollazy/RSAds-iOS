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
            url: "https://github.com/coollazy/RSAds-iOS/releases/download/0.1.3/RSAds.xcframework.zip",
            checksum: "b803f5768a461e5a4376f7afe300ae7f542795a82dc0f68b7d352d414d43018d"
        ),
    ]
)
