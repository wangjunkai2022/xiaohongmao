package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;

/* compiled from: ArrayMap.kt */
/* loaded from: classes4.dex */
public final class OneElementArrayMap$iterator$1 implements Iterator<T>, KMappedMarker {
    private boolean notVisited = true;
    final /* synthetic */ OneElementArrayMap<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OneElementArrayMap$iterator$1(OneElementArrayMap<T> oneElementArrayMap) {
        this.this$0 = oneElementArrayMap;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.notVisited;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    @g
    public T next() {
        if (this.notVisited) {
            this.notVisited = false;
            return this.this$0.getValue();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
