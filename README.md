# Project MySQL One for All

- Project to normalize and populate a table in the third normal form, and access its informations through `SQL` queries.

## Requirements

<details>
  <summary><strong> Challenge 1 ✔️ </strong></summary>
  
  - Create `SpotifyClone` database
</details>
<details>
  <summary><strong> Challenge 2 ✔️ </strong></summary>
  
  - Create `QUERY` to exhibit 3 columns (`cancoes`, `artistas` and `albuns`):
  1. `cancoes` must exhibit total amount of songs
  2. `artistas` must exhibit total amount of artists
  3. `albuns` must exhibit total amount of albums
</details>
<details>
  <summary><strong> Challenge 3 ✔️ </strong></summary>
  
  - Create `QUERY` to exhibit 3 columns (`usuario`, `qtde_musicas_ouvidas` and `total_minutos`):
  1. `usuario` alias must display user name
  2. `qtde_musicas_ouvidas` must display total amount of songs listened by user based on reproduction history
  3. `total_minutos` must display total minutes listened by user based on reproduction history
</details>
<details>
  <summary><strong> Challenge 4 ✔️ </strong></summary>
  
  - Create `QUERY` to display active users in 2021, based on most recent date in reproduction history:
  1. `usuario` alias must display user name
  2. `condicao_usuario` must display whether user is active or not
</details>
<details>
  <summary><strong> Challenge 5 ✔️ </strong></summary>
  
  - Create `QUERY` to check top 2 played songs in the moment:
  1. `cancao` alias must display song name
  2. `reproducoes` alias must display how many users played the song
</details>
<details>
  <summary><strong> Challenge 6 ✔️ </strong></summary>
  
  - Create `QUERY` to check company billing:
  1. `faturamento_minimo` alias must display the lowest existing plan value for a user.
  2. `faturamento_maximo` alias must display the highest existing plan value for a user.
  3. `faturamento_medio` alias must display the average value of plans owned by users so far.
  4. `faturamento_total` alias must display the total value earned from plans owned by users.
</details>
<details>
  <summary><strong> Challenge 7 ✔️ </strong></summary>
  
  - Create `QUERY` to relate albums to followers:
  1. `artista` alias must display artist name.
  2. `album` alias must display album name.
  3. `seguidores` alias must display the quantity of followers for each given artist.
</details>
<details>
  <summary><strong> Challenge 8 ✔️ </strong></summary>
  
  - Create `QUERY` to relate albums to artists:
  1. `artista` alias must display artist name.
  2. `album` alias must display album name.
</details>
<details>
  <summary><strong> Challenge 9 ✔️ </strong></summary>
  
  - Create `QUERY` to display quantity of songs in an user reproduction history:
  1. `quantidade_musicas_no_historico` alias must display quantity of songs.
</details>
<details>
  <summary><strong> Challenge 10 ✔️ </strong></summary>
  
  - Create `QUERY` to exhibit name and times a song was played by an user using free or personal plans:
  1. `nome` alias must display song name.
  2. `reproducoes` alias must display how many users listened to given song.
</details>

## Bonus Requirements

<details>
  <summary><strong> Challenge 11 ✔️ </strong></summary>
  
  - Create `QUERY` to change and sort song names:
  1. `nome_musica` alias must display original song name.
  2. `novo_nome` alias must display altered song name.
  
  In the last word of a song name:
  - Change `Streets` by `Code Review`
  - Change `Her Own` by `Trybe`
  - Change `Inner Fire` by `Project`
  - Change `Silly` by `Nice`
  - Change `Circus` by `Pull Request`
</details>
 
## Language and Tools

<a href="https://www.mysql.com/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="30" height="30"/> </a>
MySQL
</br>
</br>
<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="javascript" width="30" height="30"/> </a>
JavaScript

## Get started

<details>
  <summary><strong> With Docker </strong></summary>
  </br>
  👉 Docker-compose was provided by Trybe
  
  ⚠️ Before you start, you must check if your docker-compose version is 1.29 or higher
  </br>
  
  - Run `node` and `db` by running: 
  ```sh
  $ docker-compose up -d
  ```
  
  - Open interactive terminal using:
  ```sh
  $ docker exec -it one_for_all bash
  ```
  
  - Install dependencies, inside the container, with: 
  ```sh
  $ npm install
  ```
</details>

<details>
  <summary><strong> Install it locally </strong></summary>
  </br>
  
  - Open terminal and create a directory in your preferred location:
  ```sh
  $ mkdir <Your directory name here>
  ```
  
  - Access directory then clone the repository:
  ```sh
  $ cd <Your directory name here>
  $ git clone git@github.com:ViniGB/Project-One-for-all.git
  ```
  
  - Access the newly created directory:
  ```sh
  $ cd Project-One-for-all
  ```
  
  - Install dependencies:
  ```sh
  $ npm install
  ```
</details>
