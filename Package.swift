// swift-tools-version:5.9
// BINARY distribution branch consumed by the VPN app. Ships the prebuilt
// WireGuardKit.xcframework so the consumer never compiles WireGuard from source
// (which Xcode 26 cannot do for this package). Rebuild via the CI workflow on
// `master`, then bump url + checksum here.

import PackageDescription

let package = Package(
    name: "WireGuardKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "WireGuardKit", targets: ["WireGuardKit"])
    ],
    targets: [
        .binaryTarget(
            name: "WireGuardKit",
            url: "https://github.com/itsalemam-sudo/wireguard-apple/releases/download/xcframework-6/WireGuardKit.xcframework.zip",
            checksum: "e36fcaa0e1dca7379a63f8ab1114e961de9e472f422110e5dff57827fb8afe26"
        )
    ]
)
