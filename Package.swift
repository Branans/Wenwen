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

// ============================================================================
// CeShiApp Framework 配置
// ============================================================================
// 从 GitHub Releases 下载并集成 CeShiApp.framework
// SPM 会在编译时自动下载、验证、解压和链接 Framework

// Framework 版本号
let frameworkVersion = "1.0.1"

// Framework 的 SHA256 校验和（用于验证文件完整性）
let frameworkChecksum = "cffa5ceaafd3f6d2630144efd3d29d750d3034cd9cfc04be7bec80d6106f78f1"

// GitHub 仓库信息（请修改为实际的仓库地址）
let githubUsername = "Branans"
let githubRepoName = "Test"

// Framework 下载 URL（GitHub Releases 格式）
let frameworkDownloadURL = "https://github.com/\(githubUsername)/\(githubRepoName)/releases/download/\(frameworkVersion)/CeShiApp.framework.zip"

// ============================================================================
// Package 配置
// ============================================================================

let package = Package(
    name: "Wenwen",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // 导出的库，支持 Swift 和 Objective-C 调用
        // Swift: import CeShiApp
        // Objective-C: #import <CeShiApp/CeShiApp.h>
        .library(
            name: "CeShiApp",
            targets: ["CeShiAppXCFramework"]
        ),
    ],
    targets: [
        // 二进制 Framework 目标
        .binaryTarget(
            name: "CeShiAppXCFramework",
            url: frameworkDownloadURL,
            checksum: frameworkChecksum
        ),
    ]
)
