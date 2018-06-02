// swift-tools-version:4.0
import PackageDescription

#if swift(>=4.1)
    let runtimeLib : PackageDescription.Package.Dependency =
                     .package(url: "https://github.com/SwiftObjects/Runtime.git",
                              from: "41.0.0")
#else
    let runtimeLib : PackageDescription.Package.Dependency =
                     .package(url: "https://github.com/SwiftObjects/Runtime.git",
                              from: "40.0.0")
#endif

let package = Package(
    name: "SwiftObjects_XcodeImage",

    dependencies: [
        /* Add your package dependencies in here
        .package(url: "https://github.com/AlwaysRightInstitute/cows.git",
                 from: "1.0.0"),
        */
        .package(url: "https://github.com/apple/swift-nio.git",
                 from: "1.8.0"),
        .package(url: "https://github.com/onmyway133/SwiftHash.git",
                 from: "2.0.1"),
        .package(url: "https://github.com/SwiftWebResources/SemanticUI-Swift.git",
                 from: "2.3.1"),
        .package(url: "https://github.com/SwiftWebResources/jQuery-Swift.git",
                 from: "3.3.1"),
        runtimeLib,
        .package(url: "https://github.com/SwiftObjects/SwiftObjects.git",
                 from: "0.5.0")
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
                    "Runtime",
                    "SwiftObjects",
                    "SemanticUI",
                    "jQuery"
                ])
    ]
)
