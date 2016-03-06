/****************************************************************************
** Meta object code from reading C++ file 'vector3_display.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/hector_visualization/hector_rviz_plugins/src/vector3_display.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vector3_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_hector_rviz_plugins__Vector3Display[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      37,   36,   36,   36, 0x08,
      51,   36,   36,   36, 0x08,
      65,   36,   36,   36, 0x08,
      85,   36,   36,   36, 0x08,
      99,   36,   36,   36, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_hector_rviz_plugins__Vector3Display[] = {
    "hector_rviz_plugins::Vector3Display\0"
    "\0updateColor()\0updateTopic()\0"
    "updateOriginFrame()\0updateScale()\0"
    "updateLength()\0"
};

void hector_rviz_plugins::Vector3Display::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Vector3Display *_t = static_cast<Vector3Display *>(_o);
        switch (_id) {
        case 0: _t->updateColor(); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->updateOriginFrame(); break;
        case 3: _t->updateScale(); break;
        case 4: _t->updateLength(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData hector_rviz_plugins::Vector3Display::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject hector_rviz_plugins::Vector3Display::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_hector_rviz_plugins__Vector3Display,
      qt_meta_data_hector_rviz_plugins__Vector3Display, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &hector_rviz_plugins::Vector3Display::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *hector_rviz_plugins::Vector3Display::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *hector_rviz_plugins::Vector3Display::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_hector_rviz_plugins__Vector3Display))
        return static_cast<void*>(const_cast< Vector3Display*>(this));
    typedef rviz::Display QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int hector_rviz_plugins::Vector3Display::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rviz::Display QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
