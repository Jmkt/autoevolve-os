# 🐴 AutoEvolve OS 🐴

> **The Self-Evolving AI Infrastructure**
>
> *Where AI improves AI, and the system gets smarter with every interaction.*
>
> *Built for vibcoders who dream big and code harder.* 🚀

---

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0-blue.svg)]()
[![Status](https://img.shields.io/badge/Status-Beta-orange.svg)]()
[![Stars](https://img.shields.io/github/stars/Jmkt/autoevolve-os?style=social)]()
[![Forks](https://img.shields.io/github/forks/Jmkt/autoevolve-os?style=social)]()
[![GitHub last commit](https://img.shields.io/github/last-commit/Jmkt/autoevolve-os)]()
[![Python](https://img.shields.io/badge/Python-3.10+-blue)]()
[![AI](https://img.shields.io/badge/AI-Self-Evolving-purple)]()

---

## 🎯 What's This Thing?

**AutoEvolve OS** is an experimental infrastructure that explores a wild idea: **what if AI could optimize itself?**

Think of it like this:
- **Traditional software**: you write code, it runs, you fix bugs
- **AutoEvolve**: AI writes code, tests it, keeps what works, discards what doesn't — **on autopilot**

It's built on top of [Karpathy's AutoResearch](https://github.com/karpathy/autoresearch) concept, but expanded into a full operating system layer that manages models, agents, memory, and knowledge — all evolving automatically.

🐴 **The Red Horse** — Inspired by the AutoResearch project's iconic horse, representing the raw power of autonomous AI evolution.

---

## 🔥 Why It Slaps

| Feature | What It Does | Why You Care |
|---------|-------------|--------------|
| **Research Membrane** | 10 interconnected prompts that self-optimize | Your system gets better while you sleep |
| **Multi-Model Filter** | Auto-selects the best model (Ollama/Claude/Gemini/GPT) | No more manual model switching |
| **AutoResearch Engine** | Runs 5-minute experiment cycles overnight | Wake up to better parameters |
| **Knowledge Graph** | Wiki that grows and connects itself | Your knowledge compounds automatically |
| **Agent Evolution** | Spirits that learn from interactions | Each task makes them smarter |

---

## 🏗️ The Architecture - Deep Dive

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                        AUTO EVOLVE OS CORE                                    │
├──────────────────────────────────────────────────────────────────────────────┤
│                                                                               │
│  ╔═══════════════════════════════════════════════════════════════════════╗  │
│  ║                    🔬 RESEARCH MEMBRANE                                 ║  │
│  ║  ┌─────────────────────────────────────────────────────────────────┐  ║  │
│  ║  │  • 10 Interconnected Prompts                                      │  ║  │
│  ║  │  • Self-optimizing infrastructure                                  │  ║  │
│  ║  │  • Autonomous decision making                                     │  ║  │
│  ║  └─────────────────────────────────────────────────────────────────┘  ║  │
│  ╚════════════════════════════╦════════════════════════════════════════════╝  │
│                                │                                              │
│        ┌──────────────────────┼──────────────────────┐                     │
│        ▼                      ▼                      ▼                     │
│  ┌─────────────┐      ┌─────────────┐        ┌─────────────┐                │
│  │   MULTI-    │      │    AUTO     │        │   FILTER    │                │
│  │   MODEL     │      │  RESEARCH   │        │   LAYER     │                │
│  │   ENGINE    │      │   ENGINE    │        │             │                │
│  │             │      │             │        │             │                │
│  │ ┌─────────┐ │      │ ┌─────────┐ │        │ ┌─────────┐ │                │
│  │ │ Ollama  │ │      │ │ 5-min   │ │        │ │Claude+  │ │                │
│  │ │ (Local)  │ │      │ │ cycles  │ │        │ │Gemini+  │ │                │
│  │ └─────────┘ │      │ └─────────┘ │        │ │GPT      │ │                │
│  │ ┌─────────┐ │      │ ┌─────────┐ │        │ └─────────┘ │                │
│  │ │ Claude  │ │      │ │val_bpb  │ │        └─────────────┘                │
│  │ │(Anthropic│ │      │ │metric  │ │                                     │
│  │ └─────────┘ │      │ └─────────┘ │                                     │
│  │ ┌─────────┐ │      │ ┌─────────┐ │                                     │
│  │ │ Gemini  │ │      │ │ Hypothesis│ │                                    │
│  │ │(Google) │ │      │ │ Generator│ │                                    │
│  │ └─────────┘ │      │ └─────────┘ │                                     │
│  └──────┬──────┘      └──────┬──────┘                                     │
│         │                   │                                              │
│         └───────────────────┼──────────────────────────────────────────┘   │
│                             ▼                                                │
│  ┌──────────────────────────────────────────────────────────────────────┐   │
│  │                    🧠 KNOWLEDGE GRAPH                                 │   │
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  │   │
│  │  │   WIKI      │  │ Auto-Linking │  │  Pattern    │  │  Research   │  │   │
│  │  │(Obsidian)  │  │             │  │  Extraction  │  │   Logs      │  │   │
│  │  └─────────────┘  └─────────────┘  └─────────────┘  └─────────────┘  │   │
│  └──────────────────────────────────────────────────────────────────────┘   │
│                                                                               │
└──────────────────────────────────────────────────────────────────────────────┘
```

### 🐴 What Each Component Does

#### 1. 🔬 Research Membrane (The Brain)
- **What it is**: 10 interconnected system prompts that govern how the system thinks
- **What it does**: Routes commands, manages research cycles, applies improvements
- **How it works**: 
  ```
  Input → Analyze → Route → Execute → Document → Repeat
  ```
- **Result**: A self-governing infrastructure that improves itself

#### 2. ⚡ Multi-Model Engine (The Selector)
- **What it is**: Intelligent model selection system
- **What it does**: Chooses the best AI model for each task automatically
- **How it works**:
  ```python
  IF task == "code" AND complexity == "high":
      model = "Claude Sonnet"      # Best reasoning
  ELIF task == "fast_analysis":
      model = "Gemini Flash"        # Speed
  ELIF task == "local_private":
      model = "Ollama (llama3.1)"  # Privacy
  ELIF task == "research":
      run AutoResearch              # Auto-optimization
  ```
- **Result**: Optimal model for every use case, every time

#### 3. 🔄 AutoResearch Engine (The Worker)
- **What it is**: Autonomous research system based on Karpathy's concept
- **What it does**: Runs experiments on models overnight
- **How it works**:
  ```
  1. Analyze current model state
  2. Generate hypothesis (e.g., "lower temp to 0.6")
  3. Make ONE change to train.py
  4. Run training (5 minutes exactly)
  5. Evaluate: val_bpb improved?
  6. YES → KEEP | NO → DISCARD
  7. Document & repeat
  ```
- **Result**: ~100 experiments overnight = better model parameters every morning

#### 4. 🧠 Knowledge Graph (The Memory)
- **What it is**: Self-managing wiki using Obsidian
- **What it does**: Automatically grows and connects knowledge
- **How it works**:
  ```
  Source → Ingest → Extract Concepts → Link to Existing → Auto-Document
  ```
- **Result**: Your knowledge compounds automatically — never lose track of what you've learned

#### 5. 🐴 Agent Evolution (The Spirits)
- **What it is**: Self-improving AI agents (called "Spirits")
- **What it does**: Each interaction makes them smarter
- **How it works**:
  ```
  Interaction → Metrics → Pattern Analysis → Improvement → Deploy
  ```
- **Result**: Agents that get better at their jobs over time

---

## 📊 The Data Flow

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│    USER      │────►│   INPUT      │────►│   MEMBRANE   │────►│   DECISION   │
│  (Commands)  │     │  (Parse)     │     │  (Router)    │     │   ENGINE     │
└──────────────┘     └──────────────┘     └──────────────┘     └──────┬───────┘
                                                                         │
      ┌───────────────────────────────────────────────────────────────────┘
      │
      ▼
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   OUTPUT     │◄────│  KNOWLEDGE   │◄────│   RESEARCH   │◄────│   EXECUTE    │
│  (Result)    │     │    GRAPH     │     │   RESULTS    │     │   (Action)   │
└──────────────┘     └──────────────┘     └──────────────┘     └──────────────┘
       │
       ▼
┌──────────────┐
│   DOCUMENT   │────►  Back to Knowledge Graph
│   (Log)      │
└──────────────┘
```

---

## 🎯 Results You Can Expect

| Metric | Before AutoEvolve | After AutoEvolve |
|--------|-------------------|------------------|
| **Model Optimization** | Manual tuning (hours) | Automatic overnight (~100 experiments) |
| **Knowledge** | Scattered files | Self-connected wiki |
| **Agent Performance** | Static | Improving with each use |
| **Research Speed** | 1 experiment/day | 100 experiments/night |
| **Model Quality** | Fixed parameters | Continuously improving |

---

## 🚀 Quick Start (5 Minutes)

```bash
# 1. Clone the vibe
git clone https://github.com/Jmkt/autoevolve-os.git
cd autoevolve-os

# 2. Install dependencies
uv sync

# 3. (Optional) Get AutoResearch going
cd ..
git clone https://github.com/karpathy/autoresearch.git
cd autoresearch
uv sync
uv run prepare.py

# 4. Run it
bash scripts/evolve.sh status
```

### Requirements
- **Python 3.10+**
- **[uv](https://docs.astral.sh/uv/)** - the fast package manager
- **NVIDIA GPU (recommended)** - for AutoResearch experiments
- **Ollama (optional)** - for local models

---

## 🎮 Commands

| Command | What It Does |
|---------|-------------|
| `evolve status` | Check system vibes |
| `evolve research <goal>` | Start autonomous research cycle |
| `evolve optimize` | Optimize system components |
| `evolve search <term>` | Search the knowledge graph |

---

## 🧪 The Research Loop (How It Works)

```bash
# When you run research mode:
$ evolve research "optimize model parameters"

[06:00] Starting autonomous cycle...
[06:00] Goal: optimize model parameters

[06:01] Generating hypotheses...
  - Hypothesis 1: Lower temperature to 0.6
  - Hypothesis 2: Increase context to 8192
  - Hypothesis 3: Tweak system prompt

[06:02] Running experiment 1...
  Change: temperature = 0.6
  Result: val_bpb improved by 4%
  Decision: KEEP ✓

[06:08] Running experiment 2...
  ...

# You get the idea. The system experiments on its own.
```

---

## 📂 Project Structure

```
autoevolve-os/
├── WIKI/                    # The knowledge graph
│   └── concepts/            # Technical concepts
│       ├── autoresearch.md    # AutoResearch deep dive
│       ├── research-membrane.md  # Membrane architecture
│       └── laboratorio-investigacion.md  # Lab infrastructure
├── docs/                    # Technical docs
│   ├── README.md            # Full technical docs
│   └── PROMPTS.md           # All system prompts
└── scripts/                 # CLI tools
    └── evolve.sh            # Main CLI
```

---

## 🤝 Contributing

**Pull requests welcome.** This is an experimental project — if you see something cool, build on it.

### How to Contribute

1. **Fork** the repo
2. **Experiment** with your use case
3. **Share** your results
4. **Improve** the code or docs

---

## 📜 License

**MIT** — Do whatever you want, just keep the license and credit.

---

## 🔗 Based On

- **[karpathy/autoresearch](https://github.com/karpathy/autoresearch)** — The OG autonomous research concept 🐴
- **[Vannevar Bush - Memex (1945)](https://en.wikipedia.org/wiki/Memex)** — The OG personal knowledge system vision

---

## 🏆 The Vision

> *"A system where AI improves AI, where every interaction makes the system smarter, where knowledge compounds automatically, and where research never sleeps."*

**AutoEvolve OS — The edge of self-evolving AI infrastructure.** 🚀🐴

---

## 🏷️ Tags & Keywords

`#AI` `#MachineLearning` `#AutoResearch` `#OpenSource` `#DevTools` `#AIInfrastructure` `#SelfImproving` `#Automation` `#Research` `#Coding` `#Vibcoders` `#Tech` `#Innovation` `#Future` `#ArtificialIntelligence` `#OSS` `#Python` `#LLM` `#Agents` `#KnowledgeGraph` `#SelfEvolving` `#Autonomous` `#Karpathy` `#Remax` `#NeuralNetworks` `#DeepLearning`

---

## 🔗 Quick Links

- **GitHub**: [github.com/Jmkt/autoevolve-os](https://github.com/Jmkt/autoevolve-os)
- **AutoResearch**: [github.com/karpathy/autoresearch](https://github.com/karpathy/autoresearch)
- **Docs**: [docs/README.md](docs/README.md)

---

*Built with 🔥, curiosity, and a very smart horse.*
*Version 1.0 - Open Beta*
*Contribute: https://github.com/Jmkt/autoevolve-os*
