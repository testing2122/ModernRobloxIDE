# Modern Roblox IDE

A sleek, feature-rich code editor UI designed for Roblox that can be executed via a script executor.

## Features

- Modern, clean UI inspired by popular code editors like VS Code
- Syntax highlighting for Lua
- Code completion suggestions
- Multiple tabs for editing different files
- File explorer
- Dark mode and light mode themes
- Line numbers
- Search and replace functionality
- Error highlighting
- Custom key bindings
- Minimap for code navigation
- Status bar with useful information
- Customizable appearance

## Usage

### Quick Start
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/testing2122/ModernRobloxIDE/main/loader.lua"))()
```

### Manual Installation
1. Download the repository files
2. Execute the `main.lua` file through your script executor

## Structure
- `loader.lua` - Main loader that fetches all components
- `main.lua` - Core implementation of the IDE
- `themes/` - Contains theme files for customizing appearance
- `modules/` - Contains modules for different functionality
  - `syntax.lua` - Syntax highlighting
  - `completion.lua` - Code completion
  - `fileExplorer.lua` - File navigation
  - `search.lua` - Search and replace functionality

## Preview
![Preview Image](preview.png)

## License
MIT License