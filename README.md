# Graduate Student Council Website


This repo hosts the public site for the Graduate Student Council. Built with Jekyll and the Minimal Mistakes theme on GitHub Pages.


## First-time setup


1. Configure **giscus**:
- Go to https://giscus.app
- Choose this repo and a Discussions category (create one if needed, for example `Comments`).
- Copy the generated `repo_id` and `category_id` and paste into `_config.yml` under `comments.giscus`.
2. Turn on **GitHub Pages** in Settings → Pages using the `main` branch.
3. Edit `_data/navigation.yml` to adjust menu items. Edit `_pages/*` content as needed.


## Funding workflow


- Event funding requests are submitted via the Google Form linked on `/funding/`.
- Lounge funding requests are submitted via the Google Form linked on `/funding/`.
- Financial co-chairs review submissions and communicate decisions through council channels.


## Minutes, surveys, and key info


- `/minutes/`, `/surveys/`, and `/key-info/` are link hubs that point to shared Google Drive folders.
- Each page can also include a manual title index for quick scanning on the public site.


## Local development


This repo uses a Ruby 3 toolchain for local preview and CI (`.ruby-version` is `3.3.10`).

Recommended on macOS:

```bash
brew install ruby@3.3
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
```

Build once:

```bash
./script/jekyll-build.sh
```

Run local server:

```bash
./script/jekyll-serve.sh
```


## Upstream build verification


- `.github/workflows/jekyll-ci.yml` builds the site on every push to `main`, pull request, and manual dispatch.
- CI uploads a `site-preview` artifact for quick visual checks when reviewing changes.
- GitHub Pages deployment can remain on your current setting; this CI workflow is a validation layer and does not replace deployment by itself.
