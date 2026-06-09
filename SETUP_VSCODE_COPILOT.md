# Agency Agents — VS Code + GitHub Copilot Setup

Your quick-start guide to deploy agency-agents in VS Code with GitHub Copilot.

---

## 🚀 Quick Start (5 minutes)

### Step 1: Install Agents to Copilot

```bash
cd /Users/benjaminlow/Documents/GitHub/agency-agents

# Interactive wizard (recommended — pick your divisions)
./scripts/install.sh

# OR install specific categories
./scripts/install.sh --tool copilot --division engineering,design,security

# OR install everything
./scripts/install.sh --tool copilot --division all
```

### Step 2: Activate in VS Code

In any file, open Copilot Chat (`Cmd+Shift+I`) and reference the agent:

```
@github-copilot I need help with React. Activate the Frontend Developer agent and help me build a component.
```

Or paste an agent's system prompt directly:

1. Open Copilot Chat in VS Code
2. Copy content from `/Users/benjaminlow/Documents/GitHub/agency-agents/engineering/engineering-frontend-developer.md`
3. Paste at the start of your conversation

### Step 3: Reference This Guide

Bookmark or pin [AGENTS_QUICK_REFERENCE.md](AGENTS_QUICK_REFERENCE.md) in VS Code so you can quickly find which agent to use.

---

## 📍 Your Most-Used Agents

**Customize this section as you learn which agents work best for you:**

- [ ] **Frontend Developer** — React/Vue/Angular web UIs
- [ ] **Backend Architect** — Server-side systems, APIs
- [ ] **Code Reviewer** — Code quality, PR reviews
- [ ] **Senior Developer** — Architecture decisions, mentorship
- [ ] **Security Architect** — Infrastructure security
- [ ] **Product Manager** — Feature planning, roadmaps
- [ ] **UI Designer** — Interface design
- [ ] **Technical Writer** — Documentation

---

## 💻 Common Workflows

### Building a Feature

1. **Plan** → Use **Product Manager** agent
   - Define requirements
   - Plan implementation steps

2. **Design** → Use **UI Designer** agent  
   - Component design
   - User flow

3. **Build** → Use **Frontend Developer** agent
   - Implementation
   - Component coding

4. **Review** → Use **Code Reviewer** agent
   - Code quality
   - Best practices

5. **Deploy** → Use **DevOps Automator** agent
   - CI/CD setup
   - Deployment strategy

### Debugging Production Issue

1. **Diagnose** → Use **Senior Developer** agent
   - Root cause analysis
   - Investigation steps

2. **Fix** → Use **Minimal Change Engineer** agent
   - Surgical fix
   - Minimal impact changes

3. **Deploy** → Use **Incident Response Commander** agent
   - Safe rollout
   - Monitoring strategy

4. **Document** → Use **Technical Writer** agent
   - Incident writeup
   - Post-mortem

### Launching Product

1. **Strategy** → Use **Go-to-Market Strategist** (in specialized/)
2. **Marketing** → Use **Growth Marketer** (in marketing/)
3. **Sales** → Use **Sales Development Rep** (in sales/)
4. **Support** → Use **Customer Success Manager** (in support/)

---

## 🎯 Agent Discovery

### By Task

**Use this when you don't know which agent to pick:**

```
I need help with [task]. Which agent should I use?
Then in Copilot Chat, copy the suggested agent file and paste it.
```

Quick examples:

- **"I need to optimize slow queries"** → Database Optimizer
- **"I need to set up CI/CD pipeline"** → DevOps Automator  
- **"I need to review a PR"** → Code Reviewer
- **"I need to design a landing page"** → UI Designer + Brand Guardian
- **"I need to handle a security incident"** → Incident Response Commander + Security Architect

### By Division

Browse agents by category:

```bash
# List agents in a division
ls /Users/benjaminlow/Documents/GitHub/agency-agents/engineering/

# View an agent
cat /Users/benjaminlow/Documents/GitHub/agency-agents/engineering/engineering-frontend-developer.md
```

