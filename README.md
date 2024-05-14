# Локализация документации

## Требования

- Python
- [Sphinx](http://www.sphinx-doc.org/)
- [MyST parser](https://myst-parser.readthedocs.io/en/latest/intro.html)
- [Sphinx markdown builder](https://pypi.org/project/sphinx-markdown-builder/)

### Workflow

Команды выполнять в папке docs

1. make gettext

2. sphinx-intl update -p build/gettext -l ru

3. Перевести .po файлы в редактора файлов .po (Poedit, Gtranslator etc.) в папке docs/source/locale/ru/LC_MESSAGES

4. Сгенерировать  локлизованные .md файлы
sphinx-build -b markdown -D language=ru ./source ./guide/ru

5. Посмотреть статистику sphinx-intl stat
