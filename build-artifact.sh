#!/bin/sh
# Gera terra-de-ninguem.html (versão do artifact) a partir do index.html:
# tira as tags de documento que o artifact já coloca, embute o ícone e os modelos das armas (guns/*.glb).
cd "$(dirname "$0")"
node -e '
const fs = require("fs");
let s = fs.readFileSync("index.html", "utf8");
s = s.split(/\r?\n/).filter(l => !/^\s*(<!doctype html>|<html lang="pt-BR">|<\/?head>|<\/?body>|<\/html>|<meta charset="utf-8">|<meta name="viewport"[^>]*>)\s*$/.test(l)).join("\n");
const png = "data:image/png;base64," + fs.readFileSync("icon-192.png").toString("base64");
s = s.split("src=\"icon-192.png\"").join("src=\"" + png + "\"").split("href=\"icon-192.png\"").join("href=\"" + png + "\"");
const guns = {};
for (const f of fs.readdirSync("guns")) if (f.endsWith(".glb")) guns[f.slice(0, -4)] = "data:model/gltf-binary;base64," + fs.readFileSync("guns/" + f).toString("base64");
const tag = "GLTFLoader.js\"></script>";
const i = s.indexOf(tag); if (i < 0) throw new Error("GLTFLoader tag não encontrada");
s = s.slice(0, i + tag.length) + "\n<script>window.GUN_DATA=" + JSON.stringify(guns) + ";</script>" + s.slice(i + tag.length);
fs.writeFileSync("terra-de-ninguem.html", s);
'
