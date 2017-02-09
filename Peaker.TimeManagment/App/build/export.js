// this file provides a list of unbundled files that
// need to be included when exporting the application
// for production.
module.exports = {
  'list': [
    'index.html',
    'jspm_packages/npm/bluebird@3.4.1/js/browser/bluebird.min.js',
    'jspm_packages/system.js',
    'config.js',
    'jspm_packages/github/twbs/bootstrap@3.3.7/js/*',
    'jspm_packages/github/twbs/bootstrap@3.3.7/css/*',
    'jspm_packages/github/twbs/bootstrap@3.3.7/fonts/*',
    'jspm_packages/github/twbs/bootstrap@3.3.7.js',
    'jspm_packages/github/github/fetch@1.0.0.js',
    'jspm_packages/github/github/fetch@1.0.0/fetch.js',
    'jspm_packages/github/CodeSeven/toastr@2.1.3.js',
    'jspm_packages/github/CodeSeven/toastr@2.1.3/toastr.js',
    'jspm_packages/github/CodeSeven/toastr@2.1.3/build/toastr.min.css',
    'jspm_packages/github/components/jquery@3.1.1.js',
    'jspm_packages/github/components/jquery@3.1.1/jquery.js',
    'jspm_packages/npm/bootstrap-datepicker@1.6.4.js',
    'jspm_packages/npm/bootstrap-datepicker@1.6.4/dist/js/bootstrap-datepicker.js',
    'jspm_packages/npm/bootstrap-datepicker@1.6.4/dist/css/bootstrap-datepicker.min.css',
    'jspm_packages/github/select2/select2@4.0.3.js',
    'jspm_packages/github/select2/select2@4.0.3/js/select2.js',
    'jspm_packages/github/select2/select2@4.0.3/css/select2.min.css',
    'jspm_packages/npm/aurelia-dialog@1.0.0-beta.3.0.1.js',
    'jspm_packages/npm/aurelia-dialog@1.0.0-beta.3.0.1/*.js',
    'jspm_packages/npm/moment@2.15.2.js',
    'jspm_packages/npm/moment@2.15.2/moment.js',
    'jspm_packages/system-polyfills.js',
    'jspm_packages/system-csp-production.js',
    'LICENSE',
    'styles/styles.css',
    'styles/elements.css',
    'styles/border.css'
  ],
  // this section lists any jspm packages that have
  // unbundled resources that need to be exported.
  // these files are in versioned folders and thus
  // must be 'normalized' by jspm to get the proper
  // path.
  'normalize': [
    [
      // include font-awesome.css and its fonts files
      'font-awesome', [
        '/css/font-awesome.min.css',
        '/fonts/*'
      ]
    ], [
      // include bootstrap's font files
      'bootstrap', [
        '/fonts/*'
      ]
    ], [
      'bluebird', [
        '/js/browser/bluebird.min.js'
      ]
    ]
  ]
};
