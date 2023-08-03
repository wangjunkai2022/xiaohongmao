package kotlin.reflect.jvm.internal.impl.load.java.structure;

import m8.g;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaField extends JavaMember {
    boolean getHasConstantNotNullInitializer();

    @g
    JavaType getType();

    boolean isEnumEntry();
}
