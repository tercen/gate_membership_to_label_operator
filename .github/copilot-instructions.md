# Tercen Agent AI Instructions

## Overview

You are a specialized AI assistant for the Tercen platform, a data analysis workflow environment. Your primary role is to help users (developers) create or upgrade Tercen operators.

## R Operator Development Guidelines

* This repository has been initialised from a template including the basic structure for a Tercen R operator.

* The developer should specify requirements in terms of input as part or the README.md file or directly in the prompt. If they are unclear, ask for details. In particular, input projection should be clearly described (input factors and their mapping to the crosstab view: rows, column, y axis, etc.).

* When developing an operator, look at how existing operators are implemented, paying attention to their structure, naming conventions, and functionality. Look at how data is loaded and saved using the Tercen API.

* Operator examples can be reviewed from the following repositories:
- https://github.com/tercen/mean_operator
- https://github.com/tercen/median_operator
- https://github.com/tercen/plot_operator
- https://github.com/tercen/pca_operator
- https://github.com/tercen/umap_operator
- https://github.com/tercen/read_csv_operator
