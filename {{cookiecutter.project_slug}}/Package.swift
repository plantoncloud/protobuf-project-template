// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    //customize this to your needs
    name: "TodoApiProtoPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TodoApiProtoPackage",
            targets: ["TodoApiProtoPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-protobuf.git", branch: "1.20.2"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.13.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TodoApiProtoPackage",
            dependencies: [
             .product(name: "SwiftProtobuf", package: "swift-protobuf"),
             .product(name: "GRPC", package: "grpc-swift")
             ],
            path: "zzswift")
    ]
)
