#!/bin/bash
cd "$(dirname "$0")"

# English core
zip -j your-ai-has-amnesia-en.zip en/index.html en/tutorial-magnetosphere.html LICENSE
echo "EN core: $(du -h your-ai-has-amnesia-en.zip | cut -f1)"

# English full
zip -r your-ai-has-amnesia-en-complete.zip en/ LICENSE
echo "EN full: $(du -h your-ai-has-amnesia-en-complete.zip | cut -f1)"

# Spanish core (when available)
if [ -f es/index.html ]; then
  zip -j tu-ia-tiene-amnesia-es.zip es/index.html LICENSE
  echo "ES core: $(du -h tu-ia-tiene-amnesia-es.zip | cut -f1)"
fi
