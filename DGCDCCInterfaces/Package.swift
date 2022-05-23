// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DGCDCCInterfaces",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DGCDCCInterfaces",
            targets: ["DGCDCCInterfaces"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "DGCCoreLibrary", url: "https://github.com/eu-digital-green-certificates/dgca-verification-core-library-ios.git", branch: "main"),
        .package(name: "DCCInspection", url: "https://github.com/eu-digital-green-certificates/dgca-verification-dcc-inspection-ios.git",
            branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DGCDCCInterfaces",
            dependencies: ["DGCCoreLibrary", "DCCInspection"],  resources: [.process("Resources")]),
        .testTarget(
            name: "DGCDCCInterfacesTests",
            dependencies: ["DGCDCCInterfaces"]),
    ]
)
