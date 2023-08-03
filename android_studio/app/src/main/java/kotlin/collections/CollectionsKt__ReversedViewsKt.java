package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReversedViews.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001a#\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007¢\u0006\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0002\b\b\u001a\u001d\u0010\t\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"asReversed", "", ExifInterface.GPS_DIRECTION_TRUE, "", "asReversedMutable", "reverseElementIndex", "", "index", "reverseElementIndex$CollectionsKt__ReversedViewsKt", "reversePositionIndex", "reversePositionIndex$CollectionsKt__ReversedViewsKt", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes4.dex */
public class CollectionsKt__ReversedViewsKt extends CollectionsKt__MutableCollectionsKt {
    @g
    public static final <T> List<T> asReversed(@g List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new ReversedListReadOnly(list);
    }

    @g
    @JvmName(name = "asReversedMutable")
    public static <T> List<T> asReversedMutable(@g List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new ReversedList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int reverseElementIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i4) {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (new IntRange(0, lastIndex).contains(i4)) {
            lastIndex3 = CollectionsKt__CollectionsKt.getLastIndex(list);
            return lastIndex3 - i4;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Element index ");
        sb.append(i4);
        sb.append(" must be in range [");
        lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(list);
        sb.append(new IntRange(0, lastIndex2));
        sb.append("].");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int reversePositionIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i4) {
        if (new IntRange(0, list.size()).contains(i4)) {
            return list.size() - i4;
        }
        throw new IndexOutOfBoundsException("Position index " + i4 + " must be in range [" + new IntRange(0, list.size()) + "].");
    }
}
