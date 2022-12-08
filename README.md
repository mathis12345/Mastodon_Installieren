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

## Schritt 7:
Wenn das Script fertig ist:

<Pre>
  su - mastodon

  cd live

  RAILS_ENV=production bundle exec rake mastodon:setup
  
  exit
</pre>

## Schritt 8:
<Pre>
  cd
  
  cd Mastodon_Installieren
  
  ./Mastodon_004.sh
</pre>

## Schritt 9:
Wenn das Script fertig ist:

<Pre>
  nano mastodon
</pre>

## Schritt 10:
Die jetzt geöffnete Datei bearbeiten:
Jetzt muss in Zeile 19 und 28 das "example.com" durch die eben erstellte Domain ersetzt werden.
Dann müssen die Zeilen 37 und 38 wie folgt verändert werden:

<Pre>
  Ursprünglich:
  
  # ssl_certificate       /etc/letsencrypt/live/example.com/fullchain.pem;
  # ssl_certificate_key   /etc/letsencrypt/live/example.com/privkey.pem;
  
  Gewollter Zustand:
  
  ssl_certificate       /etc/cert/example.crt;
  ssl_certificate_key   /etc/cert/example.key;
</Pre>

Dann müssen Sie die Tastenkombination "Strg + x" drücken.
Danach drücken Sie "J".
Und dann drücken Sie die Taste "Enter".

<Pre>
  exit
  
  cd
  
  cd Mastodon_Installieren
</Pre>

## Schritt 11:
Nun führt man das letzte Script aus, indem man folgende Befehle eingibt:

<Pre>
  ./Mastodon_005.sh
</Pre>
