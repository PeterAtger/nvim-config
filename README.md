# My Neovim Configuration

This is my personal Neovim configuration, designed to enhance productivity and make development enjoyable. This configuration includes features like fast plugin management with `lazy.nvim`, code navigation using `telescope.nvim`, efficient file management with `oil.nvim`, and more.

---

## 📥 Installation

### Step 1: Install Neovim  
Ensure Neovim is installed. Follow the instructions [here](https://neovim.io/) for your OS.

- **macOS**: Install via Homebrew:
  ```bash
  brew install neovim
  
- **Linux**: Use your package manager (e.g., `sudo apt install neovim` for Ubuntu).
- **Windows**: Download the release from [Neovim's GitHub](https://github.com/neovim/neovim/releases).

### Step 2: Clone This Configuration  
Clone this repository into your Neovim configuration directory:
```bash
git clone https://github.com/PeterAtger/nvim-config ~/.config/nvim
```

### Step 3: Install Dependencies  
- **Node.js**: Install via [nvm](https://github.com/nvm-sh/nvm) or your package manager.
- **Python**: Ensure `pip` is installed and run:
  ```bash
  pip install pynvim
  ```
- **Ripgrep**: Required for `telescope.nvim`. Install it via your package manager or from [Ripgrep's GitHub](https://github.com/BurntSushi/ripgrep).

---

## 🛠 Features & Plugins

### 🔥 Plugin Manager: `lazy.nvim`
This configuration uses `lazy.nvim` for plugin management. Plugins are loaded lazily for optimal performance.

To install or manage plugins, open Neovim and run:
```vim
:Lazy
```

### 🧭 Navigation: `telescope.nvim`
- `telescope.nvim` provides a powerful fuzzy finder for files, buffers, and more.
- Keybindings:
  - `<leader>sf`: Open file search.
  - `<leader>sg`: Live grep through project files.

### 🚀 Harpoon
Efficiently manage and jump between files in your workspace.  
- Keybindings:
  - `<leader>ha`: Add the current file to Harpoon’s list.
  - `<leader>ho`: Open the Harpoon menu.

### 🤖 GitHub Copilot
Integrate GitHub Copilot for AI-powered code suggestions.  
- Ensure you have a Copilot subscription.
- Install the Copilot plugin and authenticate using your GitHub account.

### 📂 File Management: `oil.nvim`
`oil.nvim` is a modern file explorer built into Neovim.  
- Keybinding: `<leader>e` to toggle the file explorer.

---

## 🌟 Usage

1. **Open Neovim**  
   Run `nvim` in your terminal to start.

2. **Keybindings**  
   Use the following key combinations for common tasks:
   - `<leader>f`: Search files with Telescope.
   - `<leader>g`: Live grep through files.
   - `<leader>a`: Add a file to Harpoon.
   - `<leader>h`: Open Harpoon menu.
   - `<leader>e`: Toggle the file explorer with `oil.nvim`.

---

## 📂 Directory Structure
```
~/.config/nvim
├── init.lua          # Main configuration file
├── lua/
│   ├── plugins/      # Plugin-specific configurations
│   ├── settings/     # General editor settings
│   └── mappings.lua  # Custom key mappings
```

---

## ✨ Contributing
Feel free to fork this configuration, make changes, and submit pull requests. Feedback and suggestions are always welcome!

---

## 📄 License
This Neovim configuration is open source and available under the MIT License.
