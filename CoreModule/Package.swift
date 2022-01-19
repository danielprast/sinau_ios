// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreModule",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreModule",
            targets: [
                "CoreModule"
            ]
        ),
        .library(
            name: "CoreApiService",
            targets: ["CoreApiService"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CoreModule",
            dependencies: [
                .product(name: "Alamofire")                
            ]
        ),        
        .target(
            name: "CoreApiService",
            dependencies: [
                .product(name: "Alamofire")
            ]
        ),
        .testTarget(
            name: "CoreModuleTests",
            dependencies: ["CoreModule"]),
    ]
)
