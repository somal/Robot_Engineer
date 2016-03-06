/****************************************************************************
** Meta object code from reading C++ file 'video_playback.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/hector_visualization/rqt_video_playback/include/rqt_video_playback/video_playback.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'video_playback.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_rqt_video_playback__VideoPlayback[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      35,   34,   34,   34, 0x05,

 // slots: signature, parameters, type, tag, flags
      50,   34,   34,   34, 0x09,
      64,   34,   34,   34, 0x09,
      78,   34,   34,   34, 0x09,
      96,   34,   34,   34, 0x09,
     110,   34,   34,   34, 0x09,
     134,   34,   34,   34, 0x09,
     141,   34,   34,   34, 0x09,
     172,  154,   34,   34, 0x09,
     214,   34,   34,   34, 0x09,
     239,   34,   34,   34, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_rqt_video_playback__VideoPlayback[] = {
    "rqt_video_playback::VideoPlayback\0\0"
    "clockUpdated()\0openClicked()\0playClicked()\0"
    "previousClicked()\0nextClicked()\0"
    "sliderValueChanged(int)\0sync()\0"
    "tick(qint64)\0newstate,oldstate\0"
    "stateChanged(Phonon::State,Phonon::State)\0"
    "totalTimeChanged(qint64)\0"
    "currentSourceChanged(Phonon::MediaSource)\0"
};

void rqt_video_playback::VideoPlayback::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        VideoPlayback *_t = static_cast<VideoPlayback *>(_o);
        switch (_id) {
        case 0: _t->clockUpdated(); break;
        case 1: _t->openClicked(); break;
        case 2: _t->playClicked(); break;
        case 3: _t->previousClicked(); break;
        case 4: _t->nextClicked(); break;
        case 5: _t->sliderValueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->sync(); break;
        case 7: _t->tick((*reinterpret_cast< qint64(*)>(_a[1]))); break;
        case 8: _t->stateChanged((*reinterpret_cast< Phonon::State(*)>(_a[1])),(*reinterpret_cast< Phonon::State(*)>(_a[2]))); break;
        case 9: _t->totalTimeChanged((*reinterpret_cast< qint64(*)>(_a[1]))); break;
        case 10: _t->currentSourceChanged((*reinterpret_cast< Phonon::MediaSource(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData rqt_video_playback::VideoPlayback::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject rqt_video_playback::VideoPlayback::staticMetaObject = {
    { &rqt_gui_cpp::Plugin::staticMetaObject, qt_meta_stringdata_rqt_video_playback__VideoPlayback,
      qt_meta_data_rqt_video_playback__VideoPlayback, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &rqt_video_playback::VideoPlayback::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *rqt_video_playback::VideoPlayback::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *rqt_video_playback::VideoPlayback::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_rqt_video_playback__VideoPlayback))
        return static_cast<void*>(const_cast< VideoPlayback*>(this));
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int rqt_video_playback::VideoPlayback::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void rqt_video_playback::VideoPlayback::clockUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
