#!/bin/bash

echo "🚀 Enabling GitHub Pages for Power BI Interview Flashcards..."

# Enable GitHub Pages using the GitHub API
curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $(gh auth token)" \
  https://api.github.com/repos/williamDalston/power-bi-interview-flashcards/pages \
  -d '{
    "source": {
      "branch": "main",
      "path": "/"
    }
  }'

echo ""
echo "✅ GitHub Pages should now be enabled!"
echo "🌐 Your app will be available at: https://williamdalston.github.io/power-bi-interview-flashcards/"
echo ""
echo "Note: It may take a few minutes for the page to be available."