---

## 📚 VS Code Integration Options

### Option A: Inline in Copilot Chat (Fastest)

```
Chat: @github-copilot [paste agent content] Help me with X
```

### Option B: Custom Instructions

1. **VS Code Settings** → Search "Copilot"
2. **Find "Copilot: System Prompt"** → Add default agents
3. **Add multiple agents** → Copilot will prioritize relevant one

Example system prompt:
```
You are an expert Frontend Developer specializing in React.
When asked about frontend work, use these approaches...
[paste agent content]
```

### Option C: GitHub Copilot Extensions (Advanced)

If you use GitHub Copilot Extensions, you can load agents as custom instructions.

---

## 🎁 Bonus: Pre-built Combos

Copy these combos to Copilot Chat for instant multi-agent workflows:

### Combo 1: Full-Stack Feature Build
```
Agents: Frontend Developer + Backend Architect + Database Optimizer + Code Reviewer

Task: Build a new user dashboard with real-time stats.

Frontend Dev: Design the UI and components
Backend Dev: Design the API and database schema
DBA: Optimize the query performance
Reviewer: Review code quality

Workflow: [Define requirements] → [Design] → [Implement] → [Optimize] → [Review]
```

### Combo 2: Security Incident Response
```
Agents: Incident Response Commander + Security Architect + Senior Developer

Task: Respond to a security breach in production.

Commander: Lead the response
Security Architect: Assess impact and remediation
Senior Dev: Fix the vulnerability

Workflow: [Assess] → [Contain] → [Fix] → [Document] → [Post-mortem]
```

### Combo 3: Product Launch
```
Agents: Product Manager + Go-to-Market Strategist + Growth Marketer + Sales Dev Rep

Task: Launch a new product feature.

PM: Define scope and requirements
GTM: Plan launch strategy
Marketer: Create launch content
Sales: Prepare sales team

Workflow: [Plan] → [Build] → [Market] → [Sell]
```

---

## 🛠️ Customization

### Create Your Own Agent

1. Copy an existing agent: `cp engineering/engineering-frontend-developer.md engineering/engineering-my-specialist.md`
2. Edit the frontmatter (name, description, emoji, color)
3. Update the workflows and deliverables to match your needs
4. Use in Copilot Chat

### Modify Existing Agents

Agents are in Markdown. Edit them directly:

```bash
nano /Users/benjaminlow/Documents/GitHub/agency-agents/engineering/engineering-frontend-developer.md
```

---

## 📖 Need Help?

### Find the Right Agent
👉 Use [AGENTS_QUICK_REFERENCE.md](AGENTS_QUICK_REFERENCE.md)

### Understand an Agent
👉 Read the agent's `.md` file in `/agency-agents/{division}/`

### Combine Multiple Agents
👉 See [Pre-built Combos](#bonus-pre-built-combos) above

### Contribute Back
👉 See [CONTRIBUTING.md](CONTRIBUTING.md) in the main repo

---

## ✅ Deployment Checklist

- [ ] Ran `./scripts/install.sh` (or manually copied agents)
- [ ] Tested Copilot Chat with an agent
- [ ] Bookmarked AGENTS_QUICK_REFERENCE.md
- [ ] Identified 3-5 agents I'll use regularly
- [ ] Created a custom agent (optional)
- [ ] Tested a pre-built combo (optional)

---

## 🎬 Next Steps

1. **Open Copilot Chat** in VS Code (`Cmd+Shift+I`)
2. **Reference this guide** → "Which agent should I use for X?"
3. **Pick an agent** → Look up in AGENTS_QUICK_REFERENCE.md
4. **Copy and paste** → Paste agent content into Copilot Chat
5. **Start working** → "Hey [Agent Name], help me with..."

---

**You're all set! 🎭✨**

*Reference: [AGENTS_QUICK_REFERENCE.md](AGENTS_QUICK_REFERENCE.md) | [Project README](README.md) | [Contributing](CONTRIBUTING.md)*
