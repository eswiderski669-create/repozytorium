# Sprawozdanie — laboratorium Git (minCI&CD)

**Autor:** Student Git (student@example.com)  
**Katalog lokalny:** `c:\Users\eswid\Desktop\minCI&CD\repozytoirm`  
**Wersja Word:** [SPRAWOZDANIE.docx](SPRAWOZDANIE.docx)

---

## Linki do pracy

| Element | Link |
|---------|------|
| Repozytorium GitHub | [github.com/eswiderski669-create/repozytorium](https://github.com/eswiderski669-create/repozytorium) |
| Klonowanie (HTTPS) | `https://github.com/eswiderski669-create/repozytorium.git` |
| Pull Request #1 (code review, zmergowany) | [github.com/eswiderski669-create/repozytorium/pull/1](https://github.com/eswiderski669-create/repozytorium/pull/1) |
| Gałąź `main` (kod) | [github.com/eswiderski669-create/repozytorium/tree/main](https://github.com/eswiderski669-create/repozytorium/tree/main) |
| Gałąź `develop` | [github.com/eswiderski669-create/repozytorium/tree/develop](https://github.com/eswiderski669-create/repozytorium/tree/develop) |
| Tagi | [github.com/eswiderski669-create/repozytorium/tags](https://github.com/eswiderski669-create/repozytorium/tags) |
| Profil GitHub | [github.com/eswiderski669-create](https://github.com/eswiderski669-create) |

---

## 1. Inicjalizacja repozytorium

- `git init`, konfiguracja lokalna użytkownika (`user.name`, `user.email`)
- Pierwszy commit: `README.md` (`bb35e89`)

## 2. Podstawowe operacje Git

- Pliki: `plik1.txt`, `plik2.txt`, `plik3.txt`
- `git status` po edycji, cofnięcie: `git checkout --`, `git reset HEAD` + `git checkout --`
- Przegląd historii: `git log --oneline`

## 3. Git Flow — konfiguracja

- Rozszerzenie **git-flow-avh** (AVH Edition)
- `git flow init -d` — gałęzie `master`, `develop`, prefiksy `feature/`, `release/`, `hotfix/`

## 4. Git Flow — praca

| Typ | Gałąź | Efekt |
|-----|-------|--------|
| Feature | `feature/nowa-funkcja` | `funkcja.txt` → merge do `develop` |
| Release | `release/1.0.0` | README, tag **`1.0.0`** |
| Hotfix | `hotfix/poprawka-buga` | `plik3.txt`, tag **`poprawka-buga`** |

## 5. Trunk-Based Development

- Gałąź produkcyjna: **`main`**
- Krótka gałąź `poprawka-trunk` → merge do `main`
- `git stash` na `demo-stash.txt`
- Konflikt w `plik.txt` — rozwiązany przez edycję markerów merge i commit scalający

## 6. Praca zespołowa (GitHub)

- Push gałęzi: `main`, `develop`, `master` oraz tagów
- Pull Request **#1**: `feature/code-review-demo` → `develop`, status **MERGED**
- Zmiana w PR: sekcja „Code review” w `README.md`

## 7. Tagowanie

| Tag | Opis |
|-----|------|
| `1.0.0` | Release Git Flow |
| `poprawka-buga` | Hotfix Git Flow |
| `v1.1.0` | Wersja po scaleniu konfliktu (Trunk-Based) |
| `v1.2.0` | Wersja na HEAD `master` |

---

## Struktura repozytorium (pliki ćwiczeniowe)

- `README.md` — opis projektu
- `plik1.txt`, `plik2.txt`, `plik3.txt` — operacje podstawowe
- `funkcja.txt` — feature Git Flow
- `plik.txt` — konflikt merge (Trunk-Based)
- `demo-stash.txt` — demonstracja stash

---

## Polecenia do weryfikacji

```bash
git log --oneline --graph --all
git branch -a
git tag -l
git remote -v
```
