package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import m8.g;

/* compiled from: typeSignatureMapping.kt */
/* loaded from: classes4.dex */
public interface JvmTypeFactory<T> {
    @g
    T boxType(@g T t9);

    @g
    T createFromString(@g String str);

    @g
    T createObjectType(@g String str);

    @g
    T createPrimitiveType(@g PrimitiveType primitiveType);

    @g
    T getJavaLangClassType();

    @g
    String toString(@g T t9);
}
