---
date: '{{ .Date }}'
title: '{{ replace .File.ContentBaseName `-` ` ` | title }}'
authors:
  - name: '{{ .Site.Params.author.name }}'
    image: '{{ .Site.Params.author.image }}'
    link: '{{ .Site.Params.author.link }}'
draft: true
---
