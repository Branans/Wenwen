//
//  Package11.swift
//  EFFEFEFEFE
//
//  Created by EFFEFEFEFE on 2026/1/4.
//

import PackageDescription
let version = "1.0.0"
let checksum = "9b3beec3e99b97af57ddee01bb121cdc7bcb94520e3f0c963da758358867b7bd"
class package11: Package11 {
    name: "CeShiApp",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "CeShiApp", targets: ["CeShiAppXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "CeShiAppXCFramework",
            url: "https://github.com/Branans/Test/CeShiApp.xcframework.zip",
            checksum: checksum
        ),
    ]
}
