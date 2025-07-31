# 🏓 Pong-infra

Ce dépôt permet de centraliser le lancement de l'application **Pong**, composée de :

- 🎮 Frontend : React + Vite  
- 🧠 Backend : Express + Prisma  
- 🗄️ Base de données : MySQL  
- 🔁 Environnements : développement et production  

---

## 📦 Dépôts liés

Ce projet s'appuie sur deux autres dépôts GitHub :

- [Pong-frontend](https://github.com/Bluelagoon44/Pong-front.git) — Application cliente (Vite)  
- [Pong-backend](https://github.com/Bluelagoon44/Pong-back.git) — API Node.js + Prisma  

---

## 📁 Structure du projet

```
pong-infra/
├── backend/                   # Cloné automatiquement
├── frontend/                  # Cloné automatiquement
├── db/                        # À créer manuellement (fichier .env DB)
├── docker-compose.yaml        # Configuration production
├── docker-compose.dev.yml     # Configuration développement
├── init.sh                    # Script d'installation
└── README.md
```

---

## ⚙️ Installation & lancement

### 1. Cloner ce dépôt

```bash
git clone https://github.com/Bluelagoon44/Pong-infra.git
cd Pong-infra
```

### 2. Lancer le script d'initialisation

Il clone automatiquement les dépôts du frontend et du backend :

```bash
./init.sh
```

> ℹ️ Si besoin : `chmod +x init.sh` pour le rendre exécutable

---

## 🔐 Configuration des variables d’environnement

Avant de lancer un environnement, assure-toi d’avoir créé les fichiers `.env` suivants :

| Dossier        | Fichier attendu     | Contenu requis                                           |
|----------------|---------------------|-----------------------------------------------------------|
| `db/`          | `.env`              | `MYSQL_ROOT_PASSWORD`, `MYSQL_DATABASE`, etc.            |
| `frontend/`    | `.env`              | `VITE_API_URL=http://localhost:4000/api`                  |
| `backend/`     | `.env`              | `DATABASE_URL=mysql://...`, `JWT_SECRET`, etc.           |

---

## 🧪 Lancer en développement

```bash
docker compose -f docker-compose.dev.yml up --build
```

- 🔄 Hot reload activé  
- 🔗 Bind mounts utilisés  
- 🌐 Frontend : `http://localhost:3000`  
- ⚙️ Backend : `http://localhost:4000`

---

## 🚀 Lancer en production

```bash
docker compose -f docker-compose.yaml up --build
```

- Build optimisé  
- Frontend servi via **NGINX**  
- Variables d’environnement injectées dans le build

---

## 🧹 Nettoyer l’environnement

```bash
docker compose -f docker-compose.dev.yml down -v
```

- Supprime les conteneurs et les volumes

---

## 🛠️ Prérequis

- [Docker](https://www.docker.com/)  
- [Docker Compose](https://docs.docker.com/compose/)  
- [WSL2](https://learn.microsoft.com/fr-fr/windows/wsl/install) ou une distribution Linux  
- `bash` (pour exécuter `init.sh`)

---

## 🛡️ Sécurité

- Les fichiers `.env` **ne doivent jamais être commités**  
- Ne publiez pas les secrets (identifiants DB, tokens) dans les dépôts  
- Limitez les privilèges des conteneurs (utilisateurs non-root, `cap_drop`, etc.)

---

## 📄 Licence

MIT — © Ri7
