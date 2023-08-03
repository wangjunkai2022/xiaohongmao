package kotlin.reflect.jvm.internal.impl.load.java.structure;

import m8.h;

/* compiled from: javaTypes.kt */
/* loaded from: classes4.dex */
public interface JavaWildcardType extends JavaType {
    @h
    JavaType getBound();

    boolean isExtends();
}
