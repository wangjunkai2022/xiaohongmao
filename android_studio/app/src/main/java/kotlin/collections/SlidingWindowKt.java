package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import m8.g;

/* compiled from: SlidingWindow.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b\u0000\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0000\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u000e\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0000¨\u0006\u000f"}, d2 = {"checkWindowSizeStep", "", f.f47745b, "", "step", "windowedIterator", "", "", ExifInterface.GPS_DIRECTION_TRUE, "iterator", "partialWindows", "", "reuseBuffer", "windowedSequence", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SlidingWindowKt {
    public static final void checkWindowSizeStep(int i4, int i10) {
        String str;
        if (i4 > 0 && i10 > 0) {
            return;
        }
        if (i4 != i10) {
            str = "Both size " + i4 + " and step " + i10 + " must be greater than zero.";
        } else {
            str = "size " + i4 + " must be greater than zero.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    @g
    public static final <T> Iterator<List<T>> windowedIterator(@g Iterator<? extends T> iterator, int i4, int i10, boolean z9, boolean z10) {
        Iterator<List<T>> it;
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        if (iterator.hasNext()) {
            it = SequencesKt__SequenceBuilderKt.iterator(new SlidingWindowKt$windowedIterator$1(i4, i10, iterator, z10, z9, null));
            return it;
        }
        return EmptyIterator.INSTANCE;
    }

    @g
    public static final <T> Sequence<List<T>> windowedSequence(@g final Sequence<? extends T> sequence, final int i4, final int i10, final boolean z9, final boolean z10) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        checkWindowSizeStep(i4, i10);
        return (Sequence<List<? extends T>>) new Sequence<List<? extends T>>() { // from class: kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            @g
            public Iterator<List<? extends T>> iterator() {
                return SlidingWindowKt.windowedIterator(Sequence.this.iterator(), i4, i10, z9, z10);
            }
        };
    }
}
