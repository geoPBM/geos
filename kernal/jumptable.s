; GEOS KERNAL
;
; System call jump table

.include "const.inc"
.include "geossym.inc"
.include "geosmac.inc"
.include "config.inc"
.include "kernal.inc"
.include "diskdrv.inc"

; init.s
.import _FirstInit

; icons.s
.import _DoIcons

; graph.s
.import _BitOtherClip
.import _BitmapClip
.import _i_ImprintRectangle
.import _ImprintRectangle
.import _i_BitmapUp
.import _i_GraphicsString
.import _i_RecoverRectangle
.import _i_FrameRectangle
.import _i_Rectangle
.import _BitmapUp
.import _TestPoint
.import _GetScanLine
.import _SetPattern
.import _GraphicsString
.import _DrawPoint
.import _DrawLine
.import _RecoverRectangle
.import _InvertRectangle
.import _FrameRectangle
.import _Rectangle
.import _VerticalLine
.import _RecoverLine
.import _InvertLine
.import _HorizontalLine

; keyboard.s
.import _GetNextChar

; process.s
.import _Sleep
.import _UnFreezeProcess
.import _FreezeProcess
.import _UnBlockProcess
.import _BlockProcess
.import _EnableProcess
.import _RestartProcess
.import _InitProcesses

; mouse.s
.import _IsMseInRegion
.import _ClearMouseMode
.import _MouseOff
.import _MouseUp
.import _StartMouseMode

; conio.s
.import _PromptOff
.import _PromptOn
.import _SmallPutChar
.import _LoadCharSet
.import _GetCharWidth
.import _InitTextPrompt
.import _GetString
.import _i_PutString
.import _PutDecimal
.import _UseSystemFont
.import _PutString
.import _PutChar

; reu.s
.import _DoRAMOp
.import _VerifyRAM
.import _SwapRAM
.import _FetchRAM
.import _StashRAM

; dlgbox.s
.import _RstrFrmDialogue
.import _DoDlgBox

; load.s
.import _GetFile
.import _LdApplic
.import _LdDeskAcc
.import _LdFile
.import _RstrAppl

; filesys.s
.import _AppendRecord
.import _BldGDirEntry
.import _CloseRecordFile
.import _DeleteFile
.import _DeleteRecord
.import _FastDelFile
.import _FindFTypes
.import _FindFile
.import _FollowChain
.import _FreeFile
.import _GetFHdrInfo
.import _GetPtrCurDkNm
.import _InsertRecord
.import _NextRecord
.import _OpenRecordFile
.import _PointRecord
.import _PreviousRecord
.import _ReadByte
.import _ReadFile
.import _ReadRecord
.import _RenameFile
.import _SaveFile
.import _SetDevice
.import _SetGDirEntry
.import _UpdateRecordFile
.import _WriteFile
.import _WriteRecord

; memory.s
.import _CmpFString
.import _CmpString
.import _CopyFString
.import _CopyString
.import _i_MoveData
.import _i_FillRam
.import _InitRam
.import _MoveData
.import _FillRam
.import _ClearRam

; math.s
.import _DShiftRight
.import _CRC
.import _GetRandom
.import _Ddec
.import _Dnegate
.import _Dabs
.import _DSDiv
.import _Ddiv
.import _DMult
.import _BMult
.import _BBMult
.import _DShiftLeft

; sprites.s
.import _DisablSprite
.import _EnablSprite
.import _PosSprite
.import _DrawSprite

; menu.s
.import _GotoFirstMenu
.import _ReDoMenu
.import _DoPreviousMenu
.import _RecoverAllMenus
.import _RecoverMenu
.import _DoMenu

; fonts.s
.import _GetRealSize

; tobasic.s
.import _ToBASIC

; main.s
.import _StartAppl
.import _EnterDeskTop
.import _MainLoop
.import _InterruptMain

; misc.s
.import _CallRoutine
.import _DoInlineReturn

; panic.s
.import _Panic

; serial.s
.import _GetSerialNumber

.segment "jumptab"

.assert * = $C100, error, "Jump table not at $C100"

InterruptMain:
	jmp _InterruptMain
InitProcesses:
	jmp _InitProcesses
RestartProcess:
	jmp _RestartProcess
