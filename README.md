Un playbook ansible pour déployer le projet [HappySchool](https://github.com/ISLNamur/happyschool) sur un serveur Ubuntu 18.04.

## Configuration
Modifier le fichier `happyschool.yml` pour personnaliser l'installation (mots de passes, applications activées, etc).
La liste des variables modifiables se trouvent dans `roles/defaults/main.yml`.

## Utilisation
Si vous voulez l'utiliser en local, à la racine du dépôt, exécutez dans un terminal :
```
./recipe.sh
```
Un mot de passe vous sera demandé pour l'installation des paquets nécessaire.

Pour une utilisation distance, créez un *playbook*. Par exemple, à partir du fichier `happyschool.example.yml`.

N'hésitez pas à créer un [inventaire](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) pour gérer votre ou vos machines avec les variables qui leurs sont propres.
Deux variables sont nécessaires au bon fonctionnement du playbook :
```
ansible_python_interpreter: /usr/bin/python3
ansible_user: utilisateur_de_la_machine
```
