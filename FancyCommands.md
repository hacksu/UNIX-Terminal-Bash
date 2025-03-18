

#### **1. Command Chaining (Executing Multiple Commands)**
- `&&` → Run second command **only if the first succeeds**  
  ```bash
  mkdir my_folder && cd my_folder
  ```
- `||` → Run second command **only if the first fails**  
  ```bash
  mkdir my_folder || echo "Folder creation failed"
  ```
- `;` → Run multiple commands **regardless of success or failure**  
  ```bash
  echo "Step 1"; echo "Step 2"; echo "Step 3"
  ```

#### **2. Piping (`|`) - Sending Output Between Commands**
- Passes the output of one command as input to another:
  ```bash
  ls -l | grep "file.txt"
  ```
- Count files in a directory:
  ```bash
  ls | wc -l
  ```

#### **3. Redirection (`>`, `>>`, `<`)**
- **Save output to a file**:
  ```bash
  echo "Hello, world!" > output.txt  # Overwrites file
  echo "Appending text" >> output.txt  # Appends text
  ```
- **Use a file as input**:
  ```bash
  sort < names.txt
  ```

---


#### **4. Background & Foreground Process Management**
- **Run a process in the background**:
  ```bash
  python script.py &
  ```
- **Bring a background process to foreground**:
  ```bash
  fg %1
  ```
- **List running background jobs**:
  ```bash
  jobs
  ```

#### **5. Using `alias` for Custom Shortcuts**
- **Define a shortcut for a long command**:
  ```bash
  alias ll='ls -lah'
  ```
- **Make it permanent** (add to `~/.bashrc` or `~/.zshrc`):
  ```bash
  echo "alias ll='ls -lah'" >> ~/.bashrc && source ~/.bashrc
  ```

#### **6. Searching & Navigation with `grep` and `find`**
- **Search for text in files**:
  ```bash
  grep -i "error" /var/log/syslog
  ```
- **Find files by name**:
  ```bash
  find /home -name "*.txt"
  ```
- **Find and execute a command on results**:
  ```bash
  find /home -name "*.log" -exec rm {} \;
  ```

---

### **💡 Bonus Tip: Use `Ctrl` Shortcuts**
| Shortcut | Description |
|----------|------------|
| `Ctrl + C` | Stop a running process |
| `Ctrl + Z` | Suspend a process (use `fg` to resume) |
| `Ctrl + R` | Reverse search through command history |
| `Ctrl + L` | Clear terminal screen |

---
