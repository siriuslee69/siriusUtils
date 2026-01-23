# =========================================
# | Fylgia Utils CLI Entrypoint               |
# |---------------------------------------|
# | Prints backend status for automation. |
# =========================================

import ../../backend/core

when isMainModule:
  let c = initBackend("Fylgia Utils")
  echo describeBackend(c)
