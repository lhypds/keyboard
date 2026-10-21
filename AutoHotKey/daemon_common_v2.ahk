; AutoHotkey v2 conversion

;===========================================================================
; I. ESC/Ctrl+W to exit program (per active window context)
;===========================================================================

#HotIf WinActive("Calculator")
Escape:: {
    Send("!{F4}")
    return
}
^w:: {
    Send("!{F4}")
    return
}
#HotIf

#HotIf WinActive("ahk_class Qt5QWindowIcon")
Escape:: {
    Send("!{F4}")
    return
}
#HotIf

#HotIf WinActive("ahk_class MDictMainWnd")
^w:: {
    Send("{ESC}")
    return
}
#HotIf

#HotIf WinActive("ahk_class WeChatMainWndForPC")
^w:: {
    Send("{ESC}")
    return
}
#HotIf

#HotIf WinActive("ahk_exe WhatsApp.exe")
^w:: {
    Send("!{F4}")
    return
}
#HotIf

#HotIf WinActive("ahk_exe GitHubDesktop.exe")
^w:: {
    Send("!{F4}")
    return
}
#HotIf

#HotIf WinActive("ahk_exe Ssms.exe")
^w:: {
    Send("^{F4}")
    return
}
#HotIf

#HotIf WinActive("ahk_exe vlc.exe")
Escape:: {
    Send("^{F4}")
    return
}
#HotIf

#HotIf WinActive("WhatsApp")
^w:: {
    Send("!{F4}")
    return
}
#HotIf

;===========================================================================
; II. IDE/Browser Debug Control
;===========================================================================

