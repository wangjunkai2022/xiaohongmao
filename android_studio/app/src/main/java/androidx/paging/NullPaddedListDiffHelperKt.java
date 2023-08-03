package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: NullPaddedListDiffHelper.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a8\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007H\u0000\u001a:\u0010\b\u001a\u00020\t\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\f\u001a\u00020\u0001H\u0000\u001a,\u0010\r\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\f\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0000¨\u0006\u0010"}, d2 = {"computeDiff", "Landroidx/paging/NullPaddedDiffResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/NullPaddedList;", "newList", "diffCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "dispatchDiff", "", com.alipay.sdk.authjs.a.f6838i, "Landroidx/recyclerview/widget/ListUpdateCallback;", "diffResult", "transformAnchorIndex", "", "oldPosition", "paging-runtime_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NullPaddedListDiffHelperKt {
    @g
    public static final <T> NullPaddedDiffResult computeDiff(@g final NullPaddedList<T> nullPaddedList, @g final NullPaddedList<T> newList, @g final DiffUtil.ItemCallback<T> diffCallback) {
        IntRange until;
        boolean z9;
        Intrinsics.checkNotNullParameter(nullPaddedList, "<this>");
        Intrinsics.checkNotNullParameter(newList, "newList");
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        final int storageCount = nullPaddedList.getStorageCount();
        final int storageCount2 = newList.getStorageCount();
        DiffUtil.Callback callback = new DiffUtil.Callback() { // from class: androidx.paging.NullPaddedListDiffHelperKt$computeDiff$diffResult$1
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i4, int i10) {
                Object fromStorage = nullPaddedList.getFromStorage(i4);
                Object fromStorage2 = newList.getFromStorage(i10);
                if (fromStorage == fromStorage2) {
                    return true;
                }
                return diffCallback.areContentsTheSame(fromStorage, fromStorage2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i4, int i10) {
                Object fromStorage = nullPaddedList.getFromStorage(i4);
                Object fromStorage2 = newList.getFromStorage(i10);
                if (fromStorage == fromStorage2) {
                    return true;
                }
                return diffCallback.areItemsTheSame(fromStorage, fromStorage2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            @h
            public Object getChangePayload(int i4, int i10) {
                Object fromStorage = nullPaddedList.getFromStorage(i4);
                Object fromStorage2 = newList.getFromStorage(i10);
                if (fromStorage == fromStorage2) {
                    return Boolean.TRUE;
                }
                return diffCallback.getChangePayload(fromStorage, fromStorage2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return storageCount2;
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return storageCount;
            }
        };
        boolean z10 = true;
        DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(callback, true);
        Intrinsics.checkNotNullExpressionValue(calculateDiff, "NullPaddedList<T>.comput…    },\n        true\n    )");
        until = RangesKt___RangesKt.until(0, nullPaddedList.getStorageCount());
        if (!(until instanceof Collection) || !((Collection) until).isEmpty()) {
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                if (calculateDiff.convertOldPositionToNew(((IntIterator) it).nextInt()) != -1) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    break;
                }
            }
        }
        z10 = false;
        return new NullPaddedDiffResult(calculateDiff, z10);
    }

    public static final <T> void dispatchDiff(@g NullPaddedList<T> nullPaddedList, @g ListUpdateCallback callback, @g NullPaddedList<T> newList, @g NullPaddedDiffResult diffResult) {
        Intrinsics.checkNotNullParameter(nullPaddedList, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(newList, "newList");
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        if (diffResult.getHasOverlap()) {
            OverlappingListsDiffDispatcher.INSTANCE.dispatchDiff(nullPaddedList, newList, callback, diffResult);
        } else {
            DistinctListsDiffDispatcher.INSTANCE.dispatchDiff(callback, nullPaddedList, newList);
        }
    }

    public static final int transformAnchorIndex(@g NullPaddedList<?> nullPaddedList, @g NullPaddedDiffResult diffResult, @g NullPaddedList<?> newList, int i4) {
        IntRange until;
        int coerceIn;
        int convertOldPositionToNew;
        IntRange until2;
        int coerceIn2;
        Intrinsics.checkNotNullParameter(nullPaddedList, "<this>");
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        Intrinsics.checkNotNullParameter(newList, "newList");
        if (!diffResult.getHasOverlap()) {
            until2 = RangesKt___RangesKt.until(0, newList.getSize());
            coerceIn2 = RangesKt___RangesKt.coerceIn(i4, (ClosedRange<Integer>) until2);
            return coerceIn2;
        }
        int placeholdersBefore = i4 - nullPaddedList.getPlaceholdersBefore();
        if (placeholdersBefore >= 0 && placeholdersBefore < nullPaddedList.getStorageCount()) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                int i12 = ((i10 / 2) * (i10 % 2 == 1 ? -1 : 1)) + placeholdersBefore;
                if (i12 >= 0 && i12 < nullPaddedList.getStorageCount() && (convertOldPositionToNew = diffResult.getDiff().convertOldPositionToNew(i12)) != -1) {
                    return convertOldPositionToNew + newList.getPlaceholdersBefore();
                }
                if (i11 > 29) {
                    break;
                }
                i10 = i11;
            }
        }
        until = RangesKt___RangesKt.until(0, newList.getSize());
        coerceIn = RangesKt___RangesKt.coerceIn(i4, (ClosedRange<Integer>) until);
        return coerceIn;
    }
}
