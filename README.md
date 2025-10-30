# Graduate Student Council Website


This repo hosts the public site for the Graduate Student Council. Built with Jekyll and the Minimal Mistakes theme on GitHub Pages.


## First-time setup


1. Enable **Discussions** in Settings → General.
2. Create labels: `funding-request`, `pending-review`, `approved`, `rejected`, `lt-500`, `500-999`, `gte-1000`.
3. Configure **giscus**:
- Go to https://giscus.app
- Choose this repo and a Discussions category (create one if needed, for example `Comments`).
- Copy the generated `repo_id` and `category_id` and paste into `_config.yml` under `comments.giscus`.
4. Turn on **GitHub Pages** in Settings → Pages using the `main` branch.
5. Edit `_data/navigation.yml` to adjust menu items. Edit `_pages/*` content as needed.


## Funding requests workflow


- New requests are submitted via **Issue Forms** at `New issue → Funding request`.
- The `label-funding-amount.yml` workflow reads the amount and applies a tier label.
- Officers review, ask for clarifications in comments, and then label as `approved` or `rejected`.
- For requests at or above the threshold defined in the bylaws, open a **Poll** in Discussions and link it back to the issue.


## Local development


```bash
bundle install
bundle exec jekyll serve
