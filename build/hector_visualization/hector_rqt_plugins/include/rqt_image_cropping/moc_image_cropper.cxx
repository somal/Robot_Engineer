/****************************************************************************
** Meta object code from reading C++ file 'image_cropper.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/hector_visualization/hector_rqt_plugins/include/rqt_image_cropping/image_cropper.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'image_cropper.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_rqt_image_cropping__ImageCropper[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      34,   33,   33,   33, 0x09,
      58,   52,   33,   33, 0x09,
      80,   33,   33,   33, 0x09,
     108,  100,   33,   33, 0x09,
     135,  129,   33,   33, 0x09,
     172,  129,   33,   33, 0x09,
     207,   33,   33,   33, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_rqt_image_cropping__ImageCropper[] = {
    "rqt_image_cropping::ImageCropper\0\0"
    "updateTopicList()\0index\0onInTopicChanged(int)\0"
    "onOutTopicChanged()\0checked\0"
    "onDynamicRange(bool)\0p1,p2\0"
    "onSelectionInProgress(QPoint,QPoint)\0"
    "onSelectionFinished(QPoint,QPoint)\0"
    "onRemoveSelection()\0"
};

void rqt_image_cropping::ImageCropper::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ImageCropper *_t = static_cast<ImageCropper *>(_o);
        switch (_id) {
        case 0: _t->updateTopicList(); break;
        case 1: _t->onInTopicChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->onOutTopicChanged(); break;
        case 3: _t->onDynamicRange((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->onSelectionInProgress((*reinterpret_cast< QPoint(*)>(_a[1])),(*reinterpret_cast< QPoint(*)>(_a[2]))); break;
        case 5: _t->onSelectionFinished((*reinterpret_cast< QPoint(*)>(_a[1])),(*reinterpret_cast< QPoint(*)>(_a[2]))); break;
        case 6: _t->onRemoveSelection(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData rqt_image_cropping::ImageCropper::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject rqt_image_cropping::ImageCropper::staticMetaObject = {
    { &rqt_gui_cpp::Plugin::staticMetaObject, qt_meta_stringdata_rqt_image_cropping__ImageCropper,
      qt_meta_data_rqt_image_cropping__ImageCropper, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &rqt_image_cropping::ImageCropper::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *rqt_image_cropping::ImageCropper::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *rqt_image_cropping::ImageCropper::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_rqt_image_cropping__ImageCropper))
        return static_cast<void*>(const_cast< ImageCropper*>(this));
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int rqt_image_cropping::ImageCropper::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
