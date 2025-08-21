# Gate membership to label

##### Description

This operator takes as input a table of gate memberships per event and
outputs a label based on gate names.

##### Usage

Input|.
---|---
`y-axis`        | Gate membership, 1 or missing value
`row`           | Unique event ID
`column`        | Gate name to be used as label

Output|.
---|---
`gate_label`        | Concatenated gate names based on event membership

