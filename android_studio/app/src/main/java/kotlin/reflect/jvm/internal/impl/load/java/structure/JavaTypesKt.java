package kotlin.reflect.jvm.internal.impl.load.java.structure;

import m8.h;

/* compiled from: javaTypes.kt */
/* loaded from: classes4.dex */
public final class JavaTypesKt {
    public static final boolean isSuperWildcard(@h JavaType javaType) {
        JavaWildcardType javaWildcardType = javaType instanceof JavaWildcardType ? (JavaWildcardType) javaType : null;
        return (javaWildcardType == null || javaWildcardType.getBound() == null || javaWildcardType.isExtends()) ? false : true;
    }
}
