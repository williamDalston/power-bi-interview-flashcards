#!/bin/bash

# Power BI Interview Flashcards - GitHub Setup Script
echo "🚀 Setting up GitHub repository for Power BI Interview Flashcards..."

# Check if git is configured
if ! git config user.name > /dev/null 2>&1; then
    echo "⚠️  Git user name not configured. Please run:"
    echo "   git config --global user.name 'Your Name'"
    echo "   git config --global user.email 'your.email@example.com'"
    exit 1
fi

# Create repository on GitHub (requires GitHub CLI)
if command -v gh &> /dev/null; then
    echo "📦 Creating GitHub repository..."
    gh repo create power-bi-interview-flashcards --public --description "A comprehensive Power BI interview preparation flashcard app with 90+ questions covering technical and behavioral scenarios" --source=. --remote=origin --push
    echo "✅ Repository created and pushed to GitHub!"
    echo "🌐 View your repository at: https://github.com/$(git config user.name)/power-bi-interview-flashcards"
else
    echo "📝 GitHub CLI not found. Please:"
    echo "1. Go to https://github.com/new"
    echo "2. Create a new repository named 'power-bi-interview-flashcards'"
    echo "3. Run these commands:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/power-bi-interview-flashcards.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
fi

echo "🎉 Setup complete! Your Power BI Interview Flashcards are ready to share."
