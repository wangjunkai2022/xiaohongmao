package kotlin.reflect.jvm.internal.impl.load.java.structure;

import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaValueParameter extends JavaAnnotationOwner {
    @h
    Name getName();

    @g
    JavaType getType();

    boolean isVararg();
}
