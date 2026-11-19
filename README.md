# Nuremberg

Guerra de trincheiras 20 contra 20 em 3D, no navegador (PC e celular).

- Até 7 jogadores reais por equipe; o resto são bots.
- O líder escolhe o nome da equipe e dá ordens (bandeiras A–E).
- 7 classes, todas armadas: Fuzileiro, Sniper, Médico, Engenheiro, Metralhador, Assalto e Rádio-operador.
- Vence quem conquista o território: bandeiras drenam os reforços do inimigo.

**Jogar:** https://nicolasilvar09-bit.github.io/nuremberg/

## Jogar com amigos
1. Toque em **Criar sala online** e mande o link (ou o código de 4 letras) para os amigos.
2. Quem abre o link cai direto na sala. Cada um escolhe time e classe; o líder de cada time escolhe o nome da equipe.
3. O anfitrião (quem criou) começa a partida. Bots completam os 20 contra 20.

Até 7 pessoas por sala (limite do plano gratuito do Supabase Realtime). A partida roda no aparelho do anfitrião:
ele precisa manter o jogo aberto e na tela. Quem sai no meio é substituído por um bot; quem entra no meio assume um bot.

Feito com Three.js e Supabase Realtime.

## Créditos dos modelos de armas (pasta `guns/`)
Os mesmos modelos usados no NK Mobile. Todos do Sketchfab, licença **CC BY 4.0** (https://creativecommons.org/licenses/by/4.0/).
Alterações: orientação e escala normalizadas, malha simplificada, texturas reduzidas, material trocado.
- Fuzil (M4A1): "M4A1" por TORI106 — https://sketchfab.com/3d-models/m4a1-33107f38b23c45cc8103768c0e961cdf
- Fuzil curto (SCAR): "Scar H Assault Rifle Black - free" por Rotuma — https://sketchfab.com/3d-models/scar-h-assault-rifle-black-free-55a0a5c139114747a31eb878ba19acc0
- Submetralhadora (UMP45): "Low-Poly UMP 45" por TastyTony — https://sketchfab.com/3d-models/low-poly-ump-45-4e8e3535e9d74c06b82066129ec18769
- Carabina (SKS): "Old Sks | Weapon Model" por CATholic — https://sketchfab.com/3d-models/old-sks-weapon-model-83c052440925489aa1df5960b1ecc6b2
- Metralhadora (M249): ".308 Machine Gun" por Johnathon Goswick — https://sketchfab.com/models/4ca5f52eef6244629770c56752b67583
- Rifle de precisão (M24): "M24 Bounty Hunter Sniper Rifle" por Naudaff3D — https://sketchfab.com/3d-models/m24-bounty-hunter-sniper-rifle-d40e74e2259549f5b025807163f1028c
- Escopeta (SPAS-12): "Low-Poly SPAS-12" por TastyTony — https://sketchfab.com/3d-models/low-poly-spas-12-c95154ea2348443e9195250a6ad122cb
- Pistola (M1911): "Colt M1911" por b0ho — https://sketchfab.com/3d-models/colt-m1911-6b20f04b583a4c4a9d009c0412f01678

Braços, luvas e o resto do jogo são feitos por código.
