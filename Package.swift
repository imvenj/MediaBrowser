// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MediaBrowser",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "MediaBrowser",
            targets: ["MediaBrowser"]),
    ],
    dependencies: [
         .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.0.0"),
         .package(url: "https://github.com/imvenj/UICircularProgressRing.git", from: "6.0.3")
    ],
    targets: [
        .target(
            name: "MediaBrowser",
            dependencies: ["Kingfisher", "UICircularProgressRing"],
            path: "MediaBrowser")
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
