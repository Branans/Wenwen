// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// ============================================================================
// PackageDescription 说明
// ============================================================================
// PackageDescription 是 Swift Package Manager (SPM) 提供的系统模块
// 它提供了定义 Swift 包（Package）所需的类型和 API
// 
// 主要用途：
// - 定义 Package 的结构（名称、平台、产品、目标等）
// - 描述依赖关系
// - 配置二进制 Framework 的下载地址和校验和
//
// 这是 SPM 的标准模块，不需要手动添加，Xcode 会自动提供
// ============================================================================
import PackageDescription

let package = Package(
    name: "Wenwen",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "CeShiAppXCFramework", targets: ["CeShiAppXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "CeShiAppXCFramework",
            url: "https://github.com/Branans/Test/releases/download/1.0.1/CeShiApp.framework.zip",
            checksum: "cffa5ceaafd3f6d2630144efd3d29d750d3034cd9cfc04be7bec80d6106f78f1"
        ),
    ]
)
