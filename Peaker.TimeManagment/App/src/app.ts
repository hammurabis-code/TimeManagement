import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient } from 'aurelia-fetch-client';
import { Router, RouterConfiguration, Redirect } from 'aurelia-router';
import { ApplicationState } from './application-state';
import { Constants } from './Models/Models';
import { RouteConfigs } from './routeConfigs';
import 'fetch';

@autoinject
export class App {
  public router: Router;

  constructor(private appState: ApplicationState) {
    this.appState = appState;
  }


  public configureRouter(config: RouterConfiguration, router: Router) {
    config.title = 'Peaker Job Cost';
    config.map([
      {
        route: ['', 'login'],
        moduleId: './login',
        nav: false, title: 'Login',
        role: 'User'
      },
      {
        route: ['entry', 'entry/:submitted'],
        name: 'entry',
        moduleId: './entry',
        nav: true,
        auth: false,
        title: 'New Entry',
        role: 'User'
      },
      {
        route: 'review',
        moduleId: './review-entries',
        nav: true,
        auth: true,
        title: 'Review',
        role: 'User'
      },
      {
        route: 'submit',
        moduleId: './submit',
        nav: false,
        auth: true,
        title: 'Review/Submit',
        role: 'User'
      },
      {
        route: 'edit',
        moduleId: './edit-entry',
        nav: false,
        auth: true,
        title: 'Edit Entry',
        name: 'edit',
        role: 'User'
      },
      {
        route: 'profile',
        moduleId: './profile',
        nav: true,
        auth: true,
        title: 'Profile',
        name: "Profile",
        role: 'User'
      },
      {
        route: 'admin',
        moduleId: './views/admin-view',
        nav: true,
        auth: true,
        title: 'Admin',
        name: "Admin",
        role: 'Admin'
      },
      {
        route: 'workCodeEdit',
        moduleId: './views/work-code-edit',
        nav: false,
        auth: true,
        title: 'Edit Work Codes',
        name: "editWorkCodes",
        role: 'Admin'
      },
      {
        route: 'createUsers',
        moduleId: './views/create-user',
        nav: false,
        auth: true,
        title: 'Create Users',
        name: "createUsers",
        role: 'Admin'
      },
      {
        route: 'manageRoles',
        moduleId: './views/manage-roles',
        nav: false,
        auth: true,
        title: 'Manage Roles',
        name: "manageRoles",
        role: 'Admin'
      },
      {
        route: 'adminReview',
        moduleId: './views/admin-review',
        nav: false,
        auth: true,
        title: 'Admine Review',
        name: "adminReview",
        role: 'Admin'
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
    }
    return next();

  }

  static isLoggedIn(): boolean {
    console.log('isLoggedIn: ' + Constants.tokenName);
    console.log(localStorage.getItem(Constants.tokenName));
    var auth_token = localStorage.getItem(Constants.tokenName);
    console.log(auth_token);
    return (typeof auth_token !== "undefined" && auth_token !== null);
  }
}