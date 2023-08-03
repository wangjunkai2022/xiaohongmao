package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner;
import m8.g;
import m8.h;

/* compiled from: ArrayMapOwner.kt */
/* loaded from: classes4.dex */
public final class NullableArrayMapAccessor<K, V, T extends V> extends AbstractArrayMapOwner.AbstractArrayMapAccessor<K, V, T> implements ReadOnlyProperty<AbstractArrayMapOwner<K, V>, V> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NullableArrayMapAccessor(@g KClass<? extends K> key, int i4) {
        super(key, i4);
        Intrinsics.checkNotNullParameter(key, "key");
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ Object getValue(Object obj, KProperty kProperty) {
        return getValue((AbstractArrayMapOwner) ((AbstractArrayMapOwner) obj), (KProperty<?>) kProperty);
    }

    @h
    public T getValue(@g AbstractArrayMapOwner<K, V> thisRef, @g KProperty<?> property) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        return extractValue(thisRef);
    }
}
