//===----------------------------------------------------------*- swift -*-===//
//
// This source file is part of the Dunegrass Portfolio Parser
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
// See https://betterprogramming.pub/build-a-command-line-tool-using-swift-argument-parser-f7d9443b785
//     for reference information
//===----------------------------------------------------------------------===//

import ArgumentParser

enum Command {}

extension Command {
  struct Main: ParsableCommand {
    static var configuration: CommandConfiguration {
      .init(
        commandName: "Calc",
        abstract: "A program to perform simple computations",
        version: "0.0.1",
        subcommands: [
            Command.Dirs.self
        ]
      )
    }
  }
}

@main
struct Main {
    static func main() async throws {
        print("Readings are: \("readings")")
        Command.Main.main()
    }
}
