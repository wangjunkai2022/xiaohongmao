package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import m8.g;
import m8.h;

/* compiled from: storage.kt */
/* loaded from: classes4.dex */
public final class StorageKt {
    @g
    public static final <T> T getValue(@g NotNullLazyValue<? extends T> notNullLazyValue, @h Object obj, @g KProperty<?> p9) {
        Intrinsics.checkNotNullParameter(notNullLazyValue, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        return notNullLazyValue.invoke();
    }

    @h
    public static final <T> T getValue(@g NullableLazyValue<? extends T> nullableLazyValue, @h Object obj, @g KProperty<?> p9) {
        Intrinsics.checkNotNullParameter(nullableLazyValue, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        return nullableLazyValue.invoke();
    }
}
