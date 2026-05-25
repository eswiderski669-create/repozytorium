# Współpraca zespołowa — GitHub (punkt 6)

Konto: **[eswiderski669-create](https://github.com/eswiderski669-create)**

> Zalogowanie w przeglądarce nie wystarcza dla terminala — przy pierwszym `git push` lub `gh` trzeba raz autoryzować CLI (poniżej).

## Krok 1: Utwórz puste repozytorium na GitHub

1. Wejdź na [https://github.com/new](https://github.com/new) (jesteś zalogowany).
2. **Repository name:** `repozytorium` (już utworzone)
3. **Public** lub Private — według wymagań zajęć.
4. **Nie zaznaczaj** „Add a README” / „Add .gitignore” (masz już lokalny projekt).
5. Kliknij **Create repository**.

## Krok 2: Połącz lokalne repo (już skonfigurowane)

```powershell
cd "c:\Users\eswid\Desktop\minCI&CD\repozytoirm"
git remote -v
# origin → https://github.com/eswiderski669-create/repozytorium.git
```

Jeśli `origin` nie istnieje:

```powershell
git remote add origin https://github.com/eswiderski669-create/repozytorium.git
```

## Krok 3: Autoryzacja (jednorazowo)

**Opcja A — GitHub CLI (zalecane):**

```powershell
gh auth login
# Wybierz: GitHub.com → HTTPS → Login with a web browser
```

**Opcja B — Git Credential Manager:** przy `git push` pojawi się okno logowania do GitHub.

## Krok 4: Push gałęzi i tagów

```powershell
git push -u origin main
git push origin develop
git push origin master
git push origin --tags
```

## Krok 5: Pull Request (odpowiednik Merge Request w GitLab)

1. Utwórz gałąź do review:

```powershell
git checkout develop
git checkout -b feature/code-review-demo
# wprowadź małą zmianę, np. w README.md
git add .
git commit -m "Demo: zmiana do Pull Request"
git push -u origin feature/code-review-demo
```

2. Na GitHub: repozytorium **[repozytorium](https://github.com/eswiderski669-create/repozytorium)** → **Pull requests** → **New pull request**.
3. **base:** `develop` ← **compare:** `feature/code-review-demo`.
4. Opis zmian, **Create pull request**.
5. Po review: **Merge pull request** → opcjonalnie **Delete branch**.

## Weryfikacja

```powershell
git remote -v
git branch -r
gh repo view eswiderski669-create/repozytorium --web
```

Po merge PR masz pełny cykl code review na GitHub.
