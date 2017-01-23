import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient } from 'aurelia-fetch-client';
import { Router, RouterConfiguration, Redirect } from 'aurelia-router';
import { ApplicationState } from './application-state';
import { Constants } from './Models/Models';
import 'fetch';

@autoinject
export class App {
  public router: Router;

  constructor(private appState: ApplicationState) {
  }


  public configureRouter(config: RouterConfiguration, router: Router) {
    config.title = 'Peaker Job Cost';
    config.map([
      {
        route: ['', 'login'],
        moduleId: './login',
        nav: false, title: 'Login',
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: ['entry', 'entry/:submitted'],
        name: 'entry',
        moduleId: './entry',
        nav: true,
        auth: false,
        title: 'New Entry',
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: 'review',
        moduleId: './review-entries',
        nav: true,
        auth: true,
        title: 'Review',
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: 'submit',
        moduleId: './submit',
        nav: false,
        auth: true,
        title: 'Review/Submit',
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: 'edit',
        moduleId: './edit-entry',
        nav: false,
        auth: true,
        title: 'Edit Entry',
        name: 'edit',
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: 'profile',
        moduleId: './profile',
        nav: true,
        auth: true,
        title: 'Profile',
        name: "Profile",
        settings: { roles: ['User'], adminView: false }
      },
      {
        route: 'admin',
        moduleId: './views/admin-view',
        nav: true,
        auth: true,
        title: 'Admin',
        name: "Admin",
        settings: { roles: ['Admin'], adminView: true }
      },
      {
        route: 'workCodeEdit',
        moduleId: './views/work-code-edit',
        nav: false,
        auth: true,
        title: 'Edit Work Codes',
        name: "editWorkCodes",
        settings: { roles: ['Admin'], adminView: true }
      },
      {
        route: 'createUsers',
        moduleId: './views/create-user',
        nav: false,
        auth: true,
        title: 'Create Users',
        name: "createUsers",
        settings: { roles: ['Admin'], adminView: true }
      },
      {
        route: 'manageRoles',
        moduleId: './views/manage-roles',
        nav: false,
        auth: true,
        title: 'Manage Roles',
        name: "manageRoles",
        settings: { roles: ['Admin'], adminView: true }
      },
      {
        route: 'adminReview',
        moduleId: './views/admin-review',
        nav: false,
        auth: true,
        title: 'Admine Review',
        name: "adminReview",
        settings: { roles: ['Admin'], adminView: true }
      },
      //{ route: 'admin', moduleId: './Views/admin', nav: true, auth: true, title: 'Administration' }, //this.appState.isLoggedIn
    ]);
    config.addPipelineStep('authorize', AuthorizeStep);

    this.router = router;
  }
}

@autoinject
export class AuthorizeStep {

  constructor(private appState: ApplicationState, private client: HttpClient) {
  }

  run(routingContext, next) {
    if (routingContext.getAllInstructions().some(i => i.config.auth)) {
      if (!this.appState.loggedIn) {
        this.appState.returnRoute = routingContext.config.route;
        return next.cancel(new Redirect('login'));
      }
      if (routingContext.getAllInstructions().some(i => i.config.settings.roles.indexOf('Admin') !== -1)) {
        console.log(this.appState.isInRole('Admin'));

        var isAdmin = this.appState.isInRole('Admin');
        if (!isAdmin) {
          return next.cancel(new Redirect('entry'));
        }
      }
    }
    return next();

  }

  static isLoggedIn(): boolean {
    var auth_token = localStorage.getItem(Constants.tokenName);
    return (typeof auth_token !== "undefined" && auth_token !== null);
  }
}