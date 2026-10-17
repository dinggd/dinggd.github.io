# guodongding.cn

Static homepage, hosted on GitHub Pages. Plain HTML, no build step.

- `index.html` – homepage (about, news, selected publications, experience, students, talks, service)
- `publications.html` – full publication list
- `projects/<name>/<name>.html` – one page per paper (title, authors, abstract, links, BibTeX), with its figure alongside
- `papers/`, `talks/`, `files/` – PDFs; `logos/` – institution logos; `avatar.jpeg` – portrait

To add a paper: copy any `projects/<name>/` folder, edit the HTML, drop in the figure, and add an entry to `publications.html` (and `index.html` if it is a selected paper).

Deploy: commit and push to `main`.
