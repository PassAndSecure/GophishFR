![Logo_GophishFR](https://github.com/PassAndSecure/GophishFR/blob/main/Picture/gophish_purple-1.png)

# GophishFR

Installation avec Docker [🐳](https://github.com/PassAndSecure/GophishFR/blob/main/instructions_docker) - Image Docker [📦](https://hub.docker.com/r/gophishfr/gophishfr)

Installation avec apt, GophishFR sera installé dans `/var/lib`, `/usr/share/`, `/lib/systemd/system/` et un utilisateur dédié `gophishfr` sera créé : 
```bash
echo "deb [trusted=yes] https://passandsecure.github.io/GophishFR/repo stable main" | sudo tee /etc/apt/sources.list.d/gophishfr.list
sudo apt update
sudo apt install gophishfr
sudo sed -i 's/^deb/#deb/' /etc/apt/sources.list.d/gophishfr.list
```
[(Ne pas oublier l'ouverture des ports --> 80 / 443 / 3333)](https://passandsecure.fr/deploiement_campagne_phishing_gophish_tenant_M365_sur_debian_alma#ports)

Puis lancer GophishFR :
```bash
sudo systemctl start gophishfr
sudo systemctl enable gophishfr
sudo systemctl status gophishfr
```
Récupérer le mot de passe du compte admin dans le status de GophishFR

Lien du tutoriel associé : [Installation et déploiement de Gophish avec un tenant M365 compatible Debian 12 / AlmaLinux 9.4](https://passandsecure.fr/deploiement_campagne_phishing_gophish_tenant_M365_sur_debian_alma)

Le [fork du code source](https://github.com/PassAndSecure/GophishFR/releases/download/v0.12.1/gophishfr-v0.12.1-linux-64bit.zip) existant que j'ai développé est une version française de Gophish, avec quelques améliorations intégrées en plus de la francisation. [Gophish](https://getgophish.com/) est une plateforme open-source de phishing et de sensibilisation à la sécurité.

![Dashboard_GophishFR](https://github.com/PassAndSecure/GophishFR/blob/main/Picture/campagne.PNG)

Des templates à utiliser avec GophishFR sont fournis [ici](https://github.com/PassAndSecure/Template_Gophish/), ils sont personnalisés pour des campagnes de phishing se faisant passer pour des services Microsoft ou Google, ainsi que pour y remédier.

Pour plus d'informations et d'autres outils de ethical hacking, visitez notre site web [PassAndSecure](https://passandsecure.fr).

![Connexion M365](https://github.com/PassAndSecure/GophishFR/blob/main/Picture/Connexion_M365-1.png)

![Connexion Google](https://github.com/PassAndSecure/GophishFR/blob/main/Picture/Connexion_Google-1.png)

## Utilisation

1. Ouvrez GophishFR et allez dans la section "Landing Pages".
2. Créez une nouvelle page de destination et copiez le contenu du fichier `mslogin.html` ou `googlelogin.html` dans l'éditeur.
3. Allez dans la section "Email Templates"
4. Créez une nouvelle page de destination et copiez le contenu du fichier `msmail.html` ou `googlemail.html` dans l'éditeur.
5. Créez une campagne en utilisant les éléments Landing Pages et Email Templates que vous venez de créer et lancer votre campagne.

![landing_GophishFR](https://github.com/PassAndSecure/GophishFR/blob/main/Picture/landing_page.PNG)

## Avertissement

Le téléchargement et l'utilisation des ressources ne sont pas garantis par le site Pass And Secure. Le site et ses créateurs ne sont pas responsables des problèmes ou des dommages qui pourraient survenir suite à l'utilisation de ces ressources. Nous fournissons ces ressources sans garantie d'aucune sorte ; utilisez-les à vos propres risques.

L'utilisation de GophishFR doit être effectuée de manière éthique et légale, conformément aux politiques de votre organisation et aux lois locales. Assurez-vous d'obtenir les autorisations nécessaires avant de lancer des campagnes de phishing.

## Contribution

Nous accueillons avec plaisir les contributions de la communauté. Si vous souhaitez contribuer, veuillez forker le dépôt et soumettre une pull request avec vos modifications.

## Support

Pour toute question ou problème concernant ces templates, veuillez ouvrir un issue dans ce dépôt. Nous essayerons de vous aider dans les meilleurs délais.

Merci de votre intérêt et de votre participation à la communauté GophishFR !


         _ (`-.     ('-.       .-')      .-')             ('-.          .-') _   _ .-') _           .-')       ('-.                             _  .-')      ('-.                                          
        ( (OO  )   ( OO ).-.  ( OO ).   ( OO ).          ( OO ).-.     ( OO ) ) ( (  OO) )         ( OO ).   _(  OO)                           ( \( -O )   _(  OO)                                         
        _.`     \   / . --. / (_)---\_) (_)---\_)         / . --. / ,--./ ,--,'   \     .'_        (_)---\_) (,------.    .-----.   ,--. ,--.    ,------.  (,------.                                        
        (__...--''   | \-.  \  /    _ |  /    _ |          | \-.  \  |   \ |  |\   ,`'--..._)       /    _ |   |  .---'   '  .--./   |  | |  |    |   /`. '  |  .---'                                        
        |  /  | | .-'-'  |  | \  :` `.  \  :` `.        .-'-'  |  | |    \|  | )  |  |  \  '       \  :` `.   |  |       |  |('-.   |  | | .-')  |  /  | |  |  |                                            
        |  |_.' |  \| |_.'  |  '..`''.)  '..`''.)        \| |_.'  | |  .     |/   |  |   ' |        '..`''.) (|  '--.   /_) |OO  )  |  |_|( OO ) |  |_.' | (|  '--.                                         
        |  .___.'   |  .-.  | .-._)   \ .-._)   \         |  .-.  | |  |\    |    |  |   / :       .-._)   \  |  .--'   ||  |`-'|   |  | | `-' / |  .  '.'  |  .--'                                         
        |  |        |  | |  | \       / \       /         |  | |  | |  | \   |    |  '--'  /       \       /  |  `---. (_'  '--'\  ('  '-'(_.-'  |  |\  \   |  `---.                                        
        `--'        `--' `--'  `-----'   `-----'          `--' `--' `--'  `--'    `-------'         `-----'   `------'    `-----'    `-----'     `--' '--'  `------'                                        
          _ .-') _      ('-.      _ (`-.                .-') _          .-. .-')                      .-. .-')              _  .-')                   ('-.               
         ( (  OO) )   _(  OO)    ( (OO  )              (  OO) )         \  ( OO )                     \  ( OO )            ( \( -O )                 ( OO ).-.           
          \     .'_  (,------.  _.`     \  .-'),-----. /     '._         ;-----.\    ,--.   ,--.      ,--. ,--.    ,-.-')   ,------.   ,--. ,--.     / . --. /   ,--.    
          ,`'--..._)  |  .---' (__...--'' ( OO'  .-.  '|'--...__)        | .-.  |     \  `.'  /       |  .'   /    |  |OO)  |   /`. '  |  | |  |     | \-.  \   /  .'    
          |  |  \  '  |  |      |  /  | | /   |  | |  |'--.  .--'        | '-' /_)  .-')     /        |      /,    |  |  \  |  /  | |  |  | | .-') .-'-'  |  | .  / -.   
          |  |   ' | (|  '--.   |  |_.' | \_) |  |\|  |   |  |           | .-. `.  (OO  \   /         |     ' _)   |  |(_/  |  |_.' |  |  |_|( OO ) \| |_.'  | | .-.  '  
          |  |   / :  |  .--'   |  .___.'   \ |  | |  |   |  |           | |  \  |  |   /  /\_        |  .   \    ,|  |_.'  |  .  '.'  |  | | `-' /  |  .-.  | ' \  |  | 
          |  '--'  /  |  `---.  |  |         `'  '-'  '   |  |           | '--'  /  `-./  /.__)       |  |\   \  (_|  |     |  |\  \  ('  '-'(_.-'   |  | |  | \  `'  /  
          `-------'   `------'  `--'           `-----'    `--'           `------'     `--'            `--' '--'    `--'     `--' '--'   `-----'      `--' `--'  `----'          

