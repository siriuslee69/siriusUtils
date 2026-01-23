# =========================================
# | Fylgia Utils Smoke Tests                   |
# |---------------------------------------|
# | Minimal compile/runtime checks.       |
# =========================================

import std/[unittest, strutils]
import ../src/siriusUtils/backend/core

suite "Fylgia Utils scaffold":
  test "backend description":
    let c = initBackend("Fylgia Utils")
    check describeBackend(c).contains("Fylgia Utils")
