// swift-tools-version:5.5
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TravelersAIApp",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "TravelersAIApp",
            targets: ["TravelersAIApp"]),
    ],
    dependencies: [
        // Common iOS dependencies
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.18.10"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.45.2"),
    ],
    targets: [
        .target(
            name: "TravelersAIApp",
            dependencies: [
                "Alamofire",
                "SDWebImage",
                "SwiftyJSON",
                .product(name: "RealmSwift", package: "realm-swift"),
            ],
            path: "Sources",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "TravelersAIAppTests",
            dependencies: ["TravelersAIApp"],
            path: "Tests/TravelersAIAppTests"
        ),
    ]
)
