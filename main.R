suppressPackageStartupMessages({
  library(tercen)
  library(dplyr, warn.conflicts = FALSE)
})

ctx = tercenCtx()

# Get gate membership data
# .y contains gate membership (1 or missing/NA)
# .ri corresponds to unique event IDs (rows)
# .ci corresponds to gate names (columns)

# Get column names (gate names)
col_names <- ctx$cnames

# Process the data to create gate labels
gate_labels <- ctx %>%
  select(.y, .ci, .ri) %>%
  # Filter for membership = 1 (gate positive)
  filter(!is.na(.y) & .y == 1) %>%
  # Add gate names
  mutate(gate_name = col_names[.ci + 1]) %>%
  # Group by event (row) and concatenate gate names
  group_by(.ri) %>%
  summarise(
    gate_label = paste(gate_name, collapse = "_"),
    .groups = "drop"
  ) %>%
  # Add column index (all results go to same column)
  mutate(.ci = 0L) %>%
  select(.ri, .ci, gate_label)

# Save results
gate_labels %>%
  ctx$addNamespace() %>%
  ctx$save()
