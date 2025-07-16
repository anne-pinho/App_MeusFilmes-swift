# MeusFilmes 🎬

Uma app iOS que exibe uma lista de filmes com imagem, título e descrição, além de tela de detalhes.

---

## 🚀 Motivação

Esse projeto nasceu para aprimorar habilidades com `UITableViewController`, navegação via segues e passagem de dados entre telas, seguindo o conselho de escrever o README antes do código — uma prática recomendada por Tom Preston‑Werner para definir propósito desde o início :contentReference[oaicite:1]{index=1}.

---

## ✅ Funcionalidades

- Lista de filmes com célula personalizada (`UIImageView`, `UILabel`)
- Tela de detalhes exibindo imagem, título e descrição completos
- Navegação funcional via segue e método `prepare(for:segue:)`

---

## 🛠 Tecnologias

- Linguagem: **Swift 5**
- Interface: **UIKit + Storyboard**
- Arquitetura: padrão simples **MVC**
- Célula personalizada: `FilmeCelula.swift` com IBOutlets
- Controller de detalhes: `DetalhesFilmesViewController.swift`

---

## 🔄 Fluxo da App
- ViewController popula um array de Filme no viewDidLoad.
- UITableView exibe as células com dados dos filmes.
- Ao selecionar uma célula, segue detalheFilme é disparada.
- prepare(for:segue:) passa o objeto Filme para DetalhesFilmesViewController.
- Tela de detalhes exibe imagem, título e sinopse completos.

## 🚧 Como Rodar

```bash
git clone https://github.com/seu_usuario/MeusFilmes.git
cd MeusFilmes
# Abra o projeto no Xcode (.xcodeproj ou .xcworkspace)
