//
//  CacheManager.swift
//  clear-caches
//
//  Created by Alfakynz Nyxaeris on 05/04/2025.
//

import Foundation

enum CacheManager {
    static func listCaches() {
        let caches = ["Safari", "Xcode", "Chrome"]
        print("Caches available:")
        caches.forEach { print("- \($0)") }
    }
    static func clearAll() {
        print("Deletion of all systems and user caches ... (simulation)")
    }
    static func clearSize(size: Int = 1000) {
        print("Deletion of caches larger than \(size) MB ... (simulation)")
    }
    static func clearSystem() {
        print("Deletion of system caches only ... (simulation)")
    }
    static func clearUser() {
        print("Deletion of user caches only ... (simulation)")
    }
    static func clear(app: String) {
        print("Deletion of the \(app) cache only ... (simulation)")
    }
    static func about() {
        print("clear-caches v\(CLIInfo.version)")
        print("Author : \(CLIInfo.author)")
        print("Licence : \(CLIInfo.license)")
        print(CLIInfo.description)
    }
}
