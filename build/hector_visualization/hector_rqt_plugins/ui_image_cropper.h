/********************************************************************************
** Form generated from reading UI file 'image_cropper.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_IMAGE_CROPPER_H
#define UI_IMAGE_CROPPER_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QComboBox>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include "rqt_image_enhancer/ratio_layouted_frame.h"

QT_BEGIN_NAMESPACE

class Ui_ImageCropperWidget
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label_2;
    QComboBox *topics_combo_box;
    QPushButton *refresh_topics_push_button;
    QSpacerItem *horizontalSpacer;
    QLabel *label;
    QLineEdit *out_topic_line_edit;
    QHBoxLayout *horizontalLayout_3;
    QCheckBox *dynamic_range_check_box;
    QDoubleSpinBox *max_range_double_spin_box;
    QSpacerItem *horizontalSpacer_3;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer_2;
    rqt_image_enhancer::RatioLayoutedFrame *image_frame;
    QSpacerItem *horizontalSpacer_4;

    void setupUi(QWidget *ImageCropperWidget)
    {
        if (ImageCropperWidget->objectName().isEmpty())
            ImageCropperWidget->setObjectName(QString::fromUtf8("ImageCropperWidget"));
        ImageCropperWidget->setEnabled(true);
        ImageCropperWidget->resize(578, 400);
        verticalLayout = new QVBoxLayout(ImageCropperWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label_2 = new QLabel(ImageCropperWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        horizontalLayout->addWidget(label_2);

        topics_combo_box = new QComboBox(ImageCropperWidget);
        topics_combo_box->setObjectName(QString::fromUtf8("topics_combo_box"));
        topics_combo_box->setSizeAdjustPolicy(QComboBox::AdjustToContents);

        horizontalLayout->addWidget(topics_combo_box);

        refresh_topics_push_button = new QPushButton(ImageCropperWidget);
        refresh_topics_push_button->setObjectName(QString::fromUtf8("refresh_topics_push_button"));

        horizontalLayout->addWidget(refresh_topics_push_button);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        label = new QLabel(ImageCropperWidget);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout->addWidget(label);

        out_topic_line_edit = new QLineEdit(ImageCropperWidget);
        out_topic_line_edit->setObjectName(QString::fromUtf8("out_topic_line_edit"));

        horizontalLayout->addWidget(out_topic_line_edit);

        horizontalLayout->setStretch(3, 1);

        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        dynamic_range_check_box = new QCheckBox(ImageCropperWidget);
        dynamic_range_check_box->setObjectName(QString::fromUtf8("dynamic_range_check_box"));

        horizontalLayout_3->addWidget(dynamic_range_check_box);

        max_range_double_spin_box = new QDoubleSpinBox(ImageCropperWidget);
        max_range_double_spin_box->setObjectName(QString::fromUtf8("max_range_double_spin_box"));
        max_range_double_spin_box->setMinimum(0.01);
        max_range_double_spin_box->setMaximum(100);
        max_range_double_spin_box->setValue(10);

        horizontalLayout_3->addWidget(max_range_double_spin_box);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_3);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);

        image_frame = new rqt_image_enhancer::RatioLayoutedFrame(ImageCropperWidget);
        image_frame->setObjectName(QString::fromUtf8("image_frame"));
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(image_frame->sizePolicy().hasHeightForWidth());
        image_frame->setSizePolicy(sizePolicy);
        image_frame->setMinimumSize(QSize(80, 60));
        image_frame->setFrameShape(QFrame::Box);
        image_frame->setLineWidth(1);

        horizontalLayout_2->addWidget(image_frame);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_4);

        horizontalLayout_2->setStretch(1, 1);

        verticalLayout->addLayout(horizontalLayout_2);


        retranslateUi(ImageCropperWidget);

        QMetaObject::connectSlotsByName(ImageCropperWidget);
    } // setupUi

    void retranslateUi(QWidget *ImageCropperWidget)
    {
        ImageCropperWidget->setWindowTitle(QApplication::translate("ImageCropperWidget", "Image Cropper", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("ImageCropperWidget", "input topic:", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("ImageCropperWidget", "output topic:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        dynamic_range_check_box->setToolTip(QApplication::translate("ImageCropperWidget", "Dynamic depth range", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        dynamic_range_check_box->setText(QString());
#ifndef QT_NO_TOOLTIP
        max_range_double_spin_box->setToolTip(QApplication::translate("ImageCropperWidget", "Max depth", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        max_range_double_spin_box->setSuffix(QApplication::translate("ImageCropperWidget", "m", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class ImageCropperWidget: public Ui_ImageCropperWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_IMAGE_CROPPER_H
