# Package

version       = "0.1.0"
author        = "SiriusLee69"
description   = "Collection of some utilities"
license       = "Unlicense"
srcDir        = "."


# Dependencies

requires "nim >= 2.2.4"

task test, "Run tests":
  exec "nim c -d:test -r siriusUtils.nim"

task lint, "Lint code":
  exec "nimpretty --backup:off src"