EnableProcess:
	jmp _EnableProcess
BlockProcess:
	jmp _BlockProcess
UnBlockProcess:
	jmp _UnBlockProcess
FreezeProcess:
	jmp _FreezeProcess
UnFreezeProcess:
	jmp _UnFreezeProcess
HorizontalLine:
	jmp _HorizontalLine
InvertLine:
	jmp _InvertLine
RecoverLine:
	jmp _RecoverLine
VerticalLine:
	jmp _VerticalLine
Rectangle:
	jmp _Rectangle
FrameRectangle:
	jmp _FrameRectangle
InvertRectangle:
	jmp _InvertRectangle
RecoverRectangle:
	jmp _RecoverRectangle
DrawLine:
	jmp _DrawLine
DrawPoint:
	jmp _DrawPoint
GraphicsString:
	jmp _GraphicsString
SetPattern:
	jmp _SetPattern
GetScanLine:
	jmp _GetScanLine
TestPoint:
	jmp _TestPoint
BitmapUp:
	jmp _BitmapUp
PutChar:
	jmp _PutChar
PutString:
	jmp _PutString
UseSystemFont:
	jmp _UseSystemFont
StartMouseMode:
	jmp _StartMouseMode
DoMenu:
	jmp _DoMenu
RecoverMenu:
	jmp _RecoverMenu
RecoverAllMenus:
	jmp _RecoverAllMenus
DoIcons:
	jmp _DoIcons
DShiftLeft:
	jmp _DShiftLeft
BBMult:
	jmp _BBMult
BMult:
	jmp _BMult
DMult:
	jmp _DMult
Ddiv:
	jmp _Ddiv
DSDiv:
	jmp _DSDiv
Dabs:
	jmp _Dabs
Dnegate:
	jmp _Dnegate
Ddec:
	jmp _Ddec
ClearRam:
	jmp _ClearRam
FillRam:
	jmp _FillRam
MoveData:
	jmp _MoveData
InitRam:
	jmp _InitRam
PutDecimal:
	jmp _PutDecimal
GetRandom:
	jmp _GetRandom
MouseUp:
	jmp _MouseUp
MouseOff:
	jmp _MouseOff
DoPreviousMenu:
	jmp _DoPreviousMenu
ReDoMenu:
	jmp _ReDoMenu
GetSerialNumber:
	jmp _GetSerialNumber
Sleep:
	jmp _Sleep
ClearMouseMode:
	jmp _ClearMouseMode
i_Rectangle:
	jmp _i_Rectangle
i_FrameRectangle:
	jmp _i_FrameRectangle
i_RecoverRectangle:
	jmp _i_RecoverRectangle
i_GraphicsString:
	jmp _i_GraphicsString
i_BitmapUp:
	jmp _i_BitmapUp
i_PutString:
	jmp _i_PutString
GetRealSize:
	jmp _GetRealSize
i_FillRam:
	jmp _i_FillRam
i_MoveData:
	jmp _i_MoveData
GetString:
	jmp _GetString
GotoFirstMenu:
	jmp _GotoFirstMenu
InitTextPrompt:
	jmp _InitTextPrompt
MainLoop:
	jmp _MainLoop
DrawSprite:
	jmp _DrawSprite
GetCharWidth:
	jmp _GetCharWidth
LoadCharSet:
	jmp _LoadCharSet
PosSprite:
	jmp _PosSprite
EnablSprite:
	jmp _EnablSprite
DisablSprite:
	jmp _DisablSprite
CallRoutine:
	jmp _CallRoutine
CalcBlksFree:
	jmp (_CalcBlksFree)
ChkDkGEOS:
	jmp (_ChkDkGEOS)
NewDisk:
	jmp (_NewDisk)
GetBlock:
	jmp (_GetBlock)
PutBlock:
	jmp (_PutBlock)
SetGEOSDisk:
	jmp (_SetGEOSDisk)
SaveFile:
	jmp _SaveFile
SetGDirEntry:
	jmp _SetGDirEntry
BldGDirEntry:
	jmp _BldGDirEntry
GetFreeDirBlk:
	jmp (_GetFreeDirBlk)
WriteFile:
	jmp _WriteFile
BlkAlloc:
	jmp (_BlkAlloc)
