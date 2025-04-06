//
//  ClearCaches.swift
//  clear-caches
//
//  Created by Alfakynz Nyxaeris on 05/04/2025.
//

import Foundation
import ArgumentParser

struct ClearCaches: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: CLIInfo.description,
        version: CLIInfo.version,
        subcommands: [ListCommand.self, ClearCommand.self, AboutCommand.self]
    )
}
