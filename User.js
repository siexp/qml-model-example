.pragma library

class User {
    constructor(id, username, birthday) {
        this._id        = id;
        this._username  = username;
        this._birthday  = birthday;
    }

    get id() {
        return this._id;
    }
    set id( value ) {
        this._id = value;
    }


    get username() {
        return this._username;
    }
    set username( value ) {
        this._username = value;
    }


    get birthday() {
        return this._birthday;
    }
    set birthday( value ) {
        this._birthday = value;
    }
}

var instance = new User(0, "User", new Date(1970, 1, 1));
