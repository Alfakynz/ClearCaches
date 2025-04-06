//
//  ListCommand.swift
//  clear-caches
//
//  Created by Alfakynz Nyxaeris on 05/04/2025.
//

import Foundation
import ArgumentParser

struct ListCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "list",
        abstract: "Displays the list of available caches.",
        aliases: ["ls"]
    )

    func run() {
        CacheManager.listCaches()
    }
}