#HotIf WinActive("ahk_exe devenv.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "run") {
        Send("^{F5}")
    } else if (cmd = "locate_file") {
        Send("^{m}")
        Send("^{f}")
    } else if (cmd = "debug_step_over") {
        Send("{F10}")
    } else if (cmd = "debug_step_into") {
        Send("{F11}")
    } else if (cmd = "debug_step_out") {
        Send("+{F11}")
    } else if (cmd = "debug_continue") {
        Send("{F5}")
    } else if (cmd = "debug_stop") {
        Send("+{F5}")
    } else if (cmd = "debug_log") {
        Send("^{!o}")
    } else if (cmd = "open_containing_folder") {
        Send("^{+!5}")
        Send("^{+!4}")
        Send("^{+!3}")
    } else if (cmd = "debug_call_stack") {
        Send("^{+!1}")
    } else if (cmd = "roll_back") {
        Send("^{0}")
        Send("^{p}")
    } else if (cmd = "reset") {
        Send("^{+!7}")
    } else if (cmd = "vcs_pull") {
        Send("^{+!9}")
        Send("^{+!0}")
    } else if (cmd = "multi_select") {
        Send("+!;")
    } else if (cmd = "undo_close") {
        Send("^k")
        Send("^z")
    } else if (cmd = "close") {
        Send("^w")
    } else if (cmd = "build") {
        Send("^{+B}")
    } else if (cmd = "build_clean") {
        Send("^{+!2}")
    } else if (cmd = "history") {
        Send("^{+!6}")
    } else if (cmd = "bookmark") {
        Send("^k")
        Send("^k")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe devenv.exe")
^/:: {
    Send("^k")
    Send("^c")
    return
}
#HotIf

#HotIf WinActive("ahk_exe devenv.exe")
^.:: {
    Send("^k")
    Send("^u")
    return
}
#HotIf

#HotIf WinActive("ahk_exe Code.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "run") {
        Send("^{F5}")
    } else if (cmd = "locate_file") {
        Send("^{+!0}")
    } else if (cmd = "debug_step_over") {
        Send("{F10}")
    } else if (cmd = "debug_step_into") {
        Send("{F11}")
    } else if (cmd = "debug_step_out") {
        Send("+{F11}")
    } else if (cmd = "debug_continue") {
        Send("{F5}")
    } else if (cmd = "debug_stop") {
        Send("+{F5}")
    } else if (cmd = "debug_log") {
        Send("^{+u}")
    } else if (cmd = "open_containing_folder") {
        Send("+!r")
    } else if (cmd = "debug_call_stack") {
        Send("^{+!1}")
    } else if (cmd = "roll_back") {
        Send("^{0}")
        Send("^{p}")
    } else if (cmd = "reset") {
        Send("^{+!7}")
    } else if (cmd = "vcs_pull") {
        Send("^{+!9}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe phpstorm64.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "locate_file") {
        Send("!{F1}")
        Send("1")
        Send("{ESC}")
    } else if (cmd = "debug_step_over") {
        Send("{F8}")
    } else if (cmd = "debug_step_into") {
        Send("{F7}")
    } else if (cmd = "debug_step_out") {
        Send("+{F8}")
    } else if (cmd = "debug_continue") {
        Send("{F9}")
    } else if (cmd = "debug_stop") {
        Send("^{F12}")
    } else if (cmd = "open_containing_folder") {
        Send("^{+!5}")
    } else if (cmd = "debug_call_stack") {
        Send("^!h")
    } else if (cmd = "roll_back") {
        Send("^!z")
    } else if (cmd = "reset") {
        Send("^{+!7}")
    } else if (cmd = "vcs_pull") {
        Send("^t")
    } else if (cmd = "undo_close") {
        Send("^{+!6}")
    } else if (cmd = "bookmark") {
        Send("{F11}")
    } else if (cmd = "history") {
        Send("^{+!9}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe rider64.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "locate_file") {
        Send("!{F1}")
        Send("1")
    } else if (cmd = "debug_step_over") {
        Send("{F8}")
    } else if (cmd = "debug_step_into") {
        Send("{F7}")
    } else if (cmd = "debug_step_out") {
        Send("+{F8}")
    } else if (cmd = "debug_continue") {
        Send("{F9}")
    } else if (cmd = "debug_stop") {
        Send("^{F12}")
    } else if (cmd = "open_containing_folder") {
        Send("^{+!5}")
    } else if (cmd = "debug_call_stack") {
        Send("^!h")
    } else if (cmd = "roll_back") {
        Send("^!z")
    } else if (cmd = "reset") {
        Send("^{+!7}")
    } else if (cmd = "vcs_pull") {
        Send("^t")
    } else if (cmd = "multi_select") {
        Send("^{+!j}")
    } else if (cmd = "undo_close") {
        Send("^{+!6}")
    } else if (cmd = "bookmark") {
        Send("{F11}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe studio64.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "locate_file") {
        Send("!{F1}")
        Send("1")
    } else if (cmd = "debug_step_over") {
        Send("{F8}")
    } else if (cmd = "debug_step_into") {
        Send("{F7}")
    } else if (cmd = "debug_step_out") {
        Send("+{F8}")
    } else if (cmd = "debug_continue") {
        Send("{F9}")
    } else if (cmd = "debug_stop") {
        Send("^{F12}")
    } else if (cmd = "open_containing_folder") {
        Send("^{+!5}")
    } else if (cmd = "debug_call_stack") {
        Send("^!h")
    } else if (cmd = "roll_back") {
        Send("^!z")
    } else if (cmd = "reset") {
        Send("^{+!7}")
    } else if (cmd = "vcs_pull") {
        Send("^t")
    } else if (cmd = "undo_close") {
        Send("^{+!6}")
    } else if (cmd = "bookmark") {
        Send("{F11}")
    } else if (cmd = "build") {
        Send("^{F9}")
    } else if (cmd = "build_clean") {
        Send("^{+!1}")
    } else if (cmd = "history") {
        Send("^{+!9}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe firefox.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "debug_step_over") {
        Send("{F10}")
    } else if (cmd = "debug_step_into") {
        Send("{F11}")
    } else if (cmd = "debug_step_out") {
        Send("+{F11}")
    } else if (cmd = "debug_continue") {
        Send("{F8}")
    } else if (cmd = "debug_stop") {
        Send("{ESC}")
    } else if (cmd = "reset") {
        Send("{F5}")
    } else if (cmd = "close") {
        Send("^w")
    } else if (cmd = "undo_close") {
        Send("^{+t}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe Everything.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "open_containing_folder") {
        Send("^{Enter}")
        Sleep(100)
        Run("C:\Users\Liu\Dropbox\scripts\kill\run_kill_everything_exe_bat.vbs")
    } else if (cmd = "locate_file") {
        Send("{Enter}")
        Sleep(100)
        Run("C:\Users\Liu\Dropbox\scripts\kill\run_kill_everything_exe_bat.vbs")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe sublime_text.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "multi_select") {
        Send("!{F3}")
    } else if (cmd = "open_containing_folder") {
        Send("^{!+E}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe WinSCP.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "reset") {
        Send("{F5}")
    }
    return
}
#HotIf

#HotIf WinActive("ahk_exe dbeaver.exe")
^F20:: {
    Sleep(100)
    cmd := FileRead("C:\.keycache\cmd_f20.txt")
    if (cmd = "reset") {
        Send("{F5}")
    }
    return
}
#HotIf

;===========================================================================
; III. Active Window
;===========================================================================

; If a Notepad window exists, activate it and terminate the script.
if WinExist("ahk_class Notepad") {
    WinActivate()
    return
}

;===========================================================================
; IV. Ctrl/Shift Alt Hotkeys
;===========================================================================

^!A:: {
    Send("^{!#+H}")
    Reload
    return
}

^!B:: {
    folderPath := ""

    ; If active window is File Explorer
    if WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass") {
        activeHwnd := WinActive("A")

        for window in ComObject("Shell.Application").Windows {
            try {
                if (window.HWND = activeHwnd) {
                    folderPath := window.Document.Folder.Self.Path
                    break
                }
            }
        }
    }

    ; Open VSCode
    if (folderPath != "") {
        Run(A_ComSpec ' /c code "' folderPath '"', , "Hide")
    } else {
        Run(A_ComSpec ' /c code', , "Hide")
    }
}

^!C:: {
    Run("C:\Windows\System32\calc.exe")
    Sleep(1000)
    if WinExist("Calculator") {
        WinActivate("Calculator")
    }
    return
}

^!F:: {
    Run("firefox.exe")
    Sleep(1000)
    if WinExist("ahk_exe firefox.exe") {
        WinActivate("ahk_exe firefox.exe")
    }
    return
}

^!G:: {
    Run("C:\Program Files\Google\Chrome\Application\chrome.exe")
    Sleep(1000)
    if WinExist("ahk_exe chrome.exe") {
        WinActivate("ahk_exe chrome.exe")
    }
    return
}

^!D:: {
    Run("C:\Users\LIU\Dropbox")
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    Sleep(1000)
    return
}

^!+H:: {
    Run("\\develop-disk\home\liu")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!H:: {
    Run("C:\Users\LIU")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!M:: {
    Run("C:\Users\LIU\Dropbox\Note")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!N:: {
    Run("C:\Users\LIU\Dropbox\Note")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!J:: {
    Run("C:\Users\Liu\iCloudDrive\Storage")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!I:: {
    currentDate := FormatTime(A_Now, 'yyyyMMdd')
    SendText(currentDate)
    return
}

^!O:: {
    currentTime := FormatTime(A_Now, 'HHmmss')
    SendText(currentTime)
    return
}

^!L:: {
    Send("^{!+L}")
    Sleep(1000)
    if WinExist("ahk_exe MDict.exe") {
        WinActivate("ahk_exe MDict.exe")
    }
    return
}

^!P:: {
    Run("C:\Users\LIU\Dropbox\cmd\run_start_google_translate_bat.vbs")
    return
}

^!Q:: {
    Run("C:\quick-launcher-2\QuickLauncher\bin\Debug\QuickLauncher.exe", "C:\quick-launcher-2\QuickLauncher\bin\Debug\"
    )
    return
}

^!R:: {
    Run("C:\")
    Sleep(1000)
    if WinExist("ahk_class CabinetWClass") {
        WinActivate("ahk_class CabinetWClass")
    }
    return
}

^!S:: {
    Run("C:\Users\Liu\Dropbox\code\vbs\Speak\speak.vbs")
    return
}

;TODO
;^!T:: {
;    if WinActive("ahk_class CabinetWClass") or WinActive("ahk_class ExploreWClass") {
;        for window in ComObjCreate("Shell.Application").Windows {
;            if (window.hwnd = WinActive("A")) {
;                folderPath := window.Document.Folder.Self.Path
;                break
;            }
;        }
;        if folderPath {
;            if (folderPath = "C:\") {
;                Run("wt.exe")
;            } else {
;                Run("wt.exe -d " . Chr(34) . folderPath . Chr(34))
;            }
;        }
;    } else {
;        Run("wt.exe")
;    }
;    if WinExist("ahk_exe cmd.exe") {
;        WinActivate()
;    }
;    return
;}

^!V:: {
    Run("notepad")
    Sleep(1000)
    if WinExist("ahk_exe Notepad.exe") {
        WinActivate("ahk_exe Notepad.exe")
    }
    return
}

^!+V:: {
    Run("C:\Program Files\Sublime Text\sublime_text.exe")
    Sleep(1000)
    if WinExist("ahk_exe sublime_text.exe") {
        WinActivate("ahk_exe sublime_text.exe")
    }
    return
}

;English
;^!8:: {
;    Send("{F19}")
;    return
;}
^!U:: {
    Send("{F19}")
    return
}

;Chinese
^!9:: {
    Send("{F17}")
    return
}

;Japanese
^!0:: {
    Send("{F18}")
    return
}

!+3:: {
    Run("C:\Users\LIU\Dropbox\tools.top\rapture-2.4.1\rapture.exe")
    return
}

;===========================================================================
; V. Copy Paste As A Queue
;===========================================================================

;TODO
;^#C:: {
;    SendInput("^{c}")
;    ClipWait(1)
;    Run("C:\Users\Liu\Dropbox\Keyboard\QueuePaster\run_run_enqueue_bat.vbs")
;    return
;}
;
;^#V:: {
;    Run("C:\Users\Liu\Dropbox\Keyboard\QueuePaster\run_run_dequeue_bat.vbs")
;    Sleep(1000)
;    SendInput("^{v}")
;    return
;}

;===========================================================================
; VI. Windows Explorer
;===========================================================================

;TODO
;GetActiveExplorerPath() {
;    explorerHwnd := WinActive("ahk_class CabinetWClass")
;    if explorerHwnd {
;        for window in ComObjCreate("Shell.Application").Windows {
;            if (window.hwnd = explorerHwnd)
;                return window.Document.Folder.Self.Path
;        }
;    }
;    return ""
;}

#HotIf WinActive("ahk_exe Explorer.EXE")
^+M:: {
    Send("+{F10} old")
    Sleep(1000)
    Send("w")
    Send("2")
    Sleep(1000)
    Send("w")
    Send("t")
    return
}

Escape:: {
    Send("!{F4}")
    return
}

;TODO
;^w:: {
;    path := GetActiveExplorerPath()
;    FileDelete("C:\.keycache\last_closed_explorer_path.txt")
;    FileAppend(path, "C:\.keycache\last_closed_explorer_path.txt")
;    Send("!{F4}")
;    return
;}

^+w:: {
    file := FileOpen("C:\.keycache\last_closed_explorer_path.txt", "r")
    if file {
        Run(file.ReadLine())
        file.Close()
    }
    return
}

;TODO
;^F20:: {
;    Sleep(100)
;    cmd := FileRead("C:\.keycache\cmd_f20.txt")
;    if (cmd = "undo_close") {
;        file := FileOpen("C:\.keycache\last_closed_explorer_path.txt", "r")
;        if file {
;            path := file.ReadLine()
;            try {
;                Run(path)
;            } catch e {
;                MsgBox("Cannot open path: " . path)
;            }
;            file.Close()
;        }
;    } else if (cmd = "close") {
;        Send("!{F4}")
;    }
;    return
;}
#HotIf