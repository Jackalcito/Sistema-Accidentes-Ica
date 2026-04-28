# Sistema de Análisis de Accidentes de Tránsito en la Provincia de Ica

### Análisis Estadístico de Siniestros Viales mediante R

**Universidad Nacional "San Luis Gonzaga" — Facultad de Ciencias**  
**Curso: Análisis y Diseño de Sistemas | Docente: Mag. Elmer Leonidas Landeo Alfaro**  
**Ica, Perú | 2026**

> *"La información estadística como herramienta para la prevención vial y la toma de decisiones"*

---

## 1. DESCRIPCIÓN DEL PROYECTO

El presente proyecto surge como respuesta al incremento sostenido de siniestros viales en la provincia de Ica, región que registró **1,172 accidentes en 2015** y alcanzó **2,281 en 2024**, representando un incremento del 94.6% en el período, según datos oficiales del Ministerio de Transportes y Comunicaciones (MTC). Este repositorio integra datos reales del **MTC** y del **Observatorio Nacional de Seguridad Vial (ONSV / PNP)** para identificar patrones de siniestralidad, causas frecuentes y vehículos involucrados, con el propósito de apoyar la toma de decisiones de las autoridades de seguridad vial mediante un sistema de análisis estadístico desarrollado en **R**.

---

## 2. BASE DE DATOS DEL SISTEMA

Base de datos integrada en el sistema, con datos reales de siniestros viales en Ica:

### DATOS HISTÓRICOS MTC (2015 - 2024)

| Año | Accidentes en Ica |
|-----|-------------------|
| 2015 | 1,172 |
| 2016 | 1,284 |
| 2017 | 1,398 |
| 2018 | 1,521 |
| 2019 | 1,634 |
| 2020 | 1,003 *(reducción por restricciones COVID-19)* |
| 2021 | 1,456 |
| 2022 | 1,789 |
| 2023 | 2,102 |
| 2024 | **2,281** |

### TIPOS DE SINIESTROS EN ICA (2021 - 2025)

| Tipo de Siniestro | N° de Casos | Porcentaje |
|-------------------|-------------|------------|
| Choque | 683 | 54.8% |
| Despiste | 215 | 17.3% |
| Atropello | 172 | 13.8% |
| Atropello con Fuga | 70 | 5.6% |
| Volcadura | 53 | 4.3% |
| Otros | 52 | 4.2% |
| **TOTAL** | **1,245** | **100%** |

### VEHÍCULOS MÁS INVOLUCRADOS

| Vehículo | N° de Casos |
|----------|-------------|
| Automóvil | 392 |
| Motocicleta | 202 |
| Ómnibus | 96 |
| Camión | 88 |
| Camioneta Pick Up | 87 |

---

## 3. ANÁLISIS DEL SISTEMA CON R

El script `analisis_accidentes_ica_REAL.R` permite analizar estadísticamente los datos reales mediante las siguientes funcionalidades:

1. **Tendencia histórica**: Gráfico de líneas con la evolución de accidentes en Ica 2015-2024.
2. **Análisis por tipo de siniestro**: Gráfico de barras con los tipos de accidentes más frecuentes.
3. **Vehículos involucrados**: Ranking de vehículos con mayor participación en siniestros.
4. **Causas del siniestro**: Distribución de causas identificadas por la PNP.
5. **Estadísticas descriptivas**: Media, mínimo, máximo y conclusiones automáticas.

---

## 4. TECNOLOGÍAS Y LIBRERÍAS

| Componente | Tecnología |
|------------|------------|
| Lenguaje | `R 4.5.3` |
| Análisis de datos | `dplyr` |
| Visualización | `ggplot2` |
| Lectura de Excel | `readxl` |
| Transformación | `tidyr` |

---

## 5. ESTRUCTURA DEL REPOSITORIO

```
Sistema-Accidentes-Ica/
├── analisis_accidentes_ica_REAL.R          # Script principal de análisis en R
├── Informe_Accidentes_Ica.docx             # Informe académico del proyecto
├── 6966856-accidentes-de-transito-...xlsx  # Datos MTC 2015-2024
├── BBDD ONSV - PERSONAS 2021-2025.xlsx     # Datos ONSV/PNP 2021-2025
└── README.md                               # Documentación del proyecto
```

---

## 6. EQUIPO DE PROYECTO

| Integrante | Rol |
|------------|-----|
| Jack Ccencho | Desarrollo del Sistema en R y Análisis Estadístico |
| Adrian Oviedo | Recolección y Validación de Datos Oficiales |
| Jhanker Chaupin | Diseño de Base de Datos y Modelado del Sistema |
| Avidaish Luna | Documentación y Redacción del Informe |

**Fuentes de datos:** MTC - Dirección General de Autorizaciones en Transportes | ONSV / PNP  
**Período académico:** 2026-I

---

## 7. INSTALACIÓN Y USO

```r
# 1. Instalar dependencias
install.packages(c("readxl", "dplyr", "ggplot2", "tidyr"))

# 2. Establecer directorio de trabajo
setwd("ruta/a/tu/carpeta")

# 3. Ejecutar el análisis
source("analisis_accidentes_ica_REAL.R")
```

---

## 8. ESTRUCTURA DE LA BASE DE DATOS

```
ACCIDENTE ──────┬──── UBICACION
                ├──── CAUSA
                ├──── VEHICULO_INVOLUCRADO
                └──── VICTIMA
```

---

*Fuentes oficiales: [MTC - Plataforma de Datos Abiertos](https://www.datosabiertos.gob.pe) | [ONSV - Observatorio Nacional de Seguridad Vial](https://www.onsv.gob.pe)*  
*Curso: Análisis y Diseño de Sistemas | Docente: Mag. Elmer Leonidas Landeo Alfaro | UNICA 2026*
