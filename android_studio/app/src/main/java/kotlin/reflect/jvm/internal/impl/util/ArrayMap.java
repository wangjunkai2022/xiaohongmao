package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;
import m8.h;

/* compiled from: ArrayMap.kt */
/* loaded from: classes4.dex */
public abstract class ArrayMap<T> implements Iterable<T>, KMappedMarker {
    private ArrayMap() {
    }

    public /* synthetic */ ArrayMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @h
    public abstract T get(int i4);

    public abstract int getSize();

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract void set(int i4, @g T t9);
}
