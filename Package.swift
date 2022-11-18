// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/gmillerOrg/kmmdemo/github/gmillerorg/kmmdemo/allshared-kmmbridge/0.1.1/allshared-kmmbridge-0.1.1.zip"
let remoteKotlinChecksum = "a94cb1ac66bae76f1ffc3fb4ce57d4330cb142e7fc9c880cca378930d93c2981"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)