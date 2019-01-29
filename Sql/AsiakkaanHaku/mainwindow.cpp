#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget* parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pBAvaaDb_clicked()
{
    QString path;
    path = "Leiri";
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(path);
    if (!db.open()) {
        qDebug() << "Error: connection with database fail";
    } else {
        qDebug() << "Database: connection ok";
    }
}

void MainWindow::on_pBshowMembers_clicked()
{

    /*   QSqlQueryModel* model = new QSqlQueryModel;
    model->setQuery("SELECT last_name FROM sfc_number");
    QSqlError error = model->lastError();
    model->setHeaderData(0, Qt::Horizontal, tr("Name"));
    //  model->setHeaderData(1, Qt::Horizontal, tr("Salary"));

    QTableView* view = new QTableView;
    view->setModel(model);
    view->show();
*/

    bool success = false;
    QString name;
    int idName;
    QSqlQuery query("SELECT last_name FROM sfc_number");
    //   idName = query.record().indexOf("last_name");
    /*   if (query.exec()) {
        success = true;
    } else {
        qDebug() << "find Person error:  "
                 << query.lastError();
    }*/
    idName = query.first();

    do {
        name = query.value("last_name").toString();
        qDebug() << name;
    } while (query.next());
}