ReadFile:
	jmp _ReadFile
SmallPutChar:
	jmp _SmallPutChar
FollowChain:
	jmp _FollowChain
GetFile:
	jmp _GetFile
FindFile:
	jmp _FindFile
CRC:
	jmp _CRC
LdFile:
	jmp _LdFile
EnterTurbo:
	jmp (_EnterTurbo)
LdDeskAcc:
	jmp _LdDeskAcc
ReadBlock:
	jmp (_ReadBlock)
LdApplic:
	jmp _LdApplic
WriteBlock:
	jmp (_WriteBlock)
VerWriteBlock:
	jmp (_VerWriteBlock)
FreeFile:
	jmp _FreeFile
GetFHdrInfo:
	jmp _GetFHdrInfo
EnterDeskTop:
	jmp _EnterDeskTop
StartAppl:
	jmp _StartAppl
ExitTurbo:
	jmp (_ExitTurbo)
PurgeTurbo:
	jmp (_PurgeTurbo)
DeleteFile:
	jmp _DeleteFile
FindFTypes:
	jmp _FindFTypes
RstrAppl:
	jmp _RstrAppl
ToBASIC:
	jmp _ToBASIC
FastDelFile:
	jmp _FastDelFile
GetDirHead:
	jmp (_GetDirHead)
PutDirHead:
	jmp (_PutDirHead)
NxtBlkAlloc:
	jmp (_NxtBlkAlloc)
ImprintRectangle:
	jmp _ImprintRectangle
i_ImprintRectangle:
	jmp _i_ImprintRectangle
DoDlgBox:
	jmp _DoDlgBox
RenameFile:
	jmp _RenameFile
InitForIO:
	jmp (_InitForIO)
DoneWithIO:
	jmp (_DoneWithIO)
DShiftRight:
	jmp _DShiftRight
CopyString:
	jmp _CopyString
CopyFString:
	jmp _CopyFString
CmpString:
	jmp _CmpString
CmpFString:
	jmp _CmpFString
FirstInit:
	jmp _FirstInit
OpenRecordFile:
	jmp _OpenRecordFile
CloseRecordFile:
	jmp _CloseRecordFile
NextRecord:
	jmp _NextRecord
PreviousRecord:
	jmp _PreviousRecord
PointRecord:
	jmp _PointRecord
DeleteRecord:
	jmp _DeleteRecord
InsertRecord:
	jmp _InsertRecord
AppendRecord:
	jmp _AppendRecord
ReadRecord:
	jmp _ReadRecord
WriteRecord:
	jmp _WriteRecord
SetNextFree:
	jmp (_SetNextFree)
UpdateRecordFile:
	jmp _UpdateRecordFile
GetPtrCurDkNm:
	jmp _GetPtrCurDkNm
PromptOn:
	jmp _PromptOn
PromptOff:
	jmp _PromptOff
OpenDisk:
	jmp (_OpenDisk)
DoInlineReturn:
	jmp _DoInlineReturn
GetNextChar:
	jmp _GetNextChar
BitmapClip:
	jmp _BitmapClip
FindBAMBit:
	jmp (_FindBAMBit)
SetDevice:
	jmp _SetDevice
IsMseInRegion:
	jmp _IsMseInRegion
ReadByte:
	jmp _ReadByte
FreeBlock:
	jmp (_FreeBlock)
ChangeDiskDevice:
	jmp (_ChangeDiskDevice)
RstrFrmDialogue:
	jmp _RstrFrmDialogue
Panic:
	jmp _Panic
BitOtherClip:
	jmp _BitOtherClip
.if (REUPresent)
StashRAM:
	jmp _StashRAM
FetchRAM:
	jmp _FetchRAM
SwapRAM:
	jmp _SwapRAM
VerifyRAM:
	jmp _VerifyRAM
DoRAMOp:
	jmp _DoRAMOp
.else
StashRAM:
	ldx #DEV_NOT_FOUND
	rts
FetchRAM:
	ldx #DEV_NOT_FOUND
	rts
SwapRAM:
	ldx #DEV_NOT_FOUND
	rts
VerifyRAM:
	ldx #DEV_NOT_FOUND
	rts
DoRAMOp:
	ldx #DEV_NOT_FOUND
	rts
.endif