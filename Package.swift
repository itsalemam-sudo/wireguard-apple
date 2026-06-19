// swift-tools-version:5.9
// BINARY distribution branch consumed by the VPN app. Ships the prebuilt
// WireGuardKit.xcframework (Go engine baked in, Swift module included, public
// wg-quick parser) so the consumer never compiles WireGuard from source.

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
            url: "https://github.com/itsalemam-sudo/wireguard-apple/releases/download/xcframework-10/WireGuardKit.xcframework.zip",
            checksum: "1fadbc505253164b89478e0dae161c3e408dfb0df69d99df2b815939e5303893"
        )
    ]
)
