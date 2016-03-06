/********************************************************************************
** Form generated from reading UI file 'flipper_control.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FLIPPER_CONTROL_H
#define UI_FLIPPER_CONTROL_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QGraphicsView>
#include <QtGui/QGridLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLCDNumber>
#include <QtGui/QLabel>
#include <QtGui/QSlider>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_FlipperControlWidget
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *lableName;
    QGridLayout *gridLayout;
    QSlider *sliderRear;
    QLCDNumber *lcdNumFrontPose;
    QLCDNumber *lcdNumFrontGoal;
    QLCDNumber *lcdNumRearPose;
    QLCDNumber *lcdNumRearGoal;
    QLabel *lableFront;
    QLabel *lableRear;
    QSlider *sliderFront;
    QGraphicsView *modelGraphicView;

    void setupUi(QWidget *FlipperControlWidget)
    {
        if (FlipperControlWidget->objectName().isEmpty())
            FlipperControlWidget->setObjectName(QString::fromUtf8("FlipperControlWidget"));
        FlipperControlWidget->setEnabled(true);
        FlipperControlWidget->resize(386, 189);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(FlipperControlWidget->sizePolicy().hasHeightForWidth());
        FlipperControlWidget->setSizePolicy(sizePolicy);
        verticalLayout = new QVBoxLayout(FlipperControlWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        lableName = new QLabel(FlipperControlWidget);
        lableName->setObjectName(QString::fromUtf8("lableName"));
        lableName->setAlignment(Qt::AlignCenter);

        verticalLayout->addWidget(lableName);

        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        sliderRear = new QSlider(FlipperControlWidget);
        sliderRear->setObjectName(QString::fromUtf8("sliderRear"));
        sliderRear->setMinimum(-180);
        sliderRear->setMaximum(180);
        sliderRear->setSliderPosition(0);
        sliderRear->setOrientation(Qt::Vertical);

        gridLayout->addWidget(sliderRear, 1, 3, 1, 1, Qt::AlignHCenter);

        lcdNumFrontPose = new QLCDNumber(FlipperControlWidget);
        lcdNumFrontPose->setObjectName(QString::fromUtf8("lcdNumFrontPose"));

        gridLayout->addWidget(lcdNumFrontPose, 2, 1, 1, 1);

        lcdNumFrontGoal = new QLCDNumber(FlipperControlWidget);
        lcdNumFrontGoal->setObjectName(QString::fromUtf8("lcdNumFrontGoal"));

        gridLayout->addWidget(lcdNumFrontGoal, 2, 0, 1, 1);

        lcdNumRearPose = new QLCDNumber(FlipperControlWidget);
        lcdNumRearPose->setObjectName(QString::fromUtf8("lcdNumRearPose"));

        gridLayout->addWidget(lcdNumRearPose, 2, 2, 1, 1);

        lcdNumRearGoal = new QLCDNumber(FlipperControlWidget);
        lcdNumRearGoal->setObjectName(QString::fromUtf8("lcdNumRearGoal"));

        gridLayout->addWidget(lcdNumRearGoal, 2, 3, 1, 1);

        lableFront = new QLabel(FlipperControlWidget);
        lableFront->setObjectName(QString::fromUtf8("lableFront"));
        lableFront->setAlignment(Qt::AlignCenter);

        gridLayout->addWidget(lableFront, 0, 0, 1, 2);

        lableRear = new QLabel(FlipperControlWidget);
        lableRear->setObjectName(QString::fromUtf8("lableRear"));
        lableRear->setAlignment(Qt::AlignCenter);

        gridLayout->addWidget(lableRear, 0, 2, 1, 2);

        sliderFront = new QSlider(FlipperControlWidget);
        sliderFront->setObjectName(QString::fromUtf8("sliderFront"));
        sliderFront->setMinimum(-1000);
        sliderFront->setMaximum(1000);
        sliderFront->setOrientation(Qt::Vertical);

        gridLayout->addWidget(sliderFront, 1, 0, 1, 1, Qt::AlignHCenter);

        modelGraphicView = new QGraphicsView(FlipperControlWidget);
        modelGraphicView->setObjectName(QString::fromUtf8("modelGraphicView"));

        gridLayout->addWidget(modelGraphicView, 1, 1, 1, 2);


        verticalLayout->addLayout(gridLayout);


        retranslateUi(FlipperControlWidget);

        QMetaObject::connectSlotsByName(FlipperControlWidget);
    } // setupUi

    void retranslateUi(QWidget *FlipperControlWidget)
    {
        FlipperControlWidget->setWindowTitle(QApplication::translate("FlipperControlWidget", "Image View", 0, QApplication::UnicodeUTF8));
        lableName->setText(QApplication::translate("FlipperControlWidget", "Flipper Control", 0, QApplication::UnicodeUTF8));
        lableFront->setText(QApplication::translate("FlipperControlWidget", "Front", 0, QApplication::UnicodeUTF8));
        lableRear->setText(QApplication::translate("FlipperControlWidget", "Rear", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class FlipperControlWidget: public Ui_FlipperControlWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FLIPPER_CONTROL_H
