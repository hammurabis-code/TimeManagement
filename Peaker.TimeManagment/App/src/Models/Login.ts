export class Login {
    grant_type: string;
    username: string;
    password: string;

    constructor(email: string, password: string) {
        this.grant_type = "password";
        this.username = email;
        this.password = password;
    }
}