# Journal de bord du projet encadré

Première séance 19/09/23
Cette première séance a été l'occasion de prendre connaissance des modalités de contrôle de connaissance de ce semestre ainsi que des grands thèmes que nous allions aborder. Je ne connaissais aucune commande auparavant, cette séance a été l'occasion de me familiariser avec certaines d'entre elles. C'est surtout l'exercice donné (créer une arborescence) qui m'a permit de réellement mettre en application plusieurs  commandes dont notamment cd, mkdir, mv, et rv. J'éspère me familiariser avec beaucoup d'autres très rapidement. Je pense par exemple à ré-organiser mes dossiers de cours ce week-end en utilisant le terminal plutôt que l'explorateur de fichiers. Je me suis aidé, pour l'exercice maison, de plusieurs tutoriels et sites internet, mais ce sont surtout mes camarades plus habitués aux commandes qui m'ont fait comprendre certaines difficultés auxquelles je pouvais être confronté. Je n'étais par exemple pas dans le bon dossier pour démarrer l'exercice et je n'arrivais pas à utiliser la commande cd (problème de syntaxe). On m'a donc expliqué qu'il était possible d'ouvrir directement un terminal dans la destination de notre choix. En attendant le prochain cours, afin de mieux aborder le projet final, j'essaie de me familiariser avec de nouvelles commandes ainsi qu'avec Github que je n'ai également jamais utilisé auparavant. Ce n'est que le début !

Séance du 27/09/2023
Nous avons cloner le répértoire GIT sur nos ordinateurs. Nous avons également créer deux clés de sécurité pour nos comptes, une publique et une privée.

## J’ai rencontré certaines difficultés lors de la réalisation des exercices suivant la deuxième séance. Il fallait copier notre répértoire PPE1 personnel sur notre machine. Pour cela, j’ai utilisé la commande git clone <URL>, la commande me renvoyer le message d’erreur suivant : fatal: remote error: is not a valid repository name. J’ai donc essayé d’ouvrir un terminal dans un autre emplacement que celui que j’avais initialement choisi, j’ai crée un nouveau dossier « ppe » dans mes documents. Le même message d’erreur s’est affiché. Une de mes camarades avait rencontré le même problème que moi et l’avait partagé sur Discord. Elle avait réussi à régler son problème de son coté en supprimant puis en ré-installant sa clé de sécurité Github. J’ai fait de même mais j’avais toujours le même problème. Cette fois c’était un ce message d’erreur qui s’affichait : fatal: destination path 'PPE1-2023' already exists and is not an empty directory. Je ne pouvais pas déplacer mon répértoire personnel dans le même dossier que celui du cours car ils avaient le même nom. Je suis donc restée au même emplacement mais ai déplacé le reste du dossier ppe. Cette fois c’est encore le premier message d’erreur qui s’affichait, j’ai donc supprimé une tilde ~ qui se trouvait à la suite de mon URL de répértoire personnel. Je ne sais pas d’ou venait cette tilde mais elle faisait que mon répértoire n’était pas reconnu. J’ai donc pu cloner mon répertoire après avoir retiré cette tilde.
J’ai ensuite pu mettre à jour le répértoire github en utilisant les commandes git log, git add, git commit et git push. 

#Séance du 11/10/2023

Cette séance a commencé avec la correction du TD précédent qui concernait notamment les erreurs de conflit entre le répértoire local et web github. Je pense avoir plus ou moins compris la manière dont les conflits peuvent apparaître et disparaître. J'avais juste eu beaucoup de mal à faire le td, j'avais en fait déja régler le conflit une première fois (je pense !) en classe et avait mal compris en faisant le td chez moi qu'il ne fallait pas push nos commit et modifier à la fois mon journal local et le journal web. Nous avons ensuite commencé à nous intéresser aux scripts.

J'ai eu beaucoup de mal à comprendre comment créer un script et l'executer.

Exercice 1 :
    Écrire un script qui compte les entités pour une année un type d’entité donnés
en argument du programme.
Pour ce qui est de cette question, j'ai commencé par écrire une commande sur gedit. La commande est : cat 2016/*/* | wc -l. Cette dernière permet d'uniquement garder le nombre de lignes de l'ensemble des documents concernés (ici tous les documents ann de l'année 2016). J'ai ensuite essayé de rendre le document exécutable avec la commande chmod +x. En rappelant le script par son nom dans le terminal j'ai eu le message d'erreur suivant : Command 'script1' not found, did you mean:
  command 'script' from deb bsdutils (1:2.38.1-4ubuntu1)
  command 'script6' from deb ipv6toolkit (2.0+ds.1-2)
Try: sudo apt install <deb name>

Je suis donc allé me renseigner sur internet et j'ai vu que je pouvais rendre un fichier exécutable dans les propriétés du fichier. J'ai donc pu avoir le résultat 9442 après avoir effectué ce changement.

    Écrire un second script qui lance le script précédent trois fois, une fois pour
chaque années, en prenant le type d’entité en argument.
Je n'ai pas réussi à répondre à cette partie de l'exercice.
Je pense ne pas avoir compris la manière dont nous pouvons déclarer des variables. J'ai essayé différentes idées. J'ai premièrement donné dans mon script trois valeurs à trois variables $1=2016, $2=2017 et $3=2018. J'ai ensuite remplacé le 2016 du programme précédent avec chaque variable (à la suite puis en créant une ligne pour cahque commande). Je reçois à chaque fois le même message d'erreur que pour la question précédente.

Exercice 2 :
Pour afficher le classement des lieux les plus cités j'ai réutilisé la commande cat suivie de grep pour uniquement prendre en compte les lignes avec le terme Location se trouvant à l'interieur. Afin de n'afficher que cette ligne nous utilisons cut -f 3. Les occurences sont elles comptées grâce à la commande uniq -c. Nous regroupons ensuite chaque lieu grâce à sort qui vient regrouper les occurences par ordre alphabétique. Enfin, nous réutilisons sort (avec -n) pour que les occurences soient classées numériquement. cat */*/* | grep Location | cut -f 3 | sort | uniq -c | sort -n.

Pour prendre en argument l'année, le mois et le nombre de lieux à afficher je pense qu'il faut attribuer à chacun de ces élément un nom de variable. En redéfinissant leurs valeurs nous pourrons donc établir la liste des lieux les plus mentionnés en fonction de l'année, du mois, et du nombre de lieux que nous voulons afficher avec head en fin de commande. Je n'ai cependant toujours pas réussi à déclarer ces variables sans obtenir la même erreur que lors des réponses précédentes.

Projet PPE : pour ce qui est du projet ppe, je suis en groupe avec Maddie de Nanterre et Elisa de Paris 3. Nous avons décidé de choisir le mot "Guerre" en roumain, russe, et anglais. Nous avons pour l'instant chacune commencé à lister des URL contenant le mot et ses variations.


