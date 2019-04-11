// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SwiftObjects_XcodeImage",

    dependencies: [
        /* Add your package dependencies in here
        .package(url: "https://github.com/AlwaysRightInstitute/cows.git",
                 from: "1.0.0"),
        */
        .package(url: "https://github.com/apple/swift-nio.git",
                 from: "2.0.0"),
        .package(url: "https://github.com/onmyway133/SwiftHash.git",
                 from: "2.0.2"),
        .package(url: "https://github.com/SwiftWebResources/SemanticUI-Swift.git",
                 from: "2.3.3"),
        .package(url: "https://github.com/SwiftWebResources/jQuery-Swift.git",
                 from: "3.3.2"),
        .package(url: "https://github.com/SwiftObjects/SwiftObjects.git",
                 from: "0.6.1"),
        .package(url: "https://github.com/ZeeQL/ZeeQL3.git",
                 from: "0.7.0"),
        .package(url: "https://github.com/SwiftObjects/SwiftObjectsZeeQLBridge.git",
                 from: "0.1.0"),
    ],
    targets: [
        .target(name: "SwiftObjects_XcodeImage", 
                dependencies: [ 
                    /* Add your target dependencies in here, e.g.: */
                    // "cows",
                    "NIO",
                    "NIOHTTP1",
                    "NIOFoundationCompat",
                    "NIOConcurrencyHelpers",
                    "SwiftHash",
                    "SwiftObjects",
                    "SemanticUI",
                    "jQuery",
                    "ZeeQL",
                    "SwiftObjectsZeeQLBridge"
                ])
    ]
)
