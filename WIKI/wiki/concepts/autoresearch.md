# 🔬 AutoResearch: Sistema de Investigación Autónoma

> **Origen:** [karpathy/autoresearch](https://github.com/karpathy/autoresearch)
> **Autor:** Andrej Karpathy
> **Fecha de integración:** 2026-04-06

---

## 🤔 ¿Qué es AutoResearch?

**AutoResearch** es un sistema que permite a agentes de IA ejecutar investigación de forma autónoma. El concepto es simple pero poderoso:

> *"Dale a un agente de IA una configuración de entrenamiento de LLM pequeña pero real y déjalo experimentar automáticamente durante la noche. Modifica el código, entrena durante 5 minutos, verifica si el resultado mejoró, guarda o descarta, y repite. Despiertas en la mañana con un registro de experimentos y (ojalá) un mejor modelo."*

---

## 🎯 El Concepto Core

### El Problema Tradicional
- Un investigador humano toca archivos Python manualmente
- Ejecuta experimentos de forma manual
- Revisa resultados y decide qué cambiar
- El proceso es lento y iterativo

### La Solución AutoResearch
- **Un solo archivo modificable:** `train.py` contiene el modelo, optimizador y loop de entrenamiento
- **Tiempo fijo:** Siempre 5 minutos por experimento (independiente del hardware)
- **Métrica única:** `val_bpb` (validation bits per byte) - menor es mejor
- **Autonomía total:** El agente modifica, entrena, evalúa y repite solo

---

## 🏗️ Arquitectura del Sistema

```
┌─────────────────────────────────────────────────────────────┐
│                    AUTO RESEARCH LOOP                        │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   ┌──────────────┐    ┌──────────────┐    ┌──────────────┐ │
│   │   AGENTE     │───►│   train.py   │───►│   EVALUA     │ │
│   │  (Claude/    │    │  (Modifica   │    │  (val_bpb)   │ │
│   │   Codex)     │    │   el código) │    │              │ │
│   └──────────────┘    └──────────────┘    └──────────────┘ │
│         │                                              │     │
│         │              ┌──────────────┐                │     │
│         └────────────►│  MEJORA?     │◄───────────────┘     │
│                        │  Sí → Guarda │                      │
│                        │  No → Descarta│                     │
│                        └──────────────┘                      │
│                              │                               │
│                              ▼                               │
│                        ┌──────────┐                          │
│                        │ REPETIR  │                          │
│                        │ (Bucle)  │                          │
│                        └──────────┘                          │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 Archivos del Sistema

| Archivo | Propósito | Modificable |
|---------|-----------|-------------|
| `prepare.py` | Constantes, preparación de datos, tokenizer | ❌ No |
| `train.py` | Modelo, optimizador, training loop | ✅ Sí |
| `program.md` | Instrucciones para el agente | ✅ Sí |
| `pyproject.toml` | Dependencias | ❌ No |

---

## 🚀 Implementación en HunterOS

### Paso 1: Instalación

```bash
# Instalar uv si no lo tienes
curl -LsSf https://astral.sh/uv/install.sh | sh

# Clonar el repositorio
git clone https://github.com/karpathy/autoresearch.git
cd autoresearch

# Instalar dependencias
uv sync

# Preparar datos (una vez)
uv run prepare.py
```

### Paso 2: Configurar el Agente

Editar `program.md` con las instrucciones específicas:

```markdown
# Programa de Investigación Autónoma

## Objetivo
Optimizar el modelo nanochat para obtener el menor val_bpb posible.

## Restricciones
- Tiempo máximo por experimento: 5 minutos
- Hardware: NVIDIA GPU única
- Métrica: val_bpb (bits per byte, menor es mejor)

## Áreas de Investigación Sugeridas
1. Arquitectura del modelo (attention patterns)
2. Hiperparámetros (learning rate, batch size)
3. Optimizador (Muon, AdamW, etc.)
4. Tamaño de vocabulario
5. Longitud de secuencia

## Protocolo
1. Modificar una variable en train.py
2. Ejecutar entrenamiento (5 min)
3. Comparar val_bpb con anterior
4. Si mejora → guardar cambio
5. Si no mejora → descartar y probar otra cosa
6. Repetir

## Notas
- Documentar cada experimento
- Mantener un log de cambios
- Priorizar cambios con mayor impacto potencial
```

### Paso 3: Ejecutar Investigación Autónoma

```bash
# En el directorio de AutoResearch
# Ejecutar con el agente configurado
uv run train.py
```

---

## 🎛️ Parámetros Configurables

### En `train.py` (Modificables por el agente)

| Parámetro | Default | Descripción |
|-----------|---------|-------------|
| `DEPTH` | 8 | Profundidad del modelo |
| `VOCAB_SIZE` | 8192 | Tamaño del vocabulario |
| `MAX_SEQ_LEN` | 256 | Longitud máxima de secuencia |
| `DEVICE_BATCH_SIZE` | 16 | Batch size por dispositivo |
| `TOTAL_BATCH_SIZE` | 2**17 | Batch size total |
| `LR` | 1e-4 | Learning rate |
| `WINDOW_PATTERN` | "SSSL" | Pattern de atención |

### En `prepare.py` (Fijos)

| Parámetro | Valor | Descripción |
|-----------|-------|-------------|
| `MAX_SEQ_LEN` | 256 | Longitud máxima |
| `EVAL_TOKENS` | 1048576 | Tokens para evaluación |
| `VOCAB_SIZE` | 8192 | Tamaño de vocabulario |

---

## 🔄 Integración con Z7 AI Stack

### Workflow Propuesto

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  OPENCLAW   │───►│ AUTORESEARCH│───►│  WIKIVAUL   │
│  (Gestión)  │    │ (Research)  │    │  (Resultados)│
└─────────────┘    └─────────────┘    └─────────────┘
     │                                        │
     │                                        ▼
     │                              ┌─────────────────┐
     │                              │  Z7-AI-Stack    │
     │                              │  (Mejores LLM)  │
     │                              └─────────────────┘
     ▼
┌─────────────┐
│  AGENTS.md  │
│  (Config)   │
└─────────────┘
```

### Casos de Uso en HunterOS

1. **Optimización de Modelos Locales**
   - Experimentar con arquitecturas para Ollama
   - Encontrar mejores hiperparámetros para hardware específico

2. **Investigación de Nicho**
   - Entrenar modelos especializados para dominios específicos
   - Iterar automáticamente hasta alcanzar métricas objetivo

3. **Testing de Arquitecturas**
   - Probar nuevas ideas de arquitecturas de forma autónoma
   - Documentar automáticamente los resultados

---

## 📊 Métricas y Evaluación

### Métrica Principal: val_bpb
- **validation bits per byte**
- Lower is better
- Independiente del tamaño de vocabulario
- Permite comparar experimentos justos

### Comparación de Resultados
- Guardar siempre el mejor modelo
- Mantener historial de experimentos
- Documentar cambios y resultados

---

## 🔧 Personalización para Hardware Limitado

Si tienes hardware más pequeño (MacBooks, GPUs de consumo):

1. **Dataset:** Usar TinyStories (más simple, menos entropía)
   - https://huggingface.co/datasets/karpathy/tinystories-gpt4-clean

2. **Reducir vocab_size:** 8192 → 4096 → 2048 → 1024 → 256

3. **Reducir MAX_SEQ_LEN:** 256 → 128 → 64

4. **Reducir TOTAL_BATCH_SIZE:** 2**17 → 2**14

5. **Reducir DEPTH:** 8 → 4 → 2

---

## 📝 Registro de Experimentos

Cada experimento debe registrar:
- Timestamp
- Cambio realizado
- Métrica (val_bpb)
- Comparación con anterior
- Decisión (guardar/descartar)

---

## 🔗 Referencias

- **Repositorio Original:** https://github.com/karpathy/autoresearch
- **NanoChat:** https://github.com/karpathy/nanochat
- **Twitter:** @karpathy

---

## 🚀 Siguientes Pasos

- [ ] Instalar AutoResearch en `C:\Z7_Core\2_Proyectos\autoresearch`
- [ ] Configurar primera corrida autónoma
- [ ] Integrar con el sistema de memoria Z7
- [ ] Documentar mejores prácticas

---

*Última actualización: 2026-04-06*
