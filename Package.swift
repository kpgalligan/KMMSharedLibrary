// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMSharedLibrary/github/kpgalligan/kmmsharedlibrary/allshared-kmmbridge/0.1.0/allshared-kmmbridge-0.1.0.zip"
let remoteKotlinChecksum = "82bf859dfbcbf88d6c69df22de8feb9587615f10d80e35169e089ccf47c4875f"
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