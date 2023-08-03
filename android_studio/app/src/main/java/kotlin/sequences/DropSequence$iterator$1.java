package kotlin.sequences;

import com.google.android.exoplayer2.text.ttml.d;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;

/* compiled from: Sequences.kt */
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u000b\u001a\u00020\fH\u0002J\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\u000e\u0010\u000f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0010R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"kotlin/sequences/DropSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", d.f25720l0, "", "getLeft", "()I", "setLeft", "(I)V", "drop", "", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DropSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @g
    private final Iterator<T> iterator;
    private int left;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropSequence$iterator$1(DropSequence<T> dropSequence) {
        Sequence sequence;
        int i4;
        sequence = ((DropSequence) dropSequence).sequence;
        this.iterator = sequence.iterator();
        i4 = ((DropSequence) dropSequence).count;
        this.left = i4;
    }

    private final void drop() {
        while (this.left > 0 && this.iterator.hasNext()) {
            this.iterator.next();
            this.left--;
        }
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
        drop();
        return this.iterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        drop();
        return this.iterator.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setLeft(int i4) {
        this.left = i4;
    }
}
