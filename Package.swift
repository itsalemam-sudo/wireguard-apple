// swift-tools-version:5.9
// BINARY distribution branch consumed by the VPN app. Ships the prebuilt
// WireGuardKit.xcframework (Go engine baked in, Swift module included) so the
// consumer never compiles WireGuard from source. Rebuild via CI on `master`,
// then bump url + checksum here.

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
            url: "https://github.com/itsalemam-sudo/wireguard-apple/releases/download/xcframework-8/WireGuardKit.xcframework.zip",
            checksum: "7f867de1640b3d1be46f07d790b6fd2853e3f2a41beec546c66bfa16403ccee8"
        )
    ]
)
