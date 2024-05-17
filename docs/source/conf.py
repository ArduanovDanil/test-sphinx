# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Lumache'
copyright = '2024, Danil'
author = 'Danil'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ['myst_parser', 'sphinx_markdown_builder']

templates_path = ['_templates']
exclude_patterns = []

# https://myst-parser.readthedocs.io/en/v0.18.0/syntax/optional.html#syntax-header-anchors
myst_heading_anchors = 3

# -- Translate code blocks ---------------------------------------------------
# https://stackoverflow.com/questions/61248191/how-to-translate-comments-in-code-blocks-using-sphinx
gettext_additional_targets = ['literal-block']



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']

# -- Localization  -------------------------------------------------
locale_dirs = ['locale/']   # path is example but recommended.
gettext_compact = False     # optional.
