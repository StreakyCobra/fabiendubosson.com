---
date: '{{ .Date }}'
title: '{{ replace .File.ContentBaseName `-` ` ` | title }}'
authors:
  - name: '{{ .Site.Params.author.name }}'
    image: '{{ .Site.Params.author.image }}'
draft: true
---
