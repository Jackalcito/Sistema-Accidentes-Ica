# ============================================================
# DIAGRAMA DEL SISTEMA DE ANÁLISIS DE ACCIDENTES EN ICA
# Curso: Análisis y Diseño de Sistemas - UNICA 2026
# Equipo: Jack Ccencho, Adrian Oviedo, Avidaish Luna, Jhanker Chaupin
# ============================================================

# install.packages("DiagrammeR")
library(DiagrammeR)

grViz("
digraph sistema_accidentes {

  graph [layout = dot,
         rankdir = TB,
         bgcolor = white,
         fontname = Arial,
         label = 'DIAGRAMA DEL SISTEMA - ANÁLISIS DE ACCIDENTES DE TRÁNSITO EN ICA',
         labelloc = t,
         labeljust = c,
         fontsize = 16]

  node [fontname = Arial, fontsize = 11, style = filled, shape = box]

  # FUENTES DE DATOS
  MTC [label = 'MTC\\n(2015 - 2024)\\nAccidentes por depto.',
       fillcolor = '#AED6F1', fontcolor = '#1A5276', shape = cylinder]

  ONSV [label = 'ONSV / PNP\\n(2021 - 2025)\\nPersonas en siniestros',
        fillcolor = '#AED6F1', fontcolor = '#1A5276', shape = cylinder]

  # BASE DE DATOS
  BD [label = 'BASE DE DATOS\\n─────────────────\\nACCIDENTE\\nUBICACION\\nCAUSA\\nVEHICULO_INVOLUCRADO\\nVICTIMA',
      fillcolor = '#D2B4DE', fontcolor = '#4A235A', shape = box]

  # ANÁLISIS EN R
  FILTRO [label = 'Filtrado de datos\\nfiltrar por DEPARTAMENTO = ICA\\ndplyr',
          fillcolor = '#A9DFBF', fontcolor = '#1E8449']

  ESTADISTICA [label = 'Análisis Estadístico\\nMedia · Mediana · Desv. Estándar\\nFrecuencias por categoría',
               fillcolor = '#A9DFBF', fontcolor = '#1E8449']

  GRAFICOS [label = 'Generación de Gráficos\\nTendencia histórica\\nTipos de siniestro\\nVehículos · Causas\\nggplot2',
            fillcolor = '#A9DFBF', fontcolor = '#1E8449']

  # APP SHINY
  SHINY [label = 'App R Shiny (app.R)\\n─────────────────\\nTarjetas de resumen\\n5 pestañas interactivas\\nVisualización web',
         fillcolor = '#FAD7A0', fontcolor = '#784212', shape = box]

  # SALIDA
  DECISION [label = 'Toma de Decisiones\\nAutoridades de Seguridad Vial\\nMunicipalidad · PNP · MTC',
            fillcolor = '#A9CCE3', fontcolor = '#1A5276', shape = oval]

  # CONEXIONES
  MTC   -> BD        [label = 'datos reales', color = '#2980B9', fontsize = 9]
  ONSV  -> BD        [label = 'datos reales', color = '#2980B9', fontsize = 9]
  BD    -> FILTRO    [label = 'carga con readxl', color = '#8E44AD', fontsize = 9]
  FILTRO -> ESTADISTICA [color = '#27AE60']
  ESTADISTICA -> GRAFICOS [color = '#27AE60']
  GRAFICOS -> SHINY  [label = 'visualización', color = '#E67E22', fontsize = 9]
  SHINY -> DECISION  [label = 'reportes interactivos', color = '#2471A3', fontsize = 9]

  # AGRUPACIONES
  subgraph cluster_datos {
    label = 'Fuentes de Datos Oficiales'
    fontsize = 12
    fontcolor = '#1A5276'
    style = dashed
    color = '#2980B9'
    MTC; ONSV
  }

  subgraph cluster_r {
    label = 'Análisis en R'
    fontsize = 12
    fontcolor = '#1E8449'
    style = dashed
    color = '#27AE60'
    FILTRO; ESTADISTICA; GRAFICOS
  }
}
")
