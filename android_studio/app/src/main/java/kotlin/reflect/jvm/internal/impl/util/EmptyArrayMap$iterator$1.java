package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;

/* compiled from: ArrayMap.kt */
/* loaded from: classes4.dex */
public final class EmptyArrayMap$iterator$1 implements Iterator, KMappedMarker {
    @Override // java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    @g
    public Void next() {
        throw new NoSuchElementException();
    }
}
