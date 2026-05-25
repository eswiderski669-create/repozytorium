# Raport — laboratorium Git (minCI&CD)

## 1. Inicjalizacja repozytorium

| Krok | Polecenie / akcja | Wynik |
|------|-------------------|--------|
| Init | `git init` | Repozytorium w `repozytoirm` |
| Użytkownik (lokalnie) | `git config user.name` / `user.email` | Student Git, student@example.com |
| README | `README.md` + commit | `bb35e89` — pierwszy commit |

## 2. Podstawowe operacje Git

- Dodano `plik1.txt`, `plik2.txt`, `plik3.txt` → commit `9e8d3b1`.
- Modyfikacja `plik2.txt` → `git status` pokazał *modified*.
- **Cofnięcie:** `git checkout -- plik2.txt` — przywrócenie z indeksu/HEAD.
- **Reset:** zmiana `plik1.txt` + `git add` + `git reset HEAD plik1.txt` + `git checkout -- plik1.txt`.
- **Historia:** `git log --oneline`.

## 3. Konfiguracja Git Flow

- Zainstalowano **git-flow-avh** (AVH Edition 1.12.4) do `%USERPROFILE%\.local\bin`.
- Inicjalizacja: `git flow init -d` (gałęzie: `master`, `develop`, prefiksy `feature/`, `release/`, `hotfix/`).

## 4. Praca w modelu Git Flow

| Typ | Gałąź | Opis |
|-----|-------|------|
| Feature | `feature/nowa-funkcja` | Plik `funkcja.txt`, merge do `develop` |
| Release | `release/1.0.0` | Aktualizacja README, tag `1.0.0`, merge do `master` i `develop` |
| Hotfix | `hotfix/poprawka-buga` | Poprawka `plik3.txt`, tag `poprawka-buga` |

## 5. Trunk-Based Development

- Gałąź produkcyjna: **`main`** (rename z `master`).
- Krótka gałąź: `poprawka-trunk` → merge do `main`.
- **Stash:** `git stash push` / `git stash list` / `git stash pop` na `demo-stash.txt`.
- **Konflikt** w `plik.txt`:

```
CONFLICT (add/add): Merge conflict in plik.txt
```

**Rozwiązanie konfliktu:** usunięto markery `<<<<<<<`, `=======`, `>>>>>>>`, zapisano jedną uzgodnioną linię tekstu, `git add plik.txt`, commit merge.

## 6. Praca zespołowa (GitLab)

Szczegóły w pliku [INSTRUKCJA-GITLAB.md](INSTRUKCJA-GITLAB.md) — konfiguracja `origin`, push, Merge Request.

## 7. Tagowanie

- Tagi Git Flow: `1.0.0`, `poprawka-buga`
- Tag wersji na produkcji: **`v1.1.0`** (commit scalenia konfliktu), **`v1.2.0`** (HEAD gałęzi `master` = `main`)

```bash
git tag -l
git show v1.1.0
```

## Przydatne polecenia podsumowujące

```bash
git log --oneline --graph --all
git branch -a
git tag -l
git flow version
```
