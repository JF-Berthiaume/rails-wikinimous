# db/seeds.rb

puts "Nettoyage de la base de données..."
Article.destroy_all

puts "Initialisation du protocole de création d'articles..."

articles_data = [
  {
    title: "MANIFESTE_ANONYME_001",
    content: <<~TEXT
      [DÉBUT DU TRANSFERT]
      Nous sommes légion. Nous n'oublions pas. Nous n'ordonnons pas. Attendez-nous.

      La vie privée est un droit, pas un privilège. À l'ère de la surveillance de masse, l'anonymat est notre seule défense. Ce Wiki est un espace de libre-échange, loin des yeux du Panoptique numérique. Contribuez, partagez, protégez votre identité.

      [FIN DU TRANSFERT]
    TEXT
  },
  {
    title: "PROTOCOLE_SÉCURITÉ_RÉSEAU",
    content: <<~TEXT
      [NIVEAU D'ACCÈS : CONFIDENTIEL]
      Pour maintenir l'intégrité de notre réseau, suivez ces directives :
      1. Utilisez toujours un VPN de confiance.
      2. Chiffrez vos communications (PGP/GPG).
      3. Ne partagez jamais d'informations personnellement identifiables (PII).
      4. Vérifiez les signatures numériques de vos sources.

      La faille la plus courante est humaine. Soyez vigilants.

      [FIN DU PROTOCOLE]
    TEXT
  },
  {
    title: "ARCHIVE_CORP_BREACH_202X",
    content: <<~TEXT
      [DONNÉES EXFILTRÉES : OMEGA CORP]
      Analyses des journaux d'accès du serveur principal datés du 14 mai 202X.

      Des traces d'intrusion ont été détectées. Le point d'entrée semble être une vulnérabilité non corrigée dans le module de gestion des employés. Des téraoctets de données sur les projets de surveillance biométrique ont été copiés.

      [VOIR FICHIER JOINTS : omega_leak_logs.txt]
      [ÉTAT : EN COURS D'ANALYSE]
    TEXT
  },
  {
    title: "GUIDE_CHIKH_CYBER_RÉSISTANCE",
    content: <<~TEXT
      [DÉBUT DU GUIDE]
      Comment naviguer dans le cyberespace sans laisser de traces.

      Chapitre 1 : L'art de la désinformation. Créez de fausses identités crédibles.
      Chapitre 2 : Outils de chiffrement open-source. Veracrypt, Signal, Tor.
      Chapitre 3 : Sécurité physique des périphériques. Ne laissez jamais votre ordinateur déverrouillé.

      La connaissance est notre arme. Partagez ce guide.

      [FIN DU GUIDE]
    TEXT
  },
  {
    title: "PROJET_MONARCH :_RUMEL_OP_NOTES",
    content: <<~TEXT
      [NOTES DE TERRAIN - OPÉRATION RUMEL]
      Sujet : Suivi des activités du Projet Monarch.

      Nos sources confirment que le Projet Monarch avance vers sa phase de déploiement. L'infrastructure réseau est en place dans trois grandes villes. Le but est le contrôle social par le biais d'algorithmes de recommandation biaisés.

      [ACTION : SABOTAGE DES NOEUDS RÉSEAU PRINCIPAUX]
      [PRIORITÉ : HAUTE]
    TEXT
  }
]

articles_data.each do |data|
  article = Article.create!(data)
  puts "Article système créé : #{article.title}"
end

puts "Protocole terminé. Base de données Wikinimous initialisée avec du contenu thématique."
