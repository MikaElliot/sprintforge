<div align="center">

<img src="https://img.shields.io/badge/status-beta-6C47FF?style=flat-square&labelColor=0D0F1A" alt="Status" />
<img src="https://img.shields.io/badge/version-1.0.0-6C47FF?style=flat-square&labelColor=0D0F1A" alt="Version" />
<img src="https://img.shields.io/badge/license-MIT-6C47FF?style=flat-square&labelColor=0D0F1A" alt="License" />
<img src="https://img.shields.io/badge/PRs-welcome-F59E0B?style=flat-square&labelColor=0D0F1A" alt="PRs welcome" />

<br />
<br />

```
███████╗██████╗ ██████╗ ██╗███╗   ██╗████████╗███████╗ ██████╗ ██████╗  ██████╗ ███████╗
██╔════╝██╔══██╗██╔══██╗██║████╗  ██║╚══██╔══╝██╔════╝██╔═══██╗██╔══██╗██╔════╝ ██╔════╝
███████╗██████╔╝██████╔╝██║██╔██╗ ██║   ██║   █████╗  ██║   ██║██████╔╝██║  ███╗█████╗  
╚════██║██╔═══╝ ██╔══██╗██║██║╚██╗██║   ██║   ██╔══╝  ██║   ██║██╔══██╗██║   ██║██╔══╝  
███████║██║     ██║  ██║██║██║ ╚████║   ██║   ██║     ╚██████╔╝██║  ██║╚██████╔╝███████╗
╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝
```

### Build fullstack projects · phase by phase · sprint by sprint

**EN** · [FR](#french)

</div>

---

## What is Sprintforge?

Sprintforge is a **fullstack project management tool** built specifically for web developers. It structures any project into clear phases — Conception, Design, Frontend, Backend, DevOps — and breaks each phase into focused, actionable sprints.

It doesn't touch your code. It manages the **architecture, features, and roadmap** that drive it — with an AI assistant built in to help plan, review, and move faster.

> Think Linear, but opinionated for web projects — with AI context awareness.

---

## ✦ Features

| | Feature | Description |
|---|---|---|
| 🗂 | **Phase-aware structure** | Every project follows a lifecycle: Conception → Design → Frontend → Backend → DevOps |
| ⚡ | **Sprint management** | Break any phase into sprints with scope, status, and acceptance criteria |
| 🤖 | **AI assistant** | Ask the AI to draft sprint plans, review architecture, write feature specs |
| 📋 | **Feature registry** | Track frontend & backend features independently across sprints |
| 🚀 | **Deploy readiness** | DevOps phase with CI/CD and deployment checklists |
| 👥 | **Team modes** | Standard · Dev · Admin — upgrade when your project grows |

---

## 🛠 Tech Stack

<div align="center">

![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![Vue.js](https://img.shields.io/badge/Vue.js-42b883?style=for-the-badge&logo=vue.js&logoColor=white)
![Inertia.js](https://img.shields.io/badge/Inertia.js-7C3AED?style=for-the-badge&logo=inertia&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

</div>

---

## 🚀 Getting Started

### Prerequisites

- PHP `>= 8.2`
- Composer
- Node.js `>= 20`
- MySQL or PostgreSQL

### Installation

```bash
# 1. Clone the repo
git clone https://github.com/your-username/sprintforge.git
cd sprintforge

# 2. Install PHP dependencies
composer install

# 3. Install JS dependencies
npm install

# 4. Configure environment
cp .env.example .env
php artisan key:generate

# 5. Set up your database in .env, then run migrations
php artisan migrate

# 6. Start the dev servers
composer run dev
```

App runs at `http://localhost:8000`

---

## 📁 Project Structure

```
sprintforge/
├── app/
│   ├── Http/Controllers/     # Laravel controllers
│   ├── Models/               # Eloquent models
│   └── Services/             # Business logic
├── resources/
│   └── js/
│       ├── pages/            # Inertia pages
│       │   └── home/
│       │       ├── Home.vue
│       │       └── sections/ # Hero, Features, AI, Pricing, CTA
│       ├── components/       # Reusable Vue components
│       ├── layouts/          # App layouts
│       └── stores/           # Pinia stores
├── routes/
│   ├── web.php
│   └── api.php
└── database/
    └── migrations/
```

---

## 🗺 Roadmap

- [x] Landing page & brand identity
- [x] App header with mode indicator (Standard / Dev / Admin)
- [ ] Authentication (Laravel Sanctum)
- [ ] Project creation & management
- [ ] Phase & sprint CRUD
- [ ] Feature registry
- [ ] AI assistant integration
- [ ] Team & role management
- [ ] Deploy checklist (DevOps phase)
- [ ] Mobile-responsive dashboard

---

## 🤝 Contributing

Contributions are welcome. Please open an issue first to discuss what you'd like to change.

```bash
git checkout -b feature/your-feature
git commit -m "feat: your feature description"
git push origin feature/your-feature
# then open a Pull Request → dev
```

---

## 👤 Author

**Mika Elliot Ramiandrarivo**
Fullstack Developer & DevOps · Madagascar

[![GitHub](https://img.shields.io/badge/GitHub-@your--username-181717?style=flat-square&logo=github)](https://github.com/your-username)
[![Portfolio](https://img.shields.io/badge/Portfolio-mika.dev-6C47FF?style=flat-square)](https://your-portfolio.dev)

---

## 📄 License

MIT © 2026 Mika Elliot Ramiandrarivo

---

<div id="french"></div>

---

<div align="center">

**FR** · [EN](#)

</div>

## Qu'est-ce que Sprintforge ?

Sprintforge est un **outil de gestion de projets fullstack** conçu spécifiquement pour les développeurs web. Il structure chaque projet en phases claires — Conception, Design, Frontend, Backend, DevOps — et découpe chaque phase en sprints ciblés et actionnables.

Il ne touche pas à ton code. Il gère l'**architecture, les features et la roadmap** qui le pilotent — avec un assistant IA intégré pour planifier, réviser et avancer plus vite.

> Pense à Linear, mais opinioné pour les projets web — avec une IA consciente du contexte.

---

## ✦ Fonctionnalités

| | Fonctionnalité | Description |
|---|---|---|
| 🗂 | **Structure par phases** | Chaque projet suit un cycle de vie : Conception → Design → Frontend → Backend → DevOps |
| ⚡ | **Gestion des sprints** | Découpe chaque phase en sprints avec scope, statut et critères d'acceptation |
| 🤖 | **Assistant IA** | Demande à l'IA de générer des plans de sprint, réviser l'architecture, rédiger des specs |
| 📋 | **Registre de features** | Suivi des features frontend & backend indépendamment à travers les sprints |
| 🚀 | **Deploy readiness** | Phase DevOps avec checklists CI/CD et déploiement |
| 👥 | **Modes utilisateur** | Standard · Dev · Admin — upgrade quand le projet grandit |

---

## 🚀 Installation

```bash
# 1. Cloner le repo
git clone https://github.com/your-username/sprintforge.git
cd sprintforge

# 2. Dépendances PHP
composer install

# 3. Dépendances JS
npm install

# 4. Configuration
cp .env.example .env
php artisan key:generate

# 5. Base de données (configurer .env d'abord)
php artisan migrate

# 6. Lancer les serveurs
composer run dev
```

---

## 👤 Auteur

**Mika Elliot Ramiandrarivo**
Développeur Fullstack & DevOps · Madagascar

---

## 📄 Licence

MIT © 2026 Mika Elliot Ramiandrarivo