#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QDebug>
#include <QMainWindow>
#include <QSqlError>
#include <QSqlQuery>
#include <QSqlQueryModel>
#include <QTableView>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow {
    Q_OBJECT

public:
    explicit MainWindow(QWidget* parent = nullptr);
    ~MainWindow();

    QSqlDatabase db;
private slots:
    void on_pBAvaaDb_clicked();

    void on_pBshowMembers_clicked();

private:
    Ui::MainWindow* ui;
};

#endif // MAINWINDOW_H
