# ============================================
# Script : Créer un utilisateur dans Entra ID
# Auteur : Jacques Masasi — ERLANG Inc.
# Date   : Février 2026
# ============================================

# Étape 1 : Se connecter à Microsoft Graph
Connect-MgGraph -Scopes "User.ReadWrite.All"

# Étape 2 : Définir les paramètres de l'utilisateur
$PasswordProfile = @{
    Password = "TempPass@2026!"
    ForceChangePasswordNextSignIn = $true
}

# Étape 3 : Créer l'utilisateur
New-MgUser `
    -DisplayName "Test User 01" `
    -UserPrincipalName "testuser01@VOTREDOMAINE.onmicrosoft.com" `
    -GivenName "Test" `
    -Surname "User" `
    -JobTitle "Stagiaire" `
    -Department "IT" `
    -AccountEnabled `
    -PasswordProfile $PasswordProfile

Write-Host "Utilisateur créé avec succès !" -ForegroundColor Green
