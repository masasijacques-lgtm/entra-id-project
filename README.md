# 🔐 Gestion des Identités avec Microsoft Entra ID
### Projet réalisé par Jacques Masasi — ERLANG Inc.

![Microsoft Entra ID](https://img.shields.io/badge/Microsoft%20Entra%20ID-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)

---

## 📋 Description du projet

Ce projet documente la mise en place d'une gestion des identités et des accès (IAM) avec **Microsoft Entra ID** (anciennement Azure Active Directory) pour une organisation fictive appelée **ERLANG Inc.**

Il couvre les concepts fondamentaux qu'un administrateur IT doit maîtriser :
- La création et gestion des utilisateurs
- La création et gestion des groupes de sécurité
- L'assignation des rôles et permissions
- La lecture des journaux d'audit
- L'application du principe du moindre privilège

---

## 🎯 Objectifs pédagogiques

| Concept | Description |
|---|---|
| **Gestion des utilisateurs** | Créer, configurer et désactiver des comptes utilisateurs |
| **Gestion des groupes** | Organiser les utilisateurs en groupes de sécurité |
| **Rôles & Permissions** | Comprendre et assigner des rôles Entra ID |
| **Journaux d'audit** | Surveiller les activités dans le tenant |
| **Moindre privilège** | Appliquer le principe de sécurité fondamental |

---

## 🏗️ Structure du projet

```
entra-id-project/
│
├── README.md                          # Documentation principale
│
└── scripts/
    ├── create-user.ps1                # Script PowerShell création utilisateur
    ├── create-groups.ps1              # Script PowerShell création groupes
    └── get-audit-logs.ps1             # Script PowerShell journaux d'audit
```

---

## 🚀 Étapes réalisées

### ✅ Étape 1 — Accès au portail Microsoft Entra ID
- Connexion au Centre d'administration Microsoft Entra
- Navigation dans l'interface d'administration
- Identification des sections principales : Users, Groups, Roles & Admins

### ✅ Étape 2 — Création d'un utilisateur de test
- Création de l'utilisateur **Test User 01**
- Configuration des propriétés : nom, département (IT), titre (Stagiaire)
- Type d'utilisateur : Member

### ✅ Étape 3 — Création des groupes de sécurité
- Création du groupe **IT-Admins** (administrateurs IT)
- Création du groupe **IT-Stagiaires** (stagiaires IT)
- Assignation de Test User 01 aux deux groupes
- Type de groupe : Security | Membership type : Assigned

### ✅ Étape 4 — Exploration des rôles et permissions
- Navigation dans la section Roles & Admins
- Identification du rôle **User Administrator**
- Découverte de la limitation de licence (Entra ID P2 requis pour certaines assignations)
- Application du principe du **moindre privilège**

### ✅ Étape 5 — Journaux d'audit
- Navigation dans les journaux d'audit
- Découverte des permissions requises (Global Administrator ou Reports Reader)
- Compréhension de l'importance des logs pour la sécurité IT

---

## 💡 Concepts clés appris

### 🔑 Le principe du moindre privilège
> Chaque utilisateur ne doit avoir que les permissions strictement nécessaires à son travail — ni plus, ni moins.

En pratique dans ce projet :
- Un **Stagiaire** est membre du groupe IT-Stagiaires → accès limité
- Un **Admin** est membre du groupe IT-Admins → accès étendu
- Les **journaux d'audit** nécessitent un rôle spécifique → pas accessible à tous

### 👥 Types d'utilisateurs dans Entra ID

| Type | Description |
|---|---|
| **Member** | Utilisateur interne de l'organisation |
| **Guest** | Utilisateur externe invité (ex: partenaire) |

### 🔒 Types de groupes dans Entra ID

| Type | Description |
|---|---|
| **Security** | Gestion des accès et permissions |
| **Microsoft 365** | Collaboration (Teams, SharePoint, etc.) |

### 📋 Rôles importants dans Entra ID

| Rôle | Permissions |
|---|---|
| **Global Administrator** | Accès complet à tout |
| **User Administrator** | Gérer les utilisateurs et groupes |
| **Reports Reader** | Lire les journaux et rapports |
| **Security Reader** | Lire les configurations de sécurité |

---

## ⚠️ Limitations rencontrées

### Licence Entra ID P2 requise
Certaines fonctionnalités nécessitent une licence **Microsoft Entra ID P2** :
- Assignation de rôles privilégiés aux groupes
- Privileged Identity Management (PIM)
- Accès conditionnel avancé

### Permissions insuffisantes pour les logs
L'accès aux journaux d'audit nécessite l'un de ces rôles :
- Global Administrator
- Reports Reader
- Security Reader
- Audit Log Reader

---

## 📝 Scripts PowerShell

### Prérequis
```powershell
# Installer le module Microsoft Graph
Install-Module Microsoft.Graph -Scope CurrentUser

# Se connecter à Entra ID
Connect-MgGraph -Scopes "User.ReadWrite.All", "Group.ReadWrite.All"
```

### Créer un utilisateur
```powershell
# Voir le fichier scripts/create-user.ps1
```

### Créer un groupe
```powershell
# Voir le fichier scripts/create-groups.ps1
```

---

## 🔗 Ressources utiles

- [Documentation officielle Microsoft Entra ID](https://learn.microsoft.com/fr-fr/entra/identity/)
- [Centre d'administration Microsoft Entra](https://entra.microsoft.com)
- [Microsoft Graph PowerShell](https://learn.microsoft.com/fr-fr/powershell/microsoftgraph/)
- [Rôles intégrés Entra ID](https://learn.microsoft.com/fr-fr/entra/identity/role-based-access-control/permissions-reference)

---

## 👤 Auteur

**Jacques Masasi**
Administrateur IT — ERLANG Inc.
*Projet réalisé dans le cadre de l'apprentissage de Microsoft Entra ID*

---

*📅 Projet réalisé en Février 2026*
