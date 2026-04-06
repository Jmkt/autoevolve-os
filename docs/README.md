# 🐴 AutoEvolve OS - Technical Deep Dive

> **Complete technical documentation for advanced vibcoders.**
>
> *The self-evolving AI infrastructure — powered by autonomous research.*

---

## 🔍 SEO & Overview

**AutoEvolve OS** is an experimental self-evolving AI infrastructure where AI improves AI automatically. Built on [Karpathy's AutoResearch](https://github.com/karpathy/autoresearch), featuring a Research Membrane, Multi-Model Filter, and Knowledge Graph.

### Keywords
`#AI` `#SelfEvolving` `#AutoResearch` `#MachineLearning` `#LLM` `#Autonomous` `#Python` `#OpenSource` `#AIInfrastructure` `#DevTools`

---

## 🔬 The Architecture - Deep Dive

### Core Components Diagram

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                        AUTO EVOLVE OS CORE 🐴                                  │
├──────────────────────────────────────────────────────────────────────────────┤
│                                                                               │
│  ╔═══════════════════════════════════════════════════════════════════════╗  │
│  ║                    🔬 RESEARCH MEMBRANE                                 ║  │
│  ║  ┌─────────────────────────────────────────────────────────────────┐  ║  │
│  ║  │  • 10 Interconnected Prompts                                    │  ║  │
│  ║  │  • Command Routing                                               │  ║  │
│  ║  │  • Self-Optimization Logic                                       │  ║  │
│  ║  │  • Auto-Documentation                                            │  ║  │
│  ║  └─────────────────────────────────────────────────────────────────┘  ║  │
│  ╚═══════════════════════════════════╦════════════════════════════════════╝  │
│                                      │                                          │
│        ┌────────────────────────────┼────────────────────────────┐           │
│        ▼                            ▼                            ▼           │
│  ┌─────────────┐            ┌─────────────┐              ┌─────────────┐    │
│  │   MULTI-    │            │    AUTO     │              │   FILTER    │    │
│  │   MODEL     │            │  RESEARCH   │              │   LAYER     │    │
│  │   ENGINE    │            │   ENGINE 🐴  │              │             │    │
│  │             │            │             │              │             │    │
│  │ ┌─────────┐ │            │ ┌─────────┐ │              │ ┌─────────┐ │    │
│  │ │ Ollama  │ │            │ │ 5-min   │ │              │ │Claude+  │ │    │
│  │ │ Local   │ │            │ │ Cycles  │ │              │ │Gemini+  │ │    │
│  │ └─────────┘ │            │ └─────────┘ │              │ │GPT      │ │    │
│  │ ┌─────────┐ │            │ ┌─────────┐ │              │ └─────────┘ │    │
│  │ │ Claude  │ │            │ │ val_bpb  │ │              │             │    │
│  │ │Anthropic│ │            │ │ Metric  │ │              │             │    │
│  │ └─────────┘ │            │ └─────────┘ │              │             │    │
│  │ ┌─────────┐ │            │ ┌─────────┐ │              │             │    │
│  │ │ Gemini  │ │            │ │Hypothesis│ │              │             │    │
│  │ │ Google  │ │            │ │Generator │ │              │             │    │
│  │ └─────────┘ │            │ └─────────┘ │              │             │    │
│  └──────┬──────┘            └──────┬──────┘              └─────────────┘    │
│         │                        │                                              │
│         └────────────────────────┼──────────────────────────────────────────┘   │
│                                  ▼                                               │
│  ┌──────────────────────────────────────────────────────────────────────┐     │
│  │                    🧠 KNOWLEDGE GRAPH                                 │     │
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐ │     │
│  │  │   WIKI      │  │ Auto-Linking │  │  Pattern    │  │  Research   │ │     │
│  │  │ (Obsidian)  │  │              │  │  Extraction │  │   Logs      │ │     │
│  │  └─────────────┘  └─────────────┘  └─────────────┘  └─────────────┘ │     │
│  └──────────────────────────────────────────────────────────────────────┘     │
│                                                                               │
└──────────────────────────────────────────────────────────────────────────────┘
```

---

### 1. 🔬 Research Membrane (The Brain)

**Purpose**: Central nervous system of AutoEvolve OS

**Components**:
- 10 interconnected system prompts
- Command router
- Decision engine
- Auto-documentation system

**Prompts List**:
1. `investigation_membrane.md` - Main controller
2. `multi_model_filter.md` - Model selection logic
3. `agent_evolution.md` - Spirit improvement
4. `memory_optimization.md` - Memory management
5. `capability_evolution.md` - Skill improvement
6. `knowledge_expansion.md` - Wiki growth
7. `command_execution.md` - CLI handling
8. `autoresearch_orchestrator.md` - Research cycles 🐴
9. `claude_integration.md` - Claude Code hook
10. `gemini_integration.md` - Gemini CLI hook

**Flow**:
```
User Input → Parse → Route → Execute → Document → Repeat
```

---

### 2. ⚡ Multi-Model Engine (The Selector)

**Purpose**: Intelligent model selection for optimal results

**Supported Models**:
| Model | Provider | Best For |
|-------|----------|----------|
| Ollama | Local | Privacy, cost-sensitive |
| Claude | Anthropic | Deep reasoning, code |
| Gemini | Google | Fast analysis, multimodal |
| GPT | OpenAI | Creative generation |

**Selection Logic**:
```python
# Auto-Selection Algorithm
IF task == "code" AND complexity == "high":
    model = "Claude Sonnet"      # Deep reasoning
    config = {"temperature": 0.7, "max_tokens": 4096}
    
ELIF task == "reasoning":
    model = "GPT-4"             # Complex reasoning
    config = {"temperature": 0.5, "max_tokens": 8192}
    
ELIF task == "fast_analysis":
    model = "Gemini Flash"       # Speed priority
    config = {"temperature": 0.9, "max_tokens": 2048}
    
ELIF task == "local" OR task == "private":
    model = "Ollama (llama3.1)"  # Privacy
    config = {"temperature": 0.8, "context": 4096}
    
ELIF task == "research":
    run AutoResearch             # 🐴 Run experiments
    
ELSE:
    model = "Ollama (llama3.1)"  # Default
```

---

### 3. 🔄 AutoResearch Engine 🐴 (The Worker)

**Purpose**: Autonomous optimization through experimentation

**Based on**: [Karpathy's AutoResearch](https://github.com/karpathy/autoresearch)

**How It Works**:
```
1. ANALYZE current model state
2. GENERATE hypothesis (e.g., "lower temp to 0.6")
3. MAKE one change to train.py
4. RUN training (exactly 5 minutes)
5. EVALUATE: val_bpb improved?
6. DECIDE: KEEP or DISCARD
7. DOCUMENT experiment
8. REPEAT until time runs out
```

**Metrics**:
- **val_bpb**: Validation bits per byte (primary)
- **Training loss**: Model convergence
- **GPU utilization**: Resource efficiency
- **Tokens/sec**: Performance speed

**Results**:
- ~100 experiments overnight
- 5-minute cycles
- Automatic parameter optimization
- Documented experiments

---

### 4. 🧠 Knowledge Graph (The Memory)

**Purpose**: Self-managing persistent knowledge base

**Components**:
- **Wiki**: Using Obsidian for markdown management
- **Auto-Linking**: Automatic connection of concepts
- **Pattern Extraction**: Finding relationships in data
- **Research Logs**: Documenting all experiments

**Auto-Documentation Flow**:
```
Source → Ingest → Extract Concepts → Link to Existing → Document
```

---

### 5. 🐴 Agent Evolution (The Spirits)

**Purpose**: Self-improving AI agents called "Spirits"

**Active Spirits**:
| Spirit | Role | Improvement Area |
|--------|------|------------------|
| Explorer | Research | Search efficiency |
| Strategy | Planning | Decision quality |
| Engineering | Coding | Code patterns |
| Security | Defense | Threat detection |

**Evolution Cycle**:
```
Interaction → Metrics → Pattern Analysis → Improvement → Deploy
```

---

## 📊 Data Flow Diagram

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│    USER      │────►│   INPUT      │────►│   MEMBRANE   │────►│   DECISION   │
│  Commands    │     │  Parser      │     │  Router      │     │   Engine     │
└──────────────┘     └──────────────┘     └──────────────┘     └──────┬───────┘
                                                                         │
      ┌───────────────────────────────────────────────────────────────────┘
      │
      ▼
┌──────────────┐     ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   OUTPUT     │◄────│  KNOWLEDGE   │◄────│   RESEARCH   │◄────│   EXECUTE    │
│  Result/Action│     │    GRAPH     │     │   Results    │     │   Task       │
└──────────────┘     └──────────────┘     └──────────────┘     └──────┬───────┘
       │                                                              │
       ▼                                                              ▼
┌──────────────┐                                              ┌──────────────┐
│   FEEDBACK    │─────►  Updates Spirit Metrics               │   DOCUMENT   │
│   to User     │                                              │   to Wiki    │
└──────────────┘                                              └──────────────┘
```

---

## 🛠️ Installation

### Full Setup

```bash
# Create workspace
mkdir ~/autoevolve
cd ~/autoevolve

# Clone
git clone https://github.com/Jmkt/autoevolve-os.git
cd autoevolve-os

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install deps
uv sync

# Install AutoResearch (optional but recommended)
cd ..
git clone https://github.com/karpathy/autoresearch.git
cd autoresearch
uv sync
uv run prepare.py

# Test
cd ../autoevolve-os
bash scripts/evolve.sh status
```

### Environment Variables

```bash
export AUTORESEARCH_DIR="~/autoresearch"
export WIKI_DIR="./WIKI"
export RESEARCH_INTERVAL=300  # seconds
export MAX_EXPERIMENTS=100
```

---

## 🎮 Commands Reference

| Command | Action | Example |
|---------|--------|---------|
| `evolve status` | Check system | `evolve status` |
| `evolve research` | Start research | `evolve research "optimize"` |
| `evolve optimize` | Optimize | `evolve optimize` |
| `evolve search` | Search wiki | `evolve search "llm"` |

---

## 📈 Expected Results

| Metric | Before | After AutoEvolve |
|--------|--------|------------------|
| Experiments/day | 1 manual | 100 automatic |
| Model optimization | Hours of tuning | Overnight |
| Knowledge | Scattered | Connected |
| Agent performance | Static | Improving |

---

## 🔐 Security

- **Local models**: All data stays local with Ollama
- **API keys**: Environment variables only
- **Wiki**: Can use Obsidian encryption
- **Research**: Runs in isolated environment

---

## 🚨 Troubleshooting

### "uv not found"
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### "AutoResearch won't start"
```bash
nvidia-smi  # Check GPU
python -c "import torch; print(torch.cuda.is_available())"
```

---

## 🔄 Updating

```bash
git pull origin main
uv sync
bash scripts/evolve.sh status
```

---

## 📚 References

- [AutoResearch - Karpathy](https://github.com/karpathy/autoresearch)
- [NanoChat](https://github.com/karpathy/nanochat)
- [Memex History](https://en.wikipedia.org/wiki/Memex)
- [UV Package Manager](https://docs.astral.sh/uv/)

---

## 🤝 Support

- **Issues**: [github.com/Jmkt/autoevolve-os/issues](https://github.com/Jmkt/autoevolve-os/issues)
- **Discussions**: [github.com/Jmkt/autoevolve-os/discussions](https://github.com/Jmkt/autoevolve-os/discussions)

---

## 🏷️ Tags

`#AI` `#SelfEvolving` `#AutoResearch` `#MachineLearning` `#LLM` `#Autonomous` `#Python` `#OpenSource` `#AIInfrastructure` `#DevTools` `#Automation` `#Research` `#Vibcoders` `#Tech` `#Innovation` `#Future` `#OSS` `#Karpathy` `#KnowledgeGraph`

---

*Technical documentation for AutoEvolve OS v1.0*
*MIT License - See LICENSE file*
*🐴 The Red Horse of autonomous AI*
