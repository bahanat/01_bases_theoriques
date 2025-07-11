# Bases théoriques

## Structure du projet
```bash
project/
│
├── data/                                   # Fichiers de données .csv (ignorés par Git)
│   ├── games_description.csv               # Données sur les jeux; genre, éditeurs, etc.
│   ├── games_ranking.csv                   # Différents classements de jeux
│   └── steam_game_reviews.csv              # Avis sur les jeux, sur la plateforme Steam
│
├── .gitignore
├── config_template.py                      # Template de config pour MySQL, à renommer en config.py
├── insertion_developers.ipynb
├── insertion_games_developers.ipynb
├── insertion_games_genres.ipynb
├── insertion_games_publishers.ipynb
├── insertion_games.ipynb
├── insertion_genres.ipynb
├── insertion_publishers.ipynb
├── insertion_reviews.ipynb
├── insertion_users.ipynb
├── LICENSE
├── README.md
└── sql_requests.sql
```