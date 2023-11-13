#!/usr/bin/env bash

nomdefichier=$1
noline=1

#Cette condition demande à l'utilisateur de donner au moins un argument pour que le programme s'execute.
# -ne = not equal to.

if [ "$#" -ne 1 ];
    then echo "Il faut donner un nom de fichier"
    exit 1
#exit 1 permet de stopper le programme si la condition n'est pas remplie. Si on ne la met pas, on obtient un message d'erreur.
fi

exec > "tableauhtml"
#Notre output sera stocké dans un fichier du nom de tableauhtml.

echo "<html>" #Marque le début du document html.
echo "<head><title>Mini projet</title></head>"
#title = ce qui est écrit dans l'onglet.
#head = les métadonnées de la page.
echo "<body>"
#marque le début du corps de la page html.
echo "<table border='1'>"
#donne la taille de la bordure du tableau. border='1' 1 pixel par exemple.
echo "<tr><th>Numéro de ligne</th><th>URL</th><th>Code HTTP</th><th>Encodage de la page</th></tr>"
#imprime la ligne qui contient les titres des colonnes. des th pour chaque colonne.

while read -r line;
do
    httpcode=$(curl -I -s -L -w "%{http_code}" -o /dev/null "$line")
    encoding=$(curl -I -s -L -w "%{content_type}" -o /dev/null "$line")

    echo -e "<tr>
                <td>$noline</td>
                <td style='color: blue;'><a href='$line'>$line</a></td>
                <td>$httpcode</td>
                <td>$encoding</td>
            </tr>"
#J'ajoute style='color: blue;' pour donner une couleur à ma variable $line. Tous mes URL seront en bleu.
#J'ajoute la balise <a>, cette dernière donne à l'utilisateur la possibilité de cliquer sur les URL pour accéder à une page web.


    #echo -e "<tr><td>$noline</td><td>$line</td><td>$httpcode</td><td>$encoding</td></tr>" Version une ligne et non colorée du echo du haut.
    #echo -e "$noline\t$line\t$httpcode\t$encoding"; Cette ligne ajoute une ligne de texte non formaté au fichier html.
    ((noline++))

done < "$nomdefichier"

echo "</table>"
echo "</body>"
echo "</html>"
#ferment les balises précedemment ouvertes.


#Quand je relance le script, les lignes sont ajoutées en doublon. J'ai par exemple executé le script une première fois puis une deuxième fois après l'ajout des couleurs. Les lignes colorées était donc ajoutées en double de celles en noir.
