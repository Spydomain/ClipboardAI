# ClipboardAI
A Linux tool that listens to your clipboard, sends copied text to a local LLaMA model via Ollama, and shows instant AI answers in a popup.

# ClipboardAI

ClipboardAI is a Linux tool that listens to your clipboard, sends copied text to a local LLaMA model via Ollama, and shows instant AI answers in a popup window. It’s perfect for quick offline AI assistance without needing to open a browser.

---

## Installation

### 1. Install Ollama CLI

Run the following command to install Ollama:

```bash
curl -fsSL https://ollama.com/install.sh | sh
```
For more info, visit the Ollama website.
https://ollam.com

2. Download and run the LLaMA 3.2 model
Start the LLaMA 3.2 model locally by running:
```bash
ollama run llama3.2
```
Setup ClipboardAI Tool
3. Clone this repository
```bash
git clone https://github.com/yourusername/ClipboardAI.git
cd ClipboardAI
chmod +x clipboard_ai.sh
```
4. Install dependencies
On Arch-based systems (Garuda, Manjaro, Arch):
```bash
sudo pacman -S xclip zenity
```
For Debian/Ubuntu:
```bash
sudo apt install xclip zenity
```
5. Make executable
 ```bash
   chmod +x clipboard_ai.sh
   ```
6. Run ClipboardAI
   ```bash
   ./clipboard_ai.sh
   ```
   Now, whenever you copy text (Ctrl+C), ClipboardAI will automatically send it to Ollama’s LLaMA 3.2 and display the AI’s answer in a popup.

How It Works
1. Continuously monitors your clipboard for new copied text

2. When new text is detected, sends it as a prompt to the local LLaMA 3.2 model via Ollama CLI

3. Shows the AI-generated response in a scrollable popup window using Zenity
