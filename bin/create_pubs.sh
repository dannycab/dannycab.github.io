#!/bin/bash

# Set output file
TEMPLATE="../assets/templates/yaml-metadata.template"
INFILE="../assets/templates/pubs-template.md"
OUTFILE="../content/pubs.md"

# Run pandoc
pandoc -t markdown_strict --citeproc -s --template="$TEMPLATE" -i "$INFILE" -o "$OUTFILE"

# Get today's date in YYYY-MM-DD format
TODAY=$(date +%F)

# Create new front matter
cat <<EOF > frontmatter.tmp
---
title: "publications"
date: $TODAY
hidemeta: true
---
EOF

# Remove existing YAML front matter from pubs.md
gawk 'BEGIN{inblock=0} 
     /^---/ {if(inblock==0){inblock=1; next} else {inblock=0; next}} 
     inblock==0 {print}' "$OUTFILE" > body.tmp

gawk '
BEGIN {
    RS = "";  # paragraph mode
    FS = "\n";
}
{
    # Try to find a year (with optional letter, e.g., 2024a)
    if (match($0, /\(([12][0-9]{3})[a-z]?\)/, arr)) {
        year = arr[1];
    } else if (match($0, /\. ([12][0-9]{3})[a-z]?\./, arr)) {
        year = arr[1];
    } else if (match($0, /## ([12][0-9]{3})[a-z]?/, arr)) {
        year = arr[1];
    } else {
        year = "Unknown";
    }
    refs[year] = refs[year] $0 "\n\n";
    years[year] = 1;
}
END {
    # Print years in descending order
    n = asorti(years, yarr);
    for (i = n; i >= 1; i--) {
        y = yarr[i];
        if (y != "Unknown") {
            print "## " y "\n";
            printf "%s", refs[y];
        }
    }
    # Optionally print unknown year refs
    if ("Unknown" in refs) {
        print "## Unknown\n" refs["Unknown"];
    }
}
' body.tmp > body_grouped.tmp

# Combine new front matter and grouped body
cat frontmatter.tmp body_grouped.tmp > "$OUTFILE"

# Clean up
rm frontmatter.tmp body.tmp body_grouped.tmp