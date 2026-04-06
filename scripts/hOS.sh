#!/bin/bash
# AutoEvolve OS - Research CLI Integration

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Configuración
RESEARCH_DIR="C:\Z7_Core\2_Proyectos\autoresearch"
WIKI_DIR="./WIKI"

# Estado del sistema
evolve-status() {
    echo -e "${BLUE}=== AUTO EVOLVE OS ===${NC}"
    echo "Estado: OPERATIVO"
    echo "Versión: 1.0 (Open Beta)"
    echo "Fecha: $(date '+%Y-%m-%d %H:%M')"
    echo ""
    echo "Componentes:"
    echo "  🟢 Research Membrane"
    echo "  🟢 Multi-Model Filter"
    echo "  🟡 AutoResearch (preparado)"
}

# Iniciar investigación
evolve-research() {
    if [ -z "$1" ]; then
        echo -e "${RED}Error: Especifica el objetivo${NC}"
        return 1
    fi
    
    echo -e "${YELLOW}=== INVESTIGACIÓN AUTÓNOMA ===${NC}"
    echo "Objetivo: $1"
    
    if [ ! -d "$RESEARCH_DIR" ]; then
        echo "Instalando AutoResearch..."
        mkdir -p "C:\Z7_Core\2_Proyectos"
        cd "C:\Z7_Core\2_Proyectos"
        git clone https://github.com/karpathy/autoresearch.git
    fi
    
    cd "$RESEARCH_DIR"
    uv run train.py
}

# Buscar
evolve-search() {
    if [ -z "$1" ]; then
        echo -e "${RED}Error: Especifica término${NC}"
        return 1
    fi
    
    find "$WIKI_DIR" -name "*.md" -exec grep -l "$1" {} \; 2>/dev/null
}

# Ayuda
evolve-help() {
    echo -e "${BLUE}Comandos Disponibles${NC}"
    echo "  evolve status    - Ver estado"
    evolve " research <obj> - Investigar"
    echo "  evolve search   - Buscar"
    echo "  evolve help     - Ayuda"
}

# Main
case "$1" in
    status) evolve-status ;;
    research) shift; evolve-research "$@" ;;
    search) shift; evolve-search "$@" ;;
    help|--help) evolve-help ;;
    *) evolve-help ;;
esac
