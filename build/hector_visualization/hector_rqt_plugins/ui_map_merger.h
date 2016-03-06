/********************************************************************************
** Form generated from reading UI file 'map_merger.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAP_MERGER_H
#define UI_MAP_MERGER_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QFrame>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MapMergerWidget
{
public:
    QVBoxLayout *vboxLayout;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QLabel *map_hector1_label;
    QLabel *map1_label;
    QSlider *map_hector1_horizontalSlider;
    QLineEdit *map_1_text;
    QVBoxLayout *verticalLayout_3;
    QLabel *map_hector2_label;
    QLabel *map2_label;
    QSlider *map_hector2_horizontalSlider;
    QLineEdit *map_2_text;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label;
    QCheckBox *use_stored_transform_checkBox;
    QLineEdit *stored_transform_text;
    QPushButton *store_current_transform_button;
    QPushButton *merge_button;
    QFrame *line;
    QLabel *text_label;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer;
    QHBoxLayout *horizontalLayout_3;
    QLabel *merged_map_label;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *save_geotiff_button;

    void setupUi(QWidget *MapMergerWidget)
    {
        if (MapMergerWidget->objectName().isEmpty())
            MapMergerWidget->setObjectName(QString::fromUtf8("MapMergerWidget"));
        MapMergerWidget->resize(400, 550);
        vboxLayout = new QVBoxLayout(MapMergerWidget);
        vboxLayout->setObjectName(QString::fromUtf8("vboxLayout"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        map_hector1_label = new QLabel(MapMergerWidget);
        map_hector1_label->setObjectName(QString::fromUtf8("map_hector1_label"));

        verticalLayout_2->addWidget(map_hector1_label);

        map1_label = new QLabel(MapMergerWidget);
        map1_label->setObjectName(QString::fromUtf8("map1_label"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(map1_label->sizePolicy().hasHeightForWidth());
        map1_label->setSizePolicy(sizePolicy);
        map1_label->setMinimumSize(QSize(20, 200));
        map1_label->setMaximumSize(QSize(200, 16777215));
        map1_label->setLayoutDirection(Qt::LeftToRight);
        map1_label->setAutoFillBackground(true);

        verticalLayout_2->addWidget(map1_label);

        map_hector1_horizontalSlider = new QSlider(MapMergerWidget);
        map_hector1_horizontalSlider->setObjectName(QString::fromUtf8("map_hector1_horizontalSlider"));
        map_hector1_horizontalSlider->setMaximum(0);
        map_hector1_horizontalSlider->setOrientation(Qt::Horizontal);
        map_hector1_horizontalSlider->setTickPosition(QSlider::TicksAbove);
        map_hector1_horizontalSlider->setTickInterval(1);

        verticalLayout_2->addWidget(map_hector1_horizontalSlider);

        map_1_text = new QLineEdit(MapMergerWidget);
        map_1_text->setObjectName(QString::fromUtf8("map_1_text"));

        verticalLayout_2->addWidget(map_1_text);


        horizontalLayout->addLayout(verticalLayout_2);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        map_hector2_label = new QLabel(MapMergerWidget);
        map_hector2_label->setObjectName(QString::fromUtf8("map_hector2_label"));

        verticalLayout_3->addWidget(map_hector2_label);

        map2_label = new QLabel(MapMergerWidget);
        map2_label->setObjectName(QString::fromUtf8("map2_label"));
        map2_label->setMinimumSize(QSize(20, 200));
        map2_label->setMaximumSize(QSize(200, 16777215));

        verticalLayout_3->addWidget(map2_label);

        map_hector2_horizontalSlider = new QSlider(MapMergerWidget);
        map_hector2_horizontalSlider->setObjectName(QString::fromUtf8("map_hector2_horizontalSlider"));
        map_hector2_horizontalSlider->setMaximum(0);
        map_hector2_horizontalSlider->setOrientation(Qt::Horizontal);
        map_hector2_horizontalSlider->setInvertedControls(false);
        map_hector2_horizontalSlider->setTickPosition(QSlider::TicksAbove);
        map_hector2_horizontalSlider->setTickInterval(1);

        verticalLayout_3->addWidget(map_hector2_horizontalSlider);

        map_2_text = new QLineEdit(MapMergerWidget);
        map_2_text->setObjectName(QString::fromUtf8("map_2_text"));

        verticalLayout_3->addWidget(map_2_text);


        horizontalLayout->addLayout(verticalLayout_3);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        label = new QLabel(MapMergerWidget);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_4->addWidget(label);

        use_stored_transform_checkBox = new QCheckBox(MapMergerWidget);
        use_stored_transform_checkBox->setObjectName(QString::fromUtf8("use_stored_transform_checkBox"));

        horizontalLayout_4->addWidget(use_stored_transform_checkBox);

        stored_transform_text = new QLineEdit(MapMergerWidget);
        stored_transform_text->setObjectName(QString::fromUtf8("stored_transform_text"));

        horizontalLayout_4->addWidget(stored_transform_text);

        store_current_transform_button = new QPushButton(MapMergerWidget);
        store_current_transform_button->setObjectName(QString::fromUtf8("store_current_transform_button"));

        horizontalLayout_4->addWidget(store_current_transform_button);


        verticalLayout->addLayout(horizontalLayout_4);

        merge_button = new QPushButton(MapMergerWidget);
        merge_button->setObjectName(QString::fromUtf8("merge_button"));

        verticalLayout->addWidget(merge_button);

        line = new QFrame(MapMergerWidget);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        text_label = new QLabel(MapMergerWidget);
        text_label->setObjectName(QString::fromUtf8("text_label"));
        text_label->setMaximumSize(QSize(16777215, 20));

        verticalLayout->addWidget(text_label);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));

        horizontalLayout_2->addLayout(horizontalLayout_3);

        merged_map_label = new QLabel(MapMergerWidget);
        merged_map_label->setObjectName(QString::fromUtf8("merged_map_label"));
        merged_map_label->setMinimumSize(QSize(300, 20));
        merged_map_label->setMaximumSize(QSize(800, 200));

        horizontalLayout_2->addWidget(merged_map_label);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout_2);

        save_geotiff_button = new QPushButton(MapMergerWidget);
        save_geotiff_button->setObjectName(QString::fromUtf8("save_geotiff_button"));

        verticalLayout->addWidget(save_geotiff_button);


        vboxLayout->addLayout(verticalLayout);


        retranslateUi(MapMergerWidget);

        QMetaObject::connectSlotsByName(MapMergerWidget);
    } // setupUi

    void retranslateUi(QWidget *MapMergerWidget)
    {
        MapMergerWidget->setWindowTitle(QApplication::translate("MapMergerWidget", "Map Merger", 0, QApplication::UnicodeUTF8));
        map_hector1_label->setText(QApplication::translate("MapMergerWidget", "Map Hector 1", 0, QApplication::UnicodeUTF8));
        map1_label->setText(QString());
        map_hector2_label->setText(QApplication::translate("MapMergerWidget", "Map Hector 2", 0, QApplication::UnicodeUTF8));
        map2_label->setText(QString());
        label->setText(QApplication::translate("MapMergerWidget", "Use stored Transform", 0, QApplication::UnicodeUTF8));
        use_stored_transform_checkBox->setText(QString());
        store_current_transform_button->setText(QApplication::translate("MapMergerWidget", "Store Current ", 0, QApplication::UnicodeUTF8));
        merge_button->setText(QApplication::translate("MapMergerWidget", "Merge", 0, QApplication::UnicodeUTF8));
        text_label->setText(QApplication::translate("MapMergerWidget", "Merged Map", 0, QApplication::UnicodeUTF8));
        merged_map_label->setText(QString());
        save_geotiff_button->setText(QApplication::translate("MapMergerWidget", "Save Geotiff", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MapMergerWidget: public Ui_MapMergerWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAP_MERGER_H
