#!/bin/sh
# Gera terra-de-ninguem.html (versão do artifact) a partir do index.html:
# tira as tags de documento que o artifact já coloca e embute o ícone.
cd "$(dirname "$0")"
PNG64=$(base64 -w0 icon-192.png)
grep -v -E '^\s*(<!doctype html>|<html lang="pt-BR">|</?head>|</?body>|</html>|<meta charset="utf-8">|<meta name="viewport"[^>]*>)\s*$' index.html \
  | sed "s#src=\"icon-192.png\"#src=\"data:image/png;base64,$PNG64\"#; s#href=\"icon-192.png\"#href=\"data:image/png;base64,$PNG64\"#" > terra-de-ninguem.html
