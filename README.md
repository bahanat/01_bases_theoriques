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
├── data_insertion_notebooks/               # Notebooks pour l'insertion des données dans chaque table de la base
│   ├── config_template.py                  # Template de config pour MySQL, à renommer en config.py
│   ├── insertion_developers.ipynb
│   ├── insertion_games_developers.ipynb
│   ├── insertion_games_genres.ipynb
│   ├── insertion_games_publishers.ipynb
│   ├── insertion_games.ipynb
│   ├── insertion_genres.ipynb
│   ├── insertion_publishers.ipynb
│   ├── insertion_ranking_genres.ipynb
│   ├── insertion_ranking_types.ipynb
│   ├── insertion_rankings.ipynb
│   ├── insertion_reviews.ipynb
│   └── insertion_users.ipynb
│
├── .gitignore
├── LICENSE
├── README.md
└── sql_requests.sql
```