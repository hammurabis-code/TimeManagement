module.exports = {
  "bundles": {
    "dist/app-build": {
      "includes": [
        "[**/*.js]",
        "**/*.html!text",
        "**/*.css!text"
      ],
      "options": {
        "inject": true,
        "minify": true,
        "depCache": true,
        "rev": true
      }
    },
    "dist/aurelia": {
      "includes": [
        "aurelia-framework",
        "aurelia-bootstrapper",
        "aurelia-fetch-client",
        "aurelia-router",
        "aurelia-animator-css",
        "aurelia-templating-binding",
        "aurelia-polyfills",
        "aurelia-templating-resources",
        "aurelia-templating-router",
        "aurelia-templating",
        "aurelia-loader-default",
        "aurelia-history-browser",
        "aurelia-logging-console",
        "aurelia-dialog",
        "font-awesome",
        "aurelia-authentication",
        "bootstrap",
        "bootstrap/css/bootstrap.css!text",
        "fetch",
        "jquery",
        "bootstrap-datepicker",
        "moment",
        'intl'
      ],
      "options": {
        "inject": true,
        "minify": true,
        "depCache": false,
        "rev": true
      }
    }
  }
};
