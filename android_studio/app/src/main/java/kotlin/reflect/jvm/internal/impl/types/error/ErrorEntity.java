package kotlin.reflect.jvm.internal.impl.types.error;

import m8.g;

/* compiled from: ErrorEntity.kt */
/* loaded from: classes4.dex */
public enum ErrorEntity {
    ERROR_CLASS("<Error class: %s>"),
    ERROR_FUNCTION("<Error function>"),
    ERROR_SCOPE("<Error scope>"),
    ERROR_MODULE("<Error module>"),
    ERROR_PROPERTY("<Error property>"),
    ERROR_TYPE("[Error type: %s]"),
    PARENT_OF_ERROR_SCOPE("<Fake parent for error lexical scope>");
    
    @g
    private final String debugText;

    ErrorEntity(String str) {
        this.debugText = str;
    }

    @g
    public final String getDebugText() {
        return this.debugText;
    }
}
