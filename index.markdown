---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
---

{%- assign page_paths = site.header_pages | default: default_paths -%}

- [Quotes](quotes)
- [To Do List](todo)
- [UK Bookmarks](bm_uk)
- [Poems](poems)
- [Short Moral Stories](moral-short-stories)

COLLECTION - {{ site.collections | map:"label" | join: ", " }}  

page_paths - {{ page_paths }}   

PAGES WITH TITLE - {{site.pages | map: 'title' | size}}   

PAGES -  {{ site.pages | map: "url" | join: ", " }}   

header_pages - {{ site.header_pages }}   
