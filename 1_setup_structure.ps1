# Create base directory
New-Item -ItemType Directory -Force -Path flask-aws-app

# Subdirectories
$folders = @(
    "templates",
    "tests",
    ".vscode"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path "flask-aws-app\$folder"
}

# Top-level files
$files = @(
    "app.py",
    "config.py",
    "models.py",
    "requirements.txt",
    "Dockerfile",
    "docker-compose.yml",
    ".env",
    ".gitignore",
    "setup_env.sh",
    "setup_env.ps1"
)

foreach ($file in $files) {
    New-Item -ItemType File -Force -Path "flask-aws-app\$file"
}

# Nested files
New-Item -ItemType File -Force -Path "flask-aws-app\tests\test_app.py"
New-Item -ItemType File -Force -Path "flask-aws-app\templates\form.html"

$vscodeFiles = @(
    "settings.json",
    "launch.json",
    "tasks.json"
)

foreach ($file in $vscodeFiles) {
    New-Item -ItemType File -Force -Path "flask-aws-app\.vscode\$file"
}

Write-Host "✅ Flask AWS project structure created successfully!"
