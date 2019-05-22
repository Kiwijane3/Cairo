// swift-tools-version:4.0.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cairo",
	dependencies: [
		.package(url: "https://github.com/Kiwijane3/CCairo.git", .branch("master")),
		.package(url: "https://github.com/PureSwift/CFontConfig.git", .branch("master")),
		.package(url: "https://github.com/KiwiJane3/CFreeType.git", .branch("master"))
	],
    targets: [
		.target(
            name: "Cairo",
			dependencies: [
				"CFontConfig",
				"CCairo",
				"CFreeType"
			]
		)
    ]
)
