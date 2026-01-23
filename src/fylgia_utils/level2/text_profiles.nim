# ===============================================
# | Fylgia Utils Level2 - Text Profiles          |
# |---------------------------------------------|
# | Opinionated validation profiles for apps.    |
# ===============================================

import ../level1/text_validation

const
  MaxHandleLen* = 32
  MaxDisplayNameLen* = 64
  MaxChannelNameLen* = 64
  MaxMessageBodyLen* = 4000
  MaxBioLen* = 256
  MaxDraftLen* = 4000

proc ensureHandle*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a user handle against length, blanks, and characters.
  let t0 = ensureNotBlank(value, "handle")
  if not t0.ok:
    result = t0
    return
  let t1 = ensureAsciiWord(value, "handle")
  if not t1.ok:
    result = t1
    return
  result = ensureLength(value, MaxHandleLen)

proc ensureDisplayName*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a display name against length and blanks.
  let t0 = ensureNotBlank(value, "display name")
  if not t0.ok:
    result = t0
    return
  result = ensureLength(value, MaxDisplayNameLen)

proc ensureChannelName*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a channel name against length and blanks.
  let t0 = ensureNotBlank(value, "channel name")
  if not t0.ok:
    result = t0
    return
  result = ensureLength(value, MaxChannelNameLen)

proc ensureMessageBody*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a message body against length and blanks.
  let t0 = ensureNotBlank(value, "message")
  if not t0.ok:
    result = t0
    return
  result = ensureLength(value, MaxMessageBodyLen)

proc ensureBio*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a profile bio against length only.
  if value.len == 0:
    result = (true, "")
  else:
    result = ensureLength(value, MaxBioLen)

proc ensureDraftBody*(value: string): tuple[ok: bool, reason: string] =
  ## Validate a draft body against length without requiring content.
  if value.len == 0:
    result = (true, "")
  else:
    result = ensureLength(value, MaxDraftLen)
