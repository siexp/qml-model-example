#pragma once

#include <QObject>
#include <QDate>

class User : public QObject
{
    Q_OBJECT
public:
    explicit User(QObject *parent = nullptr);
    User(qint64 id, QString username, QDate birthday);

    Q_PROPERTY(QString username MEMBER _username NOTIFY usernameChanged)
    Q_PROPERTY(QDate birthday MEMBER _birthday NOTIFY birthdayChanged)

signals:
    void usernameChanged();
    void birthdayChanged();

private:
    qint64  _id;
    QString _username;
    QDate   _birthday;
};
