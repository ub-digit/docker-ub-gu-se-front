class RepositoryController < ApplicationController
  def index
    @repos = [
      "ansible-demo-apache",
      "bibmet-base",
      "devdoc",
      "devdocwiki",
      "dflow-backend",
      "dflow-frontend",
      "dflow-postgres",
      "docker.ub.gu.se/bibmet-base",
      "ember",
      "ember-deploy",
      "ember-dev",
      "envwebtest",
      "eresdoc",
      "fjarrkontrollen-forms",
      "gena-server",
      "gub-apache-2",
      "gub-apache2",
      "gukort2-mq-cardnum",
      "gukort2-mq-receiver",
      "gup-backend",
      "gup-database",
      "gup-ember",
      "gup-frontend",
      "gup-mq-sender",
      "gup-postgres",
      "gup-solr",
      "gupea",
      "haproxy",
      "jruby-ibm",
      "koha-base",
      "koha-devbox",
      "koha-inter",
      "koha-master",
      "koha2pg",
      "legimuslinks",
      "marcdb",
      "mediawiki",
      "mutt",
      "noad",
      "ojs",
      "rails",
      "rails-base",
      "rails-bestall",
      "rails-bibliotekskort",
      "rails-ruby",
      "tmsok",
      "ubdeploy",
      "urungi",
      "xanjoo/cowsay",
      "xanjoo/gup-mq-receiver",
      "xanjoo/gup-mq-sender",
      "xanjoo/tmsok",
      "xberns/dblist-db",
      "xberns/dblist-ex",
      "xberns/envwebtest",
      "xberns/experiment-ubuntu"
      ]
  end
  def show
    @repo = {
      "name": "gup-mq-sender",
      "tags": [
        "release-20200409-1248",
        "release-20200409-1412"
      ]
      }
  end
end
