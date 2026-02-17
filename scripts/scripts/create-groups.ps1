# ============================================
# Script : Créer les groupes dans Entra ID
# Auteur : Jacques Masasi — ERLANG Inc.
# Date   : Février 2026
# ============================================

# Étape 1 : Se connecter à Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All"

# Étape 2 : Créer le groupe IT-Admins
New-MgGroup `
    -DisplayName "IT-Admins" `
    -Description "Groupe des administrateurs IT de ERLANG Inc." `
    -SecurityEnabled `
    -MailEnabled:$false `
    -MailNickname "IT-Admins"

Write-Host "Groupe IT-Admins créé !" -ForegroundColor Green

# Étape 3 : Créer le groupe IT-Stagiaires
New-MgGroup `
    -DisplayName "IT-Stagiaires" `
    -Description "Groupe des stagiaires IT de ERLANG Inc." `
    -SecurityEnabled `
    -MailEnabled:$false `
    -MailNickname "IT-Stagiaires"

Write-Host "Groupe IT-Stagiaires créé !" -ForegroundColor Green
