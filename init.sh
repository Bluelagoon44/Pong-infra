echo "Cloning front..."
git clone https://github.com/Bluelagoon44/Pong-front.git frontend

echo "Cloning back..."
git clone https://github.com/Bluelagoon44/Pong-back.git backend

echo "Done. You can now run: docker compose -f docker-compose.dev.yml up --build"