Correspondance musicale
=======================

Description
-----------

Cette application a été réalisée en autonomie et permets de mettre en relation le son et l'écriture d'un texte. Pour développer cette application, j'ai utilisé processing, un logiciel basé sur java pour réaliser mon projet.

Version 1
---------

<b>Principe :</b> l'utilisateur crée un espace sonore et graphique en appuyant sur les touches alphanumériques et la touche espace de son clavier.<br/>
<b>Description :</b> l'application réagit lorsque l'utilisateur appuie sur l'une des touches appartenant soit aux 26 lettres de l'alphabet, soit aux dix chiffres de 0 à 9 ou soit sur la touche espace. Une fois que l'utilisateur appuie sur une touche (à part sur la touche espace qui ne génère q'un espace graphique) un son est produit (un son différent par touche) avec un effet sonore en fonction des touches appuyées précédement. Puis le caractère est affiché à l'écran avec une police choisie de manière aléatoire (parmis les 4 proposées) et avec une couleur aléatoire. Enfin, l'écran s'efface une fois que la fenêtre est rempli de caractères.

Modification de la banque de son
--------------------------------

Les sons proposés avec le logiciel servent uniquement d'exemple. il est donc possible de les remplacer par d'autre en suivant la nomenclature ci-dessous:
nom.ext 
* avec nom remplacé soit par espace, soit par une des 26 lettres de l'alphabet ou soit par un chiffre comprit dans l'intervalle [0, 9] 
* avec ext remplacé par l'extension de votre choix entre ces valeurs : 
    * mp3 
    * wav
    * aif
(je vous recommande d'utiliser les deux premières)
Une fois que vous avez l'ensemble de vos sons (soit 37 sons) vous pouvez supprimmer l'ensemble des fichier du dossier correspondance-musicale/main/data/son execpté le fichier extension.json

Enfin il vous faudra modifier le fichier extension.json qui est dans le même dossier en remplaçant la valeur du champ "extension" par la valeur que vous aurez choisit
pour ext, comme ci-dessous :
<pre>
<code>
{
    "extension":"ext"
}
</code>
</pre>

Modification des polices de caractères
--------------------------------------

Les polices de caratères utilisées dans ce logiciel sont issues des polices de google font et servent d'exemple ici. 
En voici la liste :
* <cite>Copyright (c) 2012 Grzegorz Klimczewski, Fonty.PL (www.fonty.pl), with Reserved Font Name 'Akronim'</cite>
* <cite>Copyright (c) 2010, Kimberly Geswein (kimberlygeswein.com)</cite>
* <cite>Copyright 2019 The Lacquer Project Authors (https://github.com/Lacquer-Font/Lacquer)</cite>
* <cite>Copyright (c) 2011, Sideshow (a DBA of Font Diner, Inc) (www.fontdiner.com), with Reserved Font Name "Trade Winds".</cite>

Il est donc possible de les remplacer, d'en ajouter et d'en supprimer. Toutefois il doit y avoir au minimum 2 polices de caractères.

Pour ajouter une police de caractères, il faut effectuer dans l'ordre les opérations ci-dessous:
* copier le dossier de la nouvelle police de caractère dans le dossier correspondance-musicale/main/data/font
* ajouter la ligne suivante dans le fichier correspondance-musicale/main/data/font/font.json en remplaçant nomFonte par le nom de la police de caractères avec son extension à la fin du fichier et pathfont par le nom du dossier ouù est la police de caractère. En voici un exemple à partir du fichier d'origine:
  <pre>
  <code>
    [
	{
	 	"fontname":"font/Akronim/Akronim-Regular.ttf"
	},
	{
		"fontname":"font/Indie_Flower/IndieFlower-Regular.ttf"
	},
	{
		"fontname":"font/Lacquer/Lacquer-Regular.ttf"
	},
	{
		"fontname":"font/Trade_Winds/TradeWinds-Regular.ttf"
	}
    <b>
    ,{
        "fontname":"font/pathfont/nomFonte"
    }</b>
    ]
  </code>
  </pre>


Pour supprimer une police de caractères, il faut effectuer dans l'ordre les opérations ci-dessous:
* supprimer le dossier de la police de caractère dans le dossier correspondance-musicale/main/data/font
* supprimmer la ligne (exemple : <pre><code> 
{
	"fontname":"font/Akronim/Akronim-Regular.ttf" 
}, </code></pre>) dans le fichier correspondance-musicale/main/data/font/font.json correspondant à la police de caractère que vous souhaitez supprimer. Voici Le résulta après supression de la ligne d'exemple:
  <pre>
  <code>
    [
	{
		"fontname":"font/Indie_Flower/IndieFlower-Regular.ttf"
	},
	{
		"fontname":"font/Lacquer/Lacquer-Regular.ttf"
	},
	{
		"fontname":"font/Trade_Winds/TradeWinds-Regular.ttf"
	}
    <b>
  </code>
  </pre>
