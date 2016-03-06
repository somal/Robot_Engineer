/********************************************************************************
** Form generated from reading UI file 'video_playback.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VIDEO_PLAYBACK_H
#define UI_VIDEO_PLAYBACK_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QSlider>
#include <QtGui/QToolButton>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include <phonon/videoplayer.h>

QT_BEGIN_NAMESPACE

class Ui_VideoPlayback
{
public:
    QVBoxLayout *verticalLayout;
    Phonon::VideoPlayer *videoPlayer;
    QHBoxLayout *horizontalLayout;
    QToolButton *open;
    QWidget *controls;
    QHBoxLayout *horizontalLayout_2;
    QToolButton *play;
    QToolButton *previous;
    QToolButton *next;
    QSlider *slider;
    QCheckBox *sync;

    void setupUi(QWidget *VideoPlayback)
    {
        if (VideoPlayback->objectName().isEmpty())
            VideoPlayback->setObjectName(QString::fromUtf8("VideoPlayback"));
        VideoPlayback->resize(575, 358);
        verticalLayout = new QVBoxLayout(VideoPlayback);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        videoPlayer = new Phonon::VideoPlayer(VideoPlayback);
        videoPlayer->setObjectName(QString::fromUtf8("videoPlayer"));

        verticalLayout->addWidget(videoPlayer);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(-1, 0, -1, -1);
        open = new QToolButton(VideoPlayback);
        open->setObjectName(QString::fromUtf8("open"));
        QIcon icon;
        QString iconThemeName = QString::fromUtf8("document-open");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon = QIcon::fromTheme(iconThemeName);
        } else {
            icon.addFile(QString::fromUtf8(""), QSize(), QIcon::Normal, QIcon::Off);
        }
        open->setIcon(icon);

        horizontalLayout->addWidget(open);

        controls = new QWidget(VideoPlayback);
        controls->setObjectName(QString::fromUtf8("controls"));
        controls->setEnabled(false);
        horizontalLayout_2 = new QHBoxLayout(controls);
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        play = new QToolButton(controls);
        play->setObjectName(QString::fromUtf8("play"));
        QIcon icon1;
        iconThemeName = QString::fromUtf8("media-playback-start");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon1 = QIcon::fromTheme(iconThemeName);
        } else {
            icon1.addFile(QString::fromUtf8(""), QSize(), QIcon::Normal, QIcon::Off);
        }
        play->setIcon(icon1);

        horizontalLayout_2->addWidget(play);

        previous = new QToolButton(controls);
        previous->setObjectName(QString::fromUtf8("previous"));
        QIcon icon2;
        iconThemeName = QString::fromUtf8("go-previous");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon2 = QIcon::fromTheme(iconThemeName);
        } else {
            icon2.addFile(QString::fromUtf8(""), QSize(), QIcon::Normal, QIcon::Off);
        }
        previous->setIcon(icon2);

        horizontalLayout_2->addWidget(previous);

        next = new QToolButton(controls);
        next->setObjectName(QString::fromUtf8("next"));
        QIcon icon3;
        iconThemeName = QString::fromUtf8("go-next");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon3 = QIcon::fromTheme(iconThemeName);
        } else {
            icon3.addFile(QString::fromUtf8(""), QSize(), QIcon::Normal, QIcon::Off);
        }
        next->setIcon(icon3);

        horizontalLayout_2->addWidget(next);

        slider = new QSlider(controls);
        slider->setObjectName(QString::fromUtf8("slider"));
        slider->setMaximum(10000);
        slider->setSingleStep(1000);
        slider->setPageStep(10000);
        slider->setOrientation(Qt::Horizontal);
        slider->setTickPosition(QSlider::TicksBelow);
        slider->setTickInterval(1000);

        horizontalLayout_2->addWidget(slider);


        horizontalLayout->addWidget(controls);

        sync = new QCheckBox(VideoPlayback);
        sync->setObjectName(QString::fromUtf8("sync"));

        horizontalLayout->addWidget(sync);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(VideoPlayback);

        QMetaObject::connectSlotsByName(VideoPlayback);
    } // setupUi

    void retranslateUi(QWidget *VideoPlayback)
    {
        VideoPlayback->setWindowTitle(QApplication::translate("VideoPlayback", "Video Playback", 0, QApplication::UnicodeUTF8));
        open->setText(QApplication::translate("VideoPlayback", "...", 0, QApplication::UnicodeUTF8));
        play->setText(QApplication::translate("VideoPlayback", "Play", 0, QApplication::UnicodeUTF8));
        previous->setText(QApplication::translate("VideoPlayback", "-1", 0, QApplication::UnicodeUTF8));
        next->setText(QApplication::translate("VideoPlayback", "+1", 0, QApplication::UnicodeUTF8));
        sync->setText(QApplication::translate("VideoPlayback", "Sync", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class VideoPlayback: public Ui_VideoPlayback {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VIDEO_PLAYBACK_H
