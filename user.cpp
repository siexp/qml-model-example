#include "user.h"

User::User(QObject *parent) : QObject(parent)
{

}

User::User(qint64 id, QString username, QDate birthday):
    _id{ id },
    _username{ username },
    _birthday{ birthday }
{

}
