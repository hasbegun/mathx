echo "Sync ParlAI..."
cd ParlAI && \
  git fetch upstream && \
  git checkout master && \
  git merge upstream/master && \
  git push


