# ── Heathrow BC Auto-Push Script ──────────────────────────────
# Double-click this file (or run in PowerShell) before a Claude session.
# It watches the folder and auto-commits + pushes whenever files change.
# Leave it running in the background. Close the window to stop it.
# ──────────────────────────────────────────────────────────────

$repoPath = "C:\Users\Filk\Desktop\Claude"
$debounceSeconds = 15   # waits this long after last change before committing
$lastChange = [DateTime]::MinValue
$pendingCommit = $false

Set-Location $repoPath

Write-Host ""
Write-Host "  Heathrow BC — Auto-Push Active" -ForegroundColor Red
Write-Host "  Watching: $repoPath" -ForegroundColor DarkGray
Write-Host "  Commits after $debounceSeconds seconds of no changes." -ForegroundColor DarkGray
Write-Host "  Close this window to stop." -ForegroundColor DarkGray
Write-Host ""

# Set up file watcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $repoPath
$watcher.Filter = "*.*"
$watcher.IncludeSubdirectories = $true
$watcher.NotifyFilter = [System.IO.NotifyFilters]::LastWrite -bor [System.IO.NotifyFilters]::FileName

# On any change, record the time
$onChange = {
    $global:lastChange = [DateTime]::Now
    $global:pendingCommit = $true
}

Register-ObjectEvent $watcher Changed -Action $onChange | Out-Null
Register-ObjectEvent $watcher Created -Action $onChange | Out-Null
$watcher.EnableRaisingEvents = $true

# Main loop — commit when changes stop for $debounceSeconds
while ($true) {
    Start-Sleep -Seconds 2

    if ($pendingCommit) {
        $secondsSince = ([DateTime]::Now - $lastChange).TotalSeconds
        if ($secondsSince -ge $debounceSeconds) {
            $pendingCommit = $false
            $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"

            Write-Host "  [$timestamp] Changes detected — committing..." -ForegroundColor Yellow

            git -C $repoPath add -A 2>&1 | Out-Null
            $commitMsg = "Auto-save $timestamp"
            $result = git -C $repoPath commit -m $commitMsg 2>&1

            if ($result -match "nothing to commit") {
                Write-Host "  No changes to commit." -ForegroundColor DarkGray
            } else {
                git -C $repoPath push origin master 2>&1 | Out-Null
                Write-Host "  Pushed. Live in ~1 min: https://af-2008.github.io/Claude/" -ForegroundColor Green
            }
        }
    }
}
