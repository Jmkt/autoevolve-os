# AutoEvolve OS - Agent Configuration

> System prompts for autonomous agents in AutoEvolve OS.

## Objective

Execute autonomous research to optimize LLM models using the AutoResearch pattern.

## Environment

### Requirements
- Python 3.10+
- uv package manager
- NVIDIA GPU (8GB+ recommended)
- Ollama (optional, for local models)

### File Structure
```
./autoresearch/
├── prepare.py        # Fixed - DO NOT modify
├── train.py          # Training code (agents modify this)
├── program.md        # Agent instructions
├── pyproject.toml    # Dependencies
├── data/             # Training data
├── logs/             # Experiment history
└── checkpoints/      # Saved models
```

## Agent Workflow

### 1. Setup
```bash
cd ./autoresearch
uv sync
uv run prepare.py
```

### 2. Context Reading
- Read `program.md` for current objectives
- Review last experiment logs
- Check current metrics

### 3. Research Cycle
```
WHILE time_available:
    1. Analyze current model state
    2. Identify potential improvement area
    3. Make ONE change to train.py
    4. Run training (5 minutes max)
    5. Evaluate result (val_bpb)
    6. Compare with previous best
    7. IF improved: keep change
    8. ELSE: discard change
    9. Document experiment
    10. Repeat
```

## Research Areas

| Area | Variables |
|------|-----------|
| Architecture | DEPTH, HEAD_SIZE, WINDOW_PATTERN |
| Hyperparameters | LR, WEIGHT_DECAY, CLIPPING |
| Optimizer | Muon, AdamW, SGD |
| Data | VOCAB_SIZE, MAX_SEQ_LEN |
| Batch | DEVICE_BATCH_SIZE, GRAD_ACCUM_STEPS |

## Metrics Tracked

- **val_bpb**: Validation bits per byte (primary)
- Training loss
- GPU utilization
- Training speed (tokens/sec)

## Restrictions

1. **Max time per experiment**: 5 minutes (wall clock)
2. **Single file to modify**: train.py only
3. **Fixed metric**: val_bpb (minimize)
4. **No external changes**: Don't modify prepare.py or pyproject.toml

---

*AutoEvolve OS Agent Configuration*
