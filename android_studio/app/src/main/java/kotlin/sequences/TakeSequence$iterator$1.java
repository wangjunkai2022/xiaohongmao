package kotlin.sequences;

import com.google.android.exoplayer2.text.ttml.d;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;

/* compiled from: Sequences.kt */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u000b\u001a\u00020\fH\u0096\u0002J\u000e\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u000eR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"kotlin/sequences/TakeSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", d.f25720l0, "", "getLeft", "()I", "setLeft", "(I)V", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TakeSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @g
    private final Iterator<T> iterator;
    private int left;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TakeSequence$iterator$1(TakeSequence<T> takeSequence) {
        int i4;
        Sequence sequence;
        i4 = ((TakeSequence) takeSequence).count;
        this.left = i4;
        sequence = ((TakeSequence) takeSequence).sequence;
        this.iterator = sequence.iterator();
    }

    @g
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getLeft() {
        return this.left;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.left > 0 && this.iterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        int i4 = this.left;
        if (i4 != 0) {
            this.left = i4 - 1;
            return this.iterator.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setLeft(int i4) {
        this.left = i4;
    }
}
