$ErrorActionPreference = "Stop"

$pluginDir = "$env:USERPROFILE\.claude\plugins\cavepowers"
$repoUrl = "https://raw.githubusercontent.com/mateuscaldasdev/cavepowers/main"

Write-Host "Installing CavePowers..."

$skills = @("cavepowers","brainstorming","systematic-debugging","test-driven-development","writing-plans","executing-plans","subagent-driven-development","dispatching-parallel-agents")

foreach ($skill in $skills) {
    New-Item -ItemType Directory -Force -Path "$pluginDir\skills\$skill" | Out-Null
    Invoke-WebRequest "$repoUrl/skills/$skill/SKILL.md" -OutFile "$pluginDir\skills\$skill\SKILL.md"
}

New-Item -ItemType Directory -Force -Path "$pluginDir\.claude-plugin" | Out-Null
New-Item -ItemType Directory -Force -Path "$pluginDir\hooks" | Out-Null

Invoke-WebRequest "$repoUrl/.claude-plugin/plugin.json" -OutFile "$pluginDir\.claude-plugin\plugin.json"
Invoke-WebRequest "$repoUrl/hooks/hooks.json" -OutFile "$pluginDir\hooks\hooks.json"
Invoke-WebRequest "$repoUrl/hooks/run-hook.cmd" -OutFile "$pluginDir\hooks\run-hook.cmd"
Invoke-WebRequest "$repoUrl/hooks/session-start" -OutFile "$pluginDir\hooks\session-start"

Write-Host "CavePowers installed."
Write-Host "  Type /cavepowers to activate. Brain big. Mouth small."
