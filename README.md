# ZooLand

Le sujet:
Le but de l'application est de gérer l'organisation d'un Zoo, en particulier la nourriture et le soin des animaux.
Dans le zoo, il y a différents animaux : crocodile, lion, hippopotame, tigre, singe.
Le Zoo est géré par un manager qui a sous ses ordres 2 vétérinaires et 5 gardiens :

Les gardiens ont pour tâche de nourrir les animaux.
Les vétérinaires ont pour tâche de soigner les animaux.
Le manager peut donner des tâches aux gardiens et vétérinaires à effectuer à un moment donné.
Un gardien peut donner des tâches à un autre gardien.
Un vétérinaire peut donner des tâches à un autre vétérinaire ou à un gardien.
Les gardiens et vétérinaires peuvent indiquer qu'ils ont soigné/nourri un animal.

Les animaux et les employés du zoo (manager, vétérinaires et gardiens) possèdent une fiche de présentation :

Une fiche d'animal présente sa photo, son nom et est accessible à tout le monde. On y trouve les soins et repas passés de l'animal ainsi que les prochaines actions à effectuer pour celui-ci (le nourrir, le soigner).
Une fiche d'employé présente pour chacun: son poste, son nom, prénom et date de naissance (merci de ne pas laisser d'enfant travailler !), ainsi que les actions effectuées et les éventuelles prochaines actions à effectuer.
La fiche du manager contient une vue en calendrier intégrant les actions de tous les employés.

Bonus:

Proposer aux visiteurs la création de compte:

un visiteur peut se loguer avec son compte Google et/ou Facebook.
un visiteur peut liker un ou plusieurs animaux
Un visiteur verra sur sa page de compte, les heures de prochains repas de ses animaux likés


Notifications in-app pour les employés :

10 minutes avant une action qu'il doit effectuer, un employé recevra une notification lui indiquant ce qu'il doit faire et pour quel animal.
Quand l'employé clique sur la notification, il est redirigé vers la fiche de l'animal.


Solution de payement pour les visiteurs

Un visiteur peut acheter un billet (= 1 entrée) sur le site
la solution de payement doit être sécurisée et proposer le payement par carte bleue Visa au minimum


Solution d'abonnement illimité

un visiteur peut s'abonner avec un payement récurrent pour avoir un accès illimité aux zoo


Le projet doit être déployé sur Heroku (et sera testé sur Heroku aussi bien qu'en local).
Le but étant de s'orienter vers une collaboration entre développeurs, merci de préférer les outils "connus" quand tu as le choix. Tu es libre de commenter ton code (selon ta philosophie!), mais si c'est le cas, c'est uniquement en anglais. Nous préférons du travail de qualité sur un périmètre restreint plutôt que l'intégralité du projet terminé avec les bonus mais que le code ne soit pas compréhensible.
L'utilisation des outils suivants est un plus:

docker (et docker-compose)
CI
Code Quality
Rubocop
Rspec
FactoryBot
Faker / FFaker

Ce sujet évolue (c'est la raison pour laquelle il est maintenant sur GitHub !).
A part exception:

aucune partie du sujet obligatoire ne sera supprimé
la partie obligatoire ne sera pas modifiée fondamentalement
les questions/suggestion jugées pertinentes donneront probablement lieux à la création de bonus supplémentaires (donc n'hésite pas à proposer !)

Bonne chance. Et n'oublie pas: il ne s'agit pas d'en faire trop mais de bien faire ;).
