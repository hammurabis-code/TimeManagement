System.config({
  defaultJSExtensions: true,
  transpiler: false,
  paths: {
    "*": "dist/*",
    "github:*": "jspm_packages/github/*",
    "npm:*": "jspm_packages/npm/*"
  },
  meta: {
    "bootstrap": {
      "deps": [
        "jquery"
      ]
    }
  },
  map: {
    "aurelia-animator-css": "npm:aurelia-animator-css@1.0.0",
    "aurelia-bootstrapper": "npm:aurelia-bootstrapper@1.0.0",
    "aurelia-dialog": "npm:aurelia-dialog@1.0.0-beta.3.0.1",
    "aurelia-fetch-client": "npm:aurelia-fetch-client@1.0.0",
    "aurelia-framework": "npm:aurelia-framework@1.0.0",
    "aurelia-history-browser": "npm:aurelia-history-browser@1.0.0",
    "aurelia-http-client": "npm:aurelia-http-client@1.0.3",
    "aurelia-i18n": "npm:aurelia-i18n@1.2.1",
    "aurelia-loader-default": "npm:aurelia-loader-default@1.0.0",
    "aurelia-logging-console": "npm:aurelia-logging-console@1.0.0",
    "aurelia-pal-browser": "npm:aurelia-pal-browser@1.0.0",
    "aurelia-polyfills": "npm:aurelia-polyfills@1.0.0",
    "aurelia-router": "npm:aurelia-router@1.0.2",
    "aurelia-templating-binding": "npm:aurelia-templating-binding@1.0.0",
    "aurelia-templating-resources": "npm:aurelia-templating-resources@1.1.1",
    "aurelia-templating-router": "npm:aurelia-templating-router@1.0.0",
    "bluebird": "npm:bluebird@3.4.1",
    "bootstrap": "github:twbs/bootstrap@3.3.7",
    "bootstrap-datepicker": "npm:bootstrap-datepicker@1.6.4",
    "fetch": "github:github/fetch@1.0.0",
    "font-awesome": "npm:font-awesome@4.6.3",
    "jquery": "npm:jquery@3.1.1",
    "moment": "npm:moment@2.17.0",
    "select2": "github:select2/select2@4.0.3",
    "text": "github:systemjs/plugin-text@0.0.8",
    "toastr": "github:CodeSeven/toastr@2.1.3",
    "github:CodeSeven/toastr@2.1.3": {
      "css": "github:systemjs/plugin-css@0.1.32",
      "jquery": "github:components/jquery@3.1.1"
    },
    "github:jspm/nodelibs-assert@0.1.0": {
      "assert": "npm:assert@1.4.1"
    },
    "github:jspm/nodelibs-buffer@0.1.0": {
      "buffer": "npm:buffer@3.6.0"
    },
    "github:jspm/nodelibs-process@0.1.2": {
      "process": "npm:process@0.11.9"
    },
    "github:jspm/nodelibs-util@0.1.0": {
      "util": "npm:util@0.10.3"
    },
    "github:jspm/nodelibs-vm@0.1.0": {
      "vm-browserify": "npm:vm-browserify@0.0.4"
    },
    "github:select2/select2@4.0.3": {
      "jquery": "npm:jquery@3.1.1"
    },
    "github:twbs/bootstrap@3.3.7": {
      "jquery": "github:components/jquery@3.1.1"
    },
    "npm:assert@1.4.1": {
      "assert": "github:jspm/nodelibs-assert@0.1.0",
      "buffer": "github:jspm/nodelibs-buffer@0.1.0",
      "process": "github:jspm/nodelibs-process@0.1.2",
      "util": "npm:util@0.10.3"
    },
    "npm:aurelia-animator-css@1.0.0": {
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-binding@1.0.9": {
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-task-queue": "npm:aurelia-task-queue@1.1.0"
    },
    "npm:aurelia-bootstrapper@1.0.0": {
      "aurelia-event-aggregator": "npm:aurelia-event-aggregator@1.0.0",
      "aurelia-framework": "npm:aurelia-framework@1.0.0",
      "aurelia-history": "npm:aurelia-history@1.0.0",
      "aurelia-history-browser": "npm:aurelia-history-browser@1.0.0",
      "aurelia-loader-default": "npm:aurelia-loader-default@1.0.0",
      "aurelia-logging-console": "npm:aurelia-logging-console@1.0.0",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-pal-browser": "npm:aurelia-pal-browser@1.0.0",
      "aurelia-polyfills": "npm:aurelia-polyfills@1.0.0",
      "aurelia-router": "npm:aurelia-router@1.0.2",
      "aurelia-templating": "npm:aurelia-templating@1.1.2",
      "aurelia-templating-binding": "npm:aurelia-templating-binding@1.0.0",
      "aurelia-templating-resources": "npm:aurelia-templating-resources@1.1.1",
      "aurelia-templating-router": "npm:aurelia-templating-router@1.0.0"
    },
    "npm:aurelia-dependency-injection@1.2.0": {
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-dialog@1.0.0-beta.3.0.1": {
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-event-aggregator@1.0.0": {
      "aurelia-logging": "npm:aurelia-logging@1.1.1"
    },
    "npm:aurelia-framework@1.0.0": {
      "aurelia-binding": "npm:aurelia-binding@1.0.9",
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-loader": "npm:aurelia-loader@1.0.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-path": "npm:aurelia-path@1.1.1",
      "aurelia-task-queue": "npm:aurelia-task-queue@1.1.0",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-history-browser@1.0.0": {
      "aurelia-history": "npm:aurelia-history@1.0.0",
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-http-client@1.0.3": {
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-path": "npm:aurelia-path@1.1.1"
    },
    "npm:aurelia-i18n@1.2.1": {
      "aurelia-binding": "npm:aurelia-binding@1.0.9",
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-event-aggregator": "npm:aurelia-event-aggregator@1.0.0",
      "aurelia-loader": "npm:aurelia-loader@1.0.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-templating": "npm:aurelia-templating@1.1.2",
      "aurelia-templating-resources": "npm:aurelia-templating-resources@1.1.1",
      "i18next": "npm:i18next@3.5.2",
      "intl": "npm:intl@1.2.5"
    },
    "npm:aurelia-loader-default@1.0.0": {
      "aurelia-loader": "npm:aurelia-loader@1.0.0",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-loader@1.0.0": {
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-path": "npm:aurelia-path@1.1.1"
    },
    "npm:aurelia-logging-console@1.0.0": {
      "aurelia-logging": "npm:aurelia-logging@1.1.1"
    },
    "npm:aurelia-metadata@1.0.2": {
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-pal-browser@1.0.0": {
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-polyfills@1.0.0": {
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-route-recognizer@1.0.0": {
      "aurelia-path": "npm:aurelia-path@1.1.1"
    },
    "npm:aurelia-router@1.0.2": {
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-event-aggregator": "npm:aurelia-event-aggregator@1.0.0",
      "aurelia-history": "npm:aurelia-history@1.0.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-path": "npm:aurelia-path@1.1.1",
      "aurelia-route-recognizer": "npm:aurelia-route-recognizer@1.0.0"
    },
    "npm:aurelia-task-queue@1.1.0": {
      "aurelia-pal": "npm:aurelia-pal@1.2.0"
    },
    "npm:aurelia-templating-binding@1.0.0": {
      "aurelia-binding": "npm:aurelia-binding@1.0.9",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-templating-resources@1.1.1": {
      "aurelia-binding": "npm:aurelia-binding@1.0.9",
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-loader": "npm:aurelia-loader@1.0.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-path": "npm:aurelia-path@1.1.1",
      "aurelia-task-queue": "npm:aurelia-task-queue@1.1.0",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-templating-router@1.0.0": {
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-path": "npm:aurelia-path@1.1.1",
      "aurelia-router": "npm:aurelia-router@1.0.2",
      "aurelia-templating": "npm:aurelia-templating@1.1.2"
    },
    "npm:aurelia-templating@1.1.2": {
      "aurelia-binding": "npm:aurelia-binding@1.0.9",
      "aurelia-dependency-injection": "npm:aurelia-dependency-injection@1.2.0",
      "aurelia-loader": "npm:aurelia-loader@1.0.0",
      "aurelia-logging": "npm:aurelia-logging@1.1.1",
      "aurelia-metadata": "npm:aurelia-metadata@1.0.2",
      "aurelia-pal": "npm:aurelia-pal@1.2.0",
      "aurelia-path": "npm:aurelia-path@1.1.1",
      "aurelia-task-queue": "npm:aurelia-task-queue@1.1.0"
    },
    "npm:bluebird@3.4.1": {
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:bootstrap-datepicker@1.6.4": {
      "fs": "github:jspm/nodelibs-fs@0.1.2",
      "jquery": "github:components/jquery@3.1.1",
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:buffer@3.6.0": {
      "base64-js": "npm:base64-js@0.0.8",
      "child_process": "github:jspm/nodelibs-child_process@0.1.0",
      "fs": "github:jspm/nodelibs-fs@0.1.2",
      "ieee754": "npm:ieee754@1.1.8",
      "isarray": "npm:isarray@1.0.0",
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:font-awesome@4.6.3": {
      "css": "github:systemjs/plugin-css@0.1.32"
    },
    "npm:i18next@3.5.2": {
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:inherits@2.0.1": {
      "util": "github:jspm/nodelibs-util@0.1.0"
    },
    "npm:intl@1.2.5": {
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:process@0.11.9": {
      "assert": "github:jspm/nodelibs-assert@0.1.0",
      "fs": "github:jspm/nodelibs-fs@0.1.2",
      "vm": "github:jspm/nodelibs-vm@0.1.0"
    },
    "npm:util@0.10.3": {
      "inherits": "npm:inherits@2.0.1",
      "process": "github:jspm/nodelibs-process@0.1.2"
    },
    "npm:vm-browserify@0.0.4": {
      "indexof": "npm:indexof@0.0.1"
    }
  },
  bundles: {
    "aurelia-fbbaeb6d69.js": [
      "github:CodeSeven/toastr@2.1.3.js",
      "github:CodeSeven/toastr@2.1.3/build/toastr.css!github:systemjs/plugin-css@0.1.32.js",
      "github:CodeSeven/toastr@2.1.3/build/toastr.min.css!github:systemjs/plugin-text@0.0.8.js",
      "github:CodeSeven/toastr@2.1.3/toastr.js",
      "github:components/jquery@3.1.1.js",
      "github:components/jquery@3.1.1/jquery.js",
      "github:github/fetch@1.0.0.js",
      "github:github/fetch@1.0.0/fetch.js",
      "github:select2/select2@4.0.3.js",
      "github:select2/select2@4.0.3/css/select2.min.css!github:systemjs/plugin-text@0.0.8.js",
      "github:select2/select2@4.0.3/js/select2.js",
      "npm:aurelia-animator-css@1.0.0.js",
      "npm:aurelia-animator-css@1.0.0/aurelia-animator-css.js",
      "npm:aurelia-binding@1.0.9.js",
      "npm:aurelia-binding@1.0.9/aurelia-binding.js",
      "npm:aurelia-bootstrapper@1.0.0.js",
      "npm:aurelia-bootstrapper@1.0.0/aurelia-bootstrapper.js",
      "npm:aurelia-dependency-injection@1.2.0.js",
      "npm:aurelia-dependency-injection@1.2.0/aurelia-dependency-injection.js",
      "npm:aurelia-event-aggregator@1.0.0.js",
      "npm:aurelia-event-aggregator@1.0.0/aurelia-event-aggregator.js",
      "npm:aurelia-fetch-client@1.0.0.js",
      "npm:aurelia-fetch-client@1.0.0/aurelia-fetch-client.js",
      "npm:aurelia-framework@1.0.0.js",
      "npm:aurelia-framework@1.0.0/aurelia-framework.js",
      "npm:aurelia-history-browser@1.0.0.js",
      "npm:aurelia-history-browser@1.0.0/aurelia-history-browser.js",
      "npm:aurelia-history@1.0.0.js",
      "npm:aurelia-history@1.0.0/aurelia-history.js",
      "npm:aurelia-http-client@1.0.3.js",
      "npm:aurelia-http-client@1.0.3/aurelia-http-client.js",
      "npm:aurelia-loader-default@1.0.0.js",
      "npm:aurelia-loader-default@1.0.0/aurelia-loader-default.js",
      "npm:aurelia-loader@1.0.0.js",
      "npm:aurelia-loader@1.0.0/aurelia-loader.js",
      "npm:aurelia-logging-console@1.0.0.js",
      "npm:aurelia-logging-console@1.0.0/aurelia-logging-console.js",
      "npm:aurelia-logging@1.1.1.js",
      "npm:aurelia-logging@1.1.1/aurelia-logging.js",
      "npm:aurelia-metadata@1.0.2.js",
      "npm:aurelia-metadata@1.0.2/aurelia-metadata.js",
      "npm:aurelia-pal-browser@1.0.0.js",
      "npm:aurelia-pal-browser@1.0.0/aurelia-pal-browser.js",
      "npm:aurelia-pal@1.2.0.js",
      "npm:aurelia-pal@1.2.0/aurelia-pal.js",
      "npm:aurelia-path@1.1.1.js",
      "npm:aurelia-path@1.1.1/aurelia-path.js",
      "npm:aurelia-polyfills@1.0.0.js",
      "npm:aurelia-polyfills@1.0.0/aurelia-polyfills.js",
      "npm:aurelia-route-recognizer@1.0.0.js",
      "npm:aurelia-route-recognizer@1.0.0/aurelia-route-recognizer.js",
      "npm:aurelia-router@1.0.2.js",
      "npm:aurelia-router@1.0.2/aurelia-router.js",
      "npm:aurelia-task-queue@1.1.0.js",
      "npm:aurelia-task-queue@1.1.0/aurelia-task-queue.js",
      "npm:aurelia-templating-binding@1.0.0.js",
      "npm:aurelia-templating-binding@1.0.0/aurelia-templating-binding.js",
      "npm:aurelia-templating-resources@1.1.1.js",
      "npm:aurelia-templating-resources@1.1.1/abstract-repeater.js",
      "npm:aurelia-templating-resources@1.1.1/analyze-view-factory.js",
      "npm:aurelia-templating-resources@1.1.1/array-repeat-strategy.js",
      "npm:aurelia-templating-resources@1.1.1/attr-binding-behavior.js",
      "npm:aurelia-templating-resources@1.1.1/aurelia-hide-style.js",
      "npm:aurelia-templating-resources@1.1.1/aurelia-templating-resources.js",
      "npm:aurelia-templating-resources@1.1.1/binding-mode-behaviors.js",
      "npm:aurelia-templating-resources@1.1.1/binding-signaler.js",
      "npm:aurelia-templating-resources@1.1.1/compose.js",
      "npm:aurelia-templating-resources@1.1.1/css-resource.js",
      "npm:aurelia-templating-resources@1.1.1/debounce-binding-behavior.js",
      "npm:aurelia-templating-resources@1.1.1/dynamic-element.js",
      "npm:aurelia-templating-resources@1.1.1/focus.js",
      "npm:aurelia-templating-resources@1.1.1/hide.js",
      "npm:aurelia-templating-resources@1.1.1/html-resource-plugin.js",
      "npm:aurelia-templating-resources@1.1.1/html-sanitizer.js",
      "npm:aurelia-templating-resources@1.1.1/if.js",
      "npm:aurelia-templating-resources@1.1.1/map-repeat-strategy.js",
      "npm:aurelia-templating-resources@1.1.1/null-repeat-strategy.js",
      "npm:aurelia-templating-resources@1.1.1/number-repeat-strategy.js",
      "npm:aurelia-templating-resources@1.1.1/repeat-strategy-locator.js",
      "npm:aurelia-templating-resources@1.1.1/repeat-utilities.js",
      "npm:aurelia-templating-resources@1.1.1/repeat.js",
      "npm:aurelia-templating-resources@1.1.1/replaceable.js",
      "npm:aurelia-templating-resources@1.1.1/sanitize-html.js",
      "npm:aurelia-templating-resources@1.1.1/set-repeat-strategy.js",
      "npm:aurelia-templating-resources@1.1.1/show.js",
      "npm:aurelia-templating-resources@1.1.1/signal-binding-behavior.js",
      "npm:aurelia-templating-resources@1.1.1/throttle-binding-behavior.js",
      "npm:aurelia-templating-resources@1.1.1/update-trigger-binding-behavior.js",
      "npm:aurelia-templating-resources@1.1.1/with.js",
      "npm:aurelia-templating-router@1.0.0.js",
      "npm:aurelia-templating-router@1.0.0/aurelia-templating-router.js",
      "npm:aurelia-templating-router@1.0.0/route-href.js",
      "npm:aurelia-templating-router@1.0.0/route-loader.js",
      "npm:aurelia-templating-router@1.0.0/router-view.js",
      "npm:aurelia-templating@1.1.2.js",
      "npm:aurelia-templating@1.1.2/aurelia-templating.js",
      "npm:bootstrap-datepicker@1.6.4.js",
      "npm:bootstrap-datepicker@1.6.4/dist/css/bootstrap-datepicker.min.css!github:systemjs/plugin-text@0.0.8.js",
      "npm:bootstrap-datepicker@1.6.4/dist/js/bootstrap-datepicker.js",
      "npm:jquery@3.1.1.js",
      "npm:jquery@3.1.1/dist/jquery.js",
      "npm:moment@2.17.0.js",
      "npm:moment@2.17.0/moment.js"
    ],
    "app-build-1826ba4e27.js": [
      "Models/ChangePassword.js",
      "Models/Constants.js",
      "Models/Department.js",
      "Models/EntryFilter.js",
      "Models/ExportType.js",
      "Models/Helper.js",
      "Models/JobNumber.js",
      "Models/Login.js",
      "Models/Models.js",
      "Models/Register.js",
      "Models/TimeEntry.js",
      "Models/User.js",
      "Models/UserInRole.js",
      "Models/UserInfoViewModel.js",
      "Models/UserListItem.js",
      "Models/UserRole.js",
      "Models/UserWorkCode.js",
      "Models/WorkCode.js",
      "Services/account.js",
      "Services/admin.js",
      "Services/file.js",
      "Services/services.js",
      "Services/time-entry-service.js",
      "Services/work-code-service.js",
      "Views/admin-view.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/admin-view.js",
      "Views/admin/admin-review.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/admin/admin-review.js",
      "Views/change-password.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/change-password.js",
      "Views/create-user.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/create-user.js",
      "Views/export.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/export.js",
      "Views/manage-roles.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/manage-roles.js",
      "Views/partials/entry-filter-form.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/partials/entry-filter-form.js",
      "Views/partials/entry-list.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/partials/entry-list.js",
      "Views/partials/loading.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/partials/loading.js",
      "Views/review-entries.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/review-entries.js",
      "Views/work-code-edit.html!github:systemjs/plugin-text@0.0.8.js",
      "Views/work-code-edit.js",
      "app.html!github:systemjs/plugin-text@0.0.8.js",
      "app.js",
      "application-state.js",
      "custom-attributes/datepicker.js",
      "custom-attributes/jobnumberinput.js",
      "custom-elements/action-confirm.html!github:systemjs/plugin-text@0.0.8.js",
      "custom-elements/action-confirm.js",
      "custom-elements/confirm.html!github:systemjs/plugin-text@0.0.8.js",
      "custom-elements/confirm.js",
      "custom-elements/delete.html!github:systemjs/plugin-text@0.0.8.js",
      "custom-elements/delete.js",
      "edit-entry.html!github:systemjs/plugin-text@0.0.8.js",
      "edit-entry.js",
      "entry.html!github:systemjs/plugin-text@0.0.8.js",
      "entry.js",
      "login.html!github:systemjs/plugin-text@0.0.8.js",
      "login.js",
      "main.js",
      "nav-bar.html!github:systemjs/plugin-text@0.0.8.js",
      "nav-bar.js",
      "profile.html!github:systemjs/plugin-text@0.0.8.js",
      "profile.js",
      "routeConfigs.js",
      "submit.html!github:systemjs/plugin-text@0.0.8.js",
      "submit.js",
      "value-converters/date.js",
      "value-converters/hour.js"
    ]
  },
  depCache: {
    "app.js": [
      "aurelia-dependency-injection",
      "aurelia-fetch-client",
      "aurelia-router",
      "./application-state",
      "./Models/Models",
      "fetch"
    ],
    "application-state.js": [
      "aurelia-dependency-injection",
      "./Services/services",
      "aurelia-router"
    ],
    "custom-attributes/datepicker.js": [
      "aurelia-framework",
      "bootstrap-datepicker"
    ],
    "custom-attributes/jobnumberinput.js": [
      "aurelia-framework"
    ],
    "custom-elements/action-confirm.js": [
      "aurelia-framework",
      "aurelia-dialog",
      "./confirm"
    ],
    "custom-elements/confirm.js": [
      "aurelia-framework",
      "aurelia-dialog"
    ],
    "custom-elements/delete.js": [
      "aurelia-framework",
      "aurelia-dialog",
      "./confirm"
    ],
    "edit-entry.js": [
      "aurelia-router",
      "aurelia-framework",
      "./Models/models",
      "./application-state",
      "./Services/time-entry-service",
      "toastr"
    ],
    "entry.js": [
      "aurelia-framework",
      "./models/models",
      "./application-state",
      "aurelia-router",
      "./Services/Services",
      "toastr"
    ],
    "login.js": [
      "aurelia-dependency-injection",
      "./application-state",
      "aurelia-router",
      "./Models/Models",
      "./Services/Services"
    ],
    "main.js": [
      "bootstrap"
    ],
    "Models/Helper.js": [
      "./Constants"
    ],
    "Models/Models.js": [
      "./Login",
      "./ChangePassword",
      "./Constants",
      "./Department",
      "./JobNumber",
      "./Register",
      "./TimeEntry",
      "./User",
      "./UserRole",
      "./WorkCode",
      "./EntryFilter",
      "./UserWorkCode",
      "./Helper",
      "./UserInfoViewModel",
      "./UserInRole",
      "./UserListItem",
      "./ExportType"
    ],
    "Models/TimeEntry.js": [
      "aurelia-framework",
      "./userworkcode"
    ],
    "nav-bar.js": [
      "aurelia-framework",
      "./application-state",
      "aurelia-router"
    ],
    "profile.js": [
      "aurelia-dependency-injection",
      "aurelia-router",
      "./application-state",
      "./Models/Models",
      "./Services/Services",
      "toastr"
    ],
    "Services/account.js": [
      "aurelia-dependency-injection",
      "aurelia-fetch-client",
      "../Models/Models"
    ],
    "Services/admin.js": [
      "aurelia-fetch-client",
      "aurelia-dependency-injection",
      "../Models/Models"
    ],
    "Services/file.js": [
      "aurelia-http-client",
      "aurelia-dependency-injection",
      "../Models/Models"
    ],
    "Services/services.js": [
      "./account",
      "./time-entry-service",
      "./work-code-service",
      "./admin",
      "./file"
    ],
    "Services/time-entry-service.js": [
      "aurelia-fetch-client",
      "aurelia-dependency-injection",
      "../Models/Models"
    ],
    "Services/work-code-service.js": [
      "aurelia-dependency-injection",
      "aurelia-fetch-client",
      "../Models/Models"
    ],
    "submit.js": [
      "aurelia-router",
      "aurelia-dependency-injection",
      "./application-state",
      "./Services/Services"
    ],
    "value-converters/date.js": [
      "moment"
    ],
    "Views/admin-view.js": [
      "aurelia-router",
      "aurelia-dependency-injection",
      "../application-state",
      "../Services/services",
      "toastr"
    ],
    "Views/admin/admin-review.js": [
      "aurelia-framework",
      "aurelia-router",
      "aurelia-dependency-injection",
      "../../Models/Models",
      "../../application-state",
      "../../Services/services",
      "moment",
      "toastr"
    ],
    "Views/change-password.js": [
      "../models/models",
      "../Services/services",
      "aurelia-router",
      "aurelia-dependency-injection",
      "toastr",
      "../application-state"
    ],
    "Views/create-user.js": [
      "aurelia-router",
      "aurelia-dependency-injection",
      "../application-state",
      "../Services/services",
      "toastr"
    ],
    "Views/export.js": [
      "aurelia-framework",
      "aurelia-router",
      "aurelia-dependency-injection",
      "../Models/Models",
      "../application-state",
      "../Services/services",
      "toastr"
    ],
    "Views/manage-roles.js": [
      "aurelia-framework",
      "../services/services",
      "aurelia-router",
      "toastr",
      "../application-state"
    ],
    "Views/partials/entry-filter-form.js": [
      "aurelia-dependency-injection",
      "../../Models/Models",
      "aurelia-framework",
      "../../Services/services",
      "../../Application-State"
    ],
    "Views/partials/loading.js": [
      "aurelia-framework"
    ],
    "Views/review-entries.js": [
      "aurelia-framework",
      "aurelia-router",
      "aurelia-dependency-injection",
      "../Models/Models",
      "../application-state",
      "../Services/Services",
      "toastr"
    ],
    "Views/work-code-edit.js": [
      "aurelia-framework",
      "../services/services",
      "aurelia-router",
      "toastr",
      "../application-state"
    ]
  }
});