# Comptes utilisateurs

## SID
- Chaque compte utilisateur ou groupe (par exemple Administrateur, Utilisateur local, SYSTEM, etc.) possède un __SID__ unique.

- Le __SID__ est utilisé en interne par Windows, plutôt que le nom du compte, pour gérer les permissions et la sécurité (par exemple dans les ACL — Access Control Lists).

- Si on renomme un utilisateur, son nom change, mais son __SID__ reste le même, c’est ce qui permet à Windows de continuer à lui associer les bons droits d’accès.


