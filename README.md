# Skills-for-content-creation

Набор скиллов для Claude: контент-стратегия, карусели, сценарии Reels, монтаж коротких видео.

## Скиллы

| Скилл | Что делает |
|---|---|
| `reels-scenario-writer` | Вирусные сценарии Reels/TikTok/Shorts: хук, сценарий, CTA |
| `viral-carousel` | Тексты Instagram-каруселей (экспертный и развлекательный формат) |
| `carousel-builder` | Готовая карусель 1080×1350: слайды PNG, PDF, ZIP |
| `content-multiplier` | Одна идея → карусель + 5 Reels + посты + сторис + лид-магнит |
| `reels-montage-map` | Монтажная карта для Reels «говорящая голова + вставки» |
| `short-video-editing-coach` | Коуч по монтажу: CapCut, Premiere, DaVinci, Final Cut |

## Установка

**Как плагин Claude Code** (обновляется командой `/plugin update`):
```
/plugin marketplace add askorokhod2020-pixel/Skills-for-content-creation
/plugin install content-creation-skills@content-creation
```

**Копированием в проект или глобально:**
```bash
git clone https://github.com/askorokhod2020-pixel/Skills-for-content-creation
cd Skills-for-content-creation
./install.sh /путь/к/проекту     # в <проект>/.claude/skills
./install.sh --global            # в ~/.claude/skills
```
Для обновления: `git pull && ./install.sh ...`.

## Как добавить или обновить скилл

1. Положите папку скилла в `skills/<имя>/` (внутри обязателен `SKILL.md` с `name` и `description`).
2. Добавьте строку в таблицу выше, поднимите `version` в `.claude-plugin/plugin.json`.
3. `git commit && git push`.
