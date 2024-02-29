#!/bin/bash
echo "Downloading..."
cd ~/Downloads
curl -LO https://github.com/matthewyang204/Space-Invaders/releases/download/2024-Edition/Install.Space.Invaders.2024.Edition.2.0.dmg
echo "Installing with sudo, enter password if asked..."
hdiutil attach ~/Downloads/Install.Space.Invaders.2024.Edition.2.0.dmg
sudo cp -R /Volumes/Space\ Invaders\ 2024\ Edition/Space\ Invaders.app /Applications/Space\ Invaders.app
echo "Installation complete, cleaning up..."
hdiutil detach /Volumes/Space\ Invaders\ 2024\ Edition
sudo rm -R ~/Downloads/Install.Space.Invaders.2024.Edition.2.0.dmg
echo "done"