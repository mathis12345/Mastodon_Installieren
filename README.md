# Mastodon richtig installieren:

## Schritt 1:
Anmeldung beim Ubuntu-server:

<Pre>
  Benutzername eingeben
  
  Passwort eingeben
</Pre>

## Schritt 2:
Sich als root-benutzer anmelden:

<Pre>
  sudo -i
  
  Passwort eingeben
</Pre>

## Schritt 3:
Scripte importieren:

<Pre>
  apt install git
  
  git clone https://github.com/mathis12345/Mastodon_Installieren
  
  chmod 777 Mastodon_Installieren/*
  
  cd Mastodon_Installieren
  
  ls
  
  ./Mastodon_001.sh
</pre>

## Schritt 4:
Nach ausführung des ersten Scriptes diese Befehle manuell eingeben:

<Pre>
  git clone https://github.com/mathis12345/Mastodon_Installieren
  
  chmod 777 Mastodon_Installieren/*
  
  cd Mastodon_Installieren
  
  ls
  
  ./Mastodon_002.sh
</Pre>

## Schritt 5:
Wenn das zweite Script fertig ist.
Die Globale Version von Ruby festlegen:

Dann geben Sie diese Befehle manuell im Terminal ein:

<Pre>
  rbenv global 3.0.4
  
  gem install bundler --no-document
  
  su - postgres
  
  psql
  
  CREATE USER mastodon CREATEDB;
  
  exit
  
  su - mastodon
</pre>

## Schritt 6:

<Pre>
  cd
  
  cd Mastodon_Installieren
  
  ./Mastodon_003.sh
</Pre>
