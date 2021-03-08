;;; articles.el -- My articles  -*- lexical-binding: t; -*-

;;; Commentary:

;; Just a bunch of articles in org-mode. An HTML version is available online at
;; https://cfclrk.com/articles.

;;; Code:
(require 'site)
(require 'ox-html)

(defconst articles/project-directory
  (file-name-directory (or load-file-name buffer-file-name)))

(defconst articles/org-project-articles
  `("articles"
    :recursive t
    :base-directory ,(expand-file-name "org" articles/project-directory)
    :publishing-directory ,(expand-file-name "articles" site/publishing-directory)
    :publishing-function org-html-publish-to-html
    :exclude "setup\\.org"
    :auto-sitemap t
    :sitemap-title "Articles"
    :html-head-include-scripts nil
    :html-head-include-default-style nil
    :with-creator nil
    :with-author nil
    :section-numbers nil
    :html-preamble site/site-preamble
    :html-self-link-headlines t
    :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"/static/main.css\" />"))

(provide 'articles)
;;; articles.el ends here
