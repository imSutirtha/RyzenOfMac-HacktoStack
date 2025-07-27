```bash
#!/bin/bash

# ☕️ Easily switch to Java 11 (needed for Android Studio compatibility)

export JAVA_HOME="/opt/homebrew/opt/openjdk@11"
export PATH="$JAVA_HOME/bin:$PATH"

echo "✅ Java version set to: $(java -version)"
```
