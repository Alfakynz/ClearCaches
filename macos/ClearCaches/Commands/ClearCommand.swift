//
//  ClearCommand.swift
//  clear-caches
//
//  Created by Alfakynz Nyxaeris on 05/04/2025.
//

import Foundation
import ArgumentParser

struct ClearCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "clear",
        abstract: "Delete the cache from a given application or depending on the flags."
    )

    @Argument(help: "The name of the application whose cache you want to delete.")
    var appName: String?
    
    @Flag(name: [.customShort("a"), .long], help: "Deletes all caches.")
    var all: Bool = false

    @Flag(name: [.customShort("s"), .long], help: "Only deletes system caches.")
    var system: Bool = false

    @Flag(name: [.customShort("u"), .long], help: "Only deletes user covers.")
    var user: Bool = false

    @Option(name: [.long], help: "Deletes cache entries up to the given size (in MB).")
    var size: Int?

    func run() {
        let optionsSelected = [all, system, user].filter { $0 }.count
        let appProvided = appName != nil
        let sizeProvided = size != nil

        if (optionsSelected + (appProvided ? 1 : 0) + (sizeProvided ? 1 : 0)) != 1 {
            print("Error: You must specify exactly one of the following: an application name, --all, --system, --user, or --size.")
            Self.exit(withError: ExitCode.validationFailure)
        }

        if all {
            CacheManager.clearAll()
        } else if system {
            CacheManager.clearSystem()
        } else if user {
            CacheManager.clearUser()
        } else if let size = size {
            CacheManager.clearSize(size: size)
        } else if let app = appName {
            CacheManager.clear(app: app)
        }
    }
}
