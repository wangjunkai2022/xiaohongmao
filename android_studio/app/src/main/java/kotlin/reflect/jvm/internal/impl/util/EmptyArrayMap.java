package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ArrayMap.kt */
/* loaded from: classes4.dex */
public final class EmptyArrayMap extends ArrayMap {
    @g
    public static final EmptyArrayMap INSTANCE = new EmptyArrayMap();

    private EmptyArrayMap() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    @h
    public Void get(int i4) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public int getSize() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    @g
    public Iterator iterator() {
        return new EmptyArrayMap$iterator$1();
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public void set(int i4, @g Void value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new IllegalStateException();
    }
}
