package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.types.TypeAttribute;
import m8.g;
import m8.h;

/* compiled from: TypeAttributes.kt */
/* loaded from: classes4.dex */
public abstract class TypeAttribute<T extends TypeAttribute<T>> {
    @g
    public abstract T add(@h T t9);

    @g
    public abstract KClass<? extends T> getKey();

    @h
    public abstract T intersect(@h T t9);
}
