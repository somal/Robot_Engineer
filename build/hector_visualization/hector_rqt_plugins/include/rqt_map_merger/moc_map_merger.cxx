/****************************************************************************
** Meta object code from reading C++ file 'map_merger.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/hector_visualization/hector_rqt_plugins/include/rqt_map_merger/map_merger.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'map_merger.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_rqt_map_merger__MapMerger[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      31,   27,   26,   26, 0x0a,
      51,   27,   26,   26, 0x0a,
      71,   26,   26,   26, 0x0a,
      88,   26,   26,   26, 0x0a,
     119,  111,   26,   26, 0x0a,
     151,   26,   26,   26, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_rqt_map_merger__MapMerger[] = {
    "rqt_map_merger::MapMerger\0\0idx\0"
    "onSlider1Moved(int)\0onSlider2Moved(int)\0"
    "onMergePressed()\0onSaveGeotiffPressed()\0"
    "checked\0onStateUseTransformChanged(int)\0"
    "onGetTransform()\0"
};

void rqt_map_merger::MapMerger::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MapMerger *_t = static_cast<MapMerger *>(_o);
        switch (_id) {
        case 0: _t->onSlider1Moved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->onSlider2Moved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->onMergePressed(); break;
        case 3: _t->onSaveGeotiffPressed(); break;
        case 4: _t->onStateUseTransformChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->onGetTransform(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData rqt_map_merger::MapMerger::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject rqt_map_merger::MapMerger::staticMetaObject = {
    { &rqt_gui_cpp::Plugin::staticMetaObject, qt_meta_stringdata_rqt_map_merger__MapMerger,
      qt_meta_data_rqt_map_merger__MapMerger, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &rqt_map_merger::MapMerger::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *rqt_map_merger::MapMerger::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *rqt_map_merger::MapMerger::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_rqt_map_merger__MapMerger))
        return static_cast<void*>(const_cast< MapMerger*>(this));
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int rqt_map_merger::MapMerger::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rqt_gui_cpp::Plugin QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
