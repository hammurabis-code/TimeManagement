export class RouteConfigs {
    public static readonly defaultConfig = [
        {
            route: ['', 'login'],
            moduleId: './login',
            nav: false, title: 'Login'
        }
    ];
    public static readonly userConfig = [
        {
            route: ['', 'login'],
            moduleId: './login',
            nav: false, title: 'Login'
        },
        {
            route: ['entry', 'entry/:submitted'],
            name: 'entry',
            moduleId: './entry',
            nav: true,
            auth: true,
            title: 'New Entry'
        },
        {
            route: 'review',
            moduleId: './review-entries',
            nav: true,
            auth: true,
            title: 'Review'
        },
        {
            route: 'submit',
            moduleId: './submit',
            nav: false,
            auth: true,
            title: 'Review/Submit'
        },
        {
            route: 'edit/:id',
            moduleId: './/edit-entry',
            nav: false,
            auth: true,
            title: 'Edit Entry',
            name: 'edit'
        },
        {
            route: 'profile',
            moduleId: './profile',
            nav: true,
            auth: true,
            title: 'Profile',
            name: "Profile"
        }
    ];
    public static readonly adminConfig = [
        {
            route: ['', 'login'],
            moduleId: './login',
            nav: false, title: 'Login'
        },
        {
            route: ['entry', 'entry/:submitted'],
            name: 'entry',
            moduleId: './entry',
            nav: true,
            auth: true,
            title: 'New Entry'
        },
        {
            route: 'review',
            moduleId: './review-entries',
            nav: true,
            auth: true,
            title: 'Review'
        },
        {
            route: 'submit',
            moduleId: './submit',
            nav: false,
            auth: true,
            title: 'Review/Submit'
        },
        {
            route: 'edit/:id',
            moduleId: './/edit-entry',
            nav: false,
            auth: true,
            title: 'Edit Entry',
            name: 'edit'
        },
        {
            route: 'profile',
            moduleId: './profile',
            nav: true,
            auth: true,
            title: 'Profile',
            name: "Profile"
        },
        {
            route: 'admin',
            moduleId: './views/admin',
            nav: true,
            auth: true,
            title: 'Admin',
            name: "Admin"
        },
        {
            route: 'workCodeEdit',
            moduleId: './views/work-code-edit',
            nav: false,
            auth: true,
            title: 'Edit Work Codes',
            name: "editWorkCodes"
        },
    ];

}