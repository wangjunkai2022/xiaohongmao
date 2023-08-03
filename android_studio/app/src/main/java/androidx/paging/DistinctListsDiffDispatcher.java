package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.google.android.exoplayer2.text.ttml.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;

/* compiled from: NullPaddedListDiffHelper.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0001H\u0002J4\u0010\r\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010¨\u0006\u0012"}, d2 = {"Landroidx/paging/DistinctListsDiffDispatcher;", "", "()V", "dispatchChange", "", com.alipay.sdk.authjs.a.f6838i, "Landroidx/recyclerview/widget/ListUpdateCallback;", "startBoundary", "", "endBoundary", d.f25725o0, d.f25727p0, "payload", "dispatchDiff", ExifInterface.GPS_DIRECTION_TRUE, "oldList", "Landroidx/paging/NullPaddedList;", "newList", "paging-runtime_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DistinctListsDiffDispatcher {
    @g
    public static final DistinctListsDiffDispatcher INSTANCE = new DistinctListsDiffDispatcher();

    private DistinctListsDiffDispatcher() {
    }

    private final void dispatchChange(ListUpdateCallback listUpdateCallback, int i4, int i10, int i11, int i12, Object obj) {
        int i13 = i4 - i11;
        if (i13 > 0) {
            listUpdateCallback.onChanged(i11, i13, obj);
        }
        int i14 = i12 - i10;
        if (i14 > 0) {
            listUpdateCallback.onChanged(i10, i14, obj);
        }
    }

    public final <T> void dispatchDiff(@g ListUpdateCallback callback, @g NullPaddedList<T> oldList, @g NullPaddedList<T> newList) {
        int coerceAtMost;
        int coerceAtMost2;
        int coerceAtMost3;
        int coerceAtMost4;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(oldList, "oldList");
        Intrinsics.checkNotNullParameter(newList, "newList");
        int max = Math.max(oldList.getPlaceholdersBefore(), newList.getPlaceholdersBefore());
        int min = Math.min(oldList.getPlaceholdersBefore() + oldList.getStorageCount(), newList.getPlaceholdersBefore() + newList.getStorageCount());
        int i4 = min - max;
        if (i4 > 0) {
            callback.onRemoved(max, i4);
            callback.onInserted(max, i4);
        }
        int min2 = Math.min(max, min);
        int max2 = Math.max(max, min);
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(oldList.getPlaceholdersBefore(), newList.getSize());
        coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(oldList.getPlaceholdersBefore() + oldList.getStorageCount(), newList.getSize());
        dispatchChange(callback, min2, max2, coerceAtMost, coerceAtMost2, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
        coerceAtMost3 = RangesKt___RangesKt.coerceAtMost(newList.getPlaceholdersBefore(), oldList.getSize());
        coerceAtMost4 = RangesKt___RangesKt.coerceAtMost(newList.getPlaceholdersBefore() + newList.getStorageCount(), oldList.getSize());
        dispatchChange(callback, min2, max2, coerceAtMost3, coerceAtMost4, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
        int size = newList.getSize() - oldList.getSize();
        if (size > 0) {
            callback.onInserted(oldList.getSize(), size);
        } else if (size < 0) {
            callback.onRemoved(oldList.getSize() + size, -size);
        }
    }
}
