# Współpraca zespołowa — GitLab (punkt 6)

## 1. Utwórz projekt na GitLab

1. Zaloguj się na [https://gitlab.com](https://gitlab.com) (lub instancję uczelni).
2. **New project** → **Create blank project**.
3. Nazwa np. `repozytoirm-git-lab`, widoczność według wymagań zajęć.
4. **Odznacz** „Initialize repository with a README” (masz już lokalne repo).

## 2. Połącz lokalne repozytorium ze zdalnym

Zamień `TWOJ_LOGIN` i `NAZWA_PROJEKTU` na swoje dane:

```bash
git remote add origin https://gitlab.com/TWOJ_LOGIN/NAZWA_PROJEKTU.git
git push -u origin main
git push origin develop
git push origin --tags
```

Jeśli używasz SSH:

```bash
git remote add origin git@gitlab.com:TWOJ_LOGIN/NAZWA_PROJEKTU.git
```

## 3. Merge Request (code review)

1. Utwórz gałąź funkcji: `git checkout -b feature/review-demo develop`
2. Wprowadź zmianę, commit, push: `git push -u origin feature/review-demo`
3. W GitLab: **Merge requests** → **New merge request**.
4. **Source:** `feature/review-demo` → **Target:** `develop`.
5. Opisz zmiany, przypisz recenzenta (jeśli wymagane).
6. Po akceptacji: **Merge** (zalecane: *Delete source branch*).

## 4. Ochrona gałęzi (opcjonalnie)

**Settings** → **Repository** → **Protected branches**:

- `main` / `master` — tylko Maintainer może pushować; merge przez MR.
- `develop` — merge przez MR z code review.

## 5. Weryfikacja

```bash
git remote -v
git fetch origin
git branch -r
```

Po `git push` i utworzeniu MR masz pełny cykl pracy zespołowej z code review.
