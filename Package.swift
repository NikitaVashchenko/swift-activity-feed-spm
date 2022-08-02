// swift-tools-version:5.5

import Foundation
import PackageDescription

let package = Package(
    name: "ActivityFeed",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "GetStream",
            targets: ["GetStream"]
        ),
        .library(
            name: "ActivityFeed",
            targets: ["ActivityFeed"]
        )
    ],
    targets: [
        .binaryTarget(name: "GetStream",
                      url: "https://github.com/GetStream/stream-swift/archive/refs/tags/2.2.4.zip",
                      checksum: "e98308533a869138712d6a49e937059cdabc3223802f1deba343a285cadabac7"),
        .binaryTarget(name: "ActivityFeed",
                      url: "https://github.com/GetStream/swift-activity-feed/archive/refs/tags/2.2.4.zip",
                      checksum: "3a1e6b2f571fb65a72cd69a1d79a35955b2a3d8555318fb7f28cfad7735e8e9e")
    ]
)
