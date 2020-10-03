
if [ -f "/workspace" ]; then
  echo "Clean up /workspace"
  sudo rm -rf /workspace
fi

echo "==================="
echo "Resetting ParlAI..."
echo "==================="
cd /home/developer/projects/ParlAI && sudo python3 setup.py develop
echo "================="
echo "ParlAI reset done"
echo "================="
