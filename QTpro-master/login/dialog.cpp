#include "dialog.h"
#include "ui_dialog.h"
#include <QStandardPaths>
//#define Path_to_DB "C:\\Users\\bajra\\qtaccount\\DatabaseLoginForm\\Accounts.sqlite"

Dialog::Dialog(QWidget* parent)
    : QDialog(parent)
    , ui(new Ui::Dialog)
{
    ui->setupUi(this);

    //QString path;
    //  path = "Accounts";
    //myDB = QSqlDatabase::addDatabase("QSQLITE");
    //myDB.setDatabaseName(path);
    //if (!myDB.open()) {
    //  qDebug() << "Error: connection with database fail";
    //} else {
    //  qDebug() << "Database: connection ok";
    //  }

    myDB = QSqlDatabase::addDatabase("QSQLITE");

    QString pathToDB = "Accounts.sqlite";
    myDB.setDatabaseName(pathToDB);

    QFileInfo checkFile(pathToDB);

    if (checkFile.isFile()) {
        if (myDB.open()) {
            ui->lblResult->setText("[+] Connected to Database File");
        } else {
            ui->lblResult->setText("[!] Database File was not opened");
        }
    } else {
        ui->lblResult->setText("[!] Database File does not exist");
    }
}

Dialog::~Dialog()
{
    delete ui;
    qDebug() << "Closing the connection to Database file on exist";
    myDB.close();
}

void Dialog::on_btnClear_clicked()
{
    ui->txtUser->setText("");
    ui->txtPass->setText("");
}

void Dialog::on_btnLogin_clicked()
{
    QString Username, Password;

    Username = ui->txtUser->text();
    Password = ui->txtPass->text();

    if (!myDB.isOpen()) {
        qDebug() << "No connection to Database";
        return;
    }

    QSqlQuery qry;
    if (qry.prepare("SELECT Username,Password,Role FROM Users WHERE Username=\'" + Username + "\' AND Password=\'" + Password + "\'")) {
        if (qry.next()) {
            ui->lblResult->setText("[+] Valid Username and Password");
            QString msg = "Username = " + qry.value(0).toString() + "\n" + "Password = " + qry.value(1).toString() + "\n" + "Role = " + qry.value(2).toString() + "\n";
            QMessageBox::warning(this, "Login was successful", msg);
        } else {
            ui->lblResult->setText("[-] Wrong Username or Password");
        }
    } else {
        ui->lblResult->setText("[-] Wrong query");
    }
}
