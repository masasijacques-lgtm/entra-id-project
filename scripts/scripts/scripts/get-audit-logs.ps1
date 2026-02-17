# ============================================
# Script : Consulter les journaux d'audit
# Auteur : Jacques Masasi — ERLANG Inc.
# Date   : Février 2026
# ============================================

# Étape 1 : Se connecter à Microsoft Graph
# Note : Nécessite le rôle Reports Reader ou Global Administrator
Connect-MgGraph -Scopes "AuditLog.Read.All"

# Étape 2 : Récupérer les 10 dernières activités d'audit
Write-Host "Récupération des journaux d'audit..." -ForegroundColor Yellow

$logs = Get-MgAuditLogDirectoryAudit -Top 10

# Étape 3 : Afficher les résultats
foreach ($log in $logs) {
    Write-Host "-----------------------------------"
    Write-Host "Date       : $($log.ActivityDateTime)"
    Write-Host "Action     : $($log.ActivityDisplayName)"
    Write-Host "Effectué par : $($log.InitiatedBy.User.UserPrincipalName)"
    Write-Host "Résultat   : $($log.Result)"
}

Write-Host "-----------------------------------"
Write-Host "Terminé !" -ForegroundColor Green

# ⚠️ LIMITATION : Ce script nécessite une licence Entra ID P2
# ou le rôle Reports Reader assigné au compte.
# Sans ces permissions, une erreur 401 sera retournée.
