# Texposou
Bienvenue sur le repo de Texposou :sparkles: :sparkles: :sparkles:


## Instalation
Importez le projet depuis GitHub avec la commande suivante :
```sh
$ git clone https://github.com/guillaumegiroux/texposou.git
```

Pour que le projet fonctionne effectuez les manipulations suivantes dans le CMD/Terminal :

```sh
# Installer les gems avec la commande
bundle install
# Faite la migration de la base de donnée
rake db:migrate
```

## Important
Pour que l'upload des images fonctionne il vous faut avoir installé imagemagick avec la commande Homebrew (installé avec xCode) suivante :
```sh
$ brew install imagemagick
```

Afin que l'upload d'images fonctionne correctement rendez-vous dans le fichier `config/environments/development.rb` et dé-commentez la ligne qui vous convient..
```rb
# pour les UNIX (Mac/Linux/CentOS/etc...)
Paperclip.options[:command_path] = "/usr/local/bin/"

# pour les Windows
Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'
```
Instructions supplémentaires pour Windows : 
* Installer la commande `file` [ici](http://gnuwin32.sourceforge.net/packages/file.htm).
* Si cela ne fonctionne pas, suivre les instructions détaillées disponibles [ici](https://github.com/thoughtbot/paperclip#file).