#!/bin/bash

# Generate Agent Shortcuts
# Creates individual .agent.md files that reference each agent
# This allows quick access to any agent through VS Code's custom agent system

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_SHORTCUTS_DIR="$SCRIPT_DIR/.agents"

# Create shortcuts directory
mkdir -p "$AGENTS_SHORTCUTS_DIR"

echo "🚀 Generating agent shortcuts..."

agent_count=0
total_agents=$(find "$SCRIPT_DIR" -maxdepth 2 -name "*.md" -type f | grep -v "README\|CONTRIBUTING\|LICENSE\|SETUP\|GET_STARTED\|AGENTS_QUICK" | wc -l)

# Generate shortcuts for each agent
for agent_file in $(find "$SCRIPT_DIR" -maxdepth 2 -name "*.md" -type f | grep -v "README\|CONTRIBUTING\|LICENSE\|SETUP\|GET_STARTED\|AGENTS_QUICK" | sort); do
    # Skip non-agent files
    if [[ "$agent_file" == *"README"* ]] || [[ "$agent_file" == *"CONTRIBUTING"* ]]; then
        continue
    fi
    
    division=$(basename "$(dirname "$agent_file")")
    agent_filename=$(basename "$agent_file")
    agent_basename="${agent_filename%.md}"
    
    # Extract agent name from frontmatter
    agent_name=$(head -20 "$agent_file" | grep "^name:" | sed 's/^name: *//;s/"//g' | xargs)
    
    # Create shortcut file that references the original agent
    shortcut_file="$AGENTS_SHORTCUTS_DIR/${division}-${agent_basename}.agent.md"
    
    cat > "$shortcut_file" << EOF
---
name: $agent_name
description: $(head -20 "$agent_file" | grep "^description:" | sed 's/^description: *//;s/"//g' | head -c 200)
---

\`\`\`
$(cat "$agent_file")
\`\`\`
EOF
    
    agent_count=$((agent_count + 1))
done

echo "✅ Generated $agent_count agent shortcuts in .agents/ directory"
echo "📁 Location: $AGENTS_SHORTCUTS_DIR"
echo ""
echo "📋 These shortcuts are available for quick access:"
ls -1 "$AGENTS_SHORTCUTS_DIR" | head -10
echo "   ... and $(ls -1 "$AGENTS_SHORTCUTS_DIR" | wc -l) more"
echo ""
echo "💡 Use in Copilot Chat:"
echo "   'Activate [Agent Name] agent'"
echo "   'Switch to [Agent Name]'"
