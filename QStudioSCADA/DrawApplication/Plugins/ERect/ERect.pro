
include(../../DrawApplicationPlugin.pri)

CONFIG(debug, debug|release) { #debug
    LIBS += -L$$IDE_LIBRARY_PATH -lPropertyEditord
    LIBS += -L$$LINK_LIBRARY_PATH -lTagManagerd
} else { # release
    LIBS += -L$$IDE_LIBRARY_PATH -lPropertyEditor
    LIBS += -L$$LINK_LIBRARY_PATH -lTagManager
}

SOURCES += \
    ../../Public/Element.cpp \
    ElementRect.cpp \
    RectPlugin.cpp \
    ../../PropertyEditorEx/tagcolorlisteditordialog.cpp \
    ../../PropertyEditorEx/tagcolorlistproperty.cpp \
    ../../PropertyEditorEx/tagcolorlistpropertyeditor.cpp

HEADERS += \
    ../../Public/PublicDefine.h \
    ../../Public/PublicDefine.h \
    ../../IDrawApplicationPlugin/IDrawApplicationPlugin.h \
    ../../Public/Element.h \
    ElementRect.h \
    RectPlugin.h \
    ../../PropertyEditorEx/tagcolorlisteditordialog.h \
    ../../PropertyEditorEx/tagcolorlistproperty.h \
    ../../PropertyEditorEx/tagcolorlistpropertyeditor.h

DISTFILES += ERect.json

RESOURCES += \
    images.qrc

FORMS += \
    ../../PropertyEditorEx/tagcolorlisteditordialog.ui


