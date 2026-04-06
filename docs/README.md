# 🧬 AutoEvolve OS - Technical README

> **For the advanced vibcoders who want the full technical picture.**

---

## 🔬 Deep Dive: The Architecture

### Core Components

#### 1. Research Membrane
The central nervous system. 10 interconnected prompts that:
- Receive commands from user
- Route to appropriate sub-system
- Execute research cycles
- Apply improvements automatically
- Document everything

**Prompts:**
1. `investigation_membrane.md` - Main controller
2. `multi_model_filter.md` - Model selection logic
3. `agent_evolution.md` - Spirit improvement
4. `memory_optimization.md` - Memory management
5. `capability_evolution.md` - Skill improvement
6. `knowledge_expansion.md` - Wiki growth
7. `command_execution.md` - CLI handling
8. `autoresearch_orchestrator.md` - Research cycles
9. `claude_integration.md` - Claude Code hook
10. `gemini_integration.md` - Gemini CLI hook

#### 2. Multi-Model Engine
```python
# Selection Logic
IF task == "code" AND complexity == "high":
    model = "Claude Sonnet"
ELIF task == "reasoning":
    model = "GPT-4"
ELIF task == "fast_analysis":
    model = "Gemini Flash"
ELIF task == "local":
    model = "Ollama (llama3.1)"
ELIF task == "research":
    run AutoResearch
```

#### 3. AutoResearch Integration
- Runs on **5-minute cycles**
- Metric: **val_bpb** (validation bits per byte)
- One change at a time
- Keep what improves, discard what doesn't

#### 4. Knowledge Graph
- Persistent wiki (Obsidian-based)
- Auto-linking of concepts
- Pattern extraction from research
- Document generation

---

## 🛠️ Installation Details

### Full Setup

```bash
# Create workspace
mkdir -p ~/autoevolve
cd ~/autoevolve

# Clone
git clone https://github.com/Jmkt/autoevolve-os.git
cd autoevolve-os

# Install uv if needed
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
# Optional configs
export AUTORESEARCH_DIR="~/autoresearch"
export WIKI_DIR="./WIKI"
export RESEARCH_INTERVAL=300  # seconds
export MAX_EXPERIMENTS=100
```

---

## 🔧 Configuration

### Adding New Models

Edit `multi_model_filter.md`:
```markdown
### NewModel (Provider)
- **Endpoint**: your-endpoint
- **Strength**: what-it-does-well
- **Use for**: when-to-use-it
- **Cost**: $/1k tokens
```

### Creating New Agents

1. Add to `agent_evolution.md`
2. Define metrics
3. Set evolution trigger
4. Test in production

---

## 📊 Metrics & Monitoring

### Tracked Metrics

| Metric | What It Measures | Target |
|--------|------------------|--------|
| `val_bpb` | Model quality | Lower is better |
| `task_completion` | Agent success | >95% |
| `latency` | Response time | <500ms |
| `memory_usage` | RAM utilization | <80% |

### Logs

Research logs go to `./logs/experiments.md`:
```markdown
## [2026-04-06 06:00] Experiment #1

### Goal
Optimize temperature parameter

### Change
temperature: 0.8 → 0.6

### Result
val_bpb: 1.28 → 1.23
Delta: -4%

### Decision
KEEP
```

---

## 🔐 Security Considerations

- **Local models**: All data stays on your machine
- **API keys**: Store in environment variables, never commit
- **Wiki**: Can be encrypted with Obsidian encryption
- **Research**: Runs in isolated environment

---

## 🚨 Troubleshooting

### "uv not found"
```bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
source ~/.bashrc
```

### "AutoResearch won't start"
```bash
# Check GPU
nvidia-smi

# Check PyTorch
python -c "import torch; print(torch.cuda.is_available())"
```

### "Wiki won't load"
```bash
# Open in Obsidian
# File > Open Vault > Select WIKI folder
```

---

## 🔄 Updating

```bash
# Pull latest
git pull origin main

# Update deps
uv sync

# Check status
bash scripts/evolve.sh status
```

---

## 📚 References

- [AutoResearch - Karpathy](https://github.com/karpathy/autoresearch)
- [NanoChat](https://github.com/karpathy/nanochat)
- [Memex History](https://en.wikipedia.org/wiki/Memex)
- [UV Package Manager](https://docs.astral.sh/uv/)

---

## 🏆 Advanced: Extending the System

### Adding Custom Research Loops

```python
# Create new research module
class CustomResearch:
    def __init__(self):
        self.target = "your_target"
        self.interval = 300  # 5 min
    
    def hypothesis(self):
        # Generate testable hypotheses
        pass
    
    def experiment(self, change):
        # Run single experiment
        pass
    
    def evaluate(self):
        # Check results
        pass
```

### Hooking into Existing Systems

```bash
# Add to crontab for automated runs
0 2 * * * cd ~/autoevolve && bash scripts/evolve.sh research "optimize"
```

---

## 🤝 Support

- **Issues**: https://github.com/Jmkt/autoevolve-os/issues
- **Discussions**: https://github.com/Jmkt/autoevolve-os/discussions
- **Wiki**: Check the WIKI folder for docs

---

*This is experimental. Run at your own risk. Break things. Learn. Improve.*

---

**MIT License** - See LICENSE file for details.
