package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ListUpdateCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: NullPaddedListDiffHelper.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\u000e"}, d2 = {"Landroidx/paging/OverlappingListsDiffDispatcher;", "", "()V", "dispatchDiff", "", ExifInterface.GPS_DIRECTION_TRUE, "oldList", "Landroidx/paging/NullPaddedList;", "newList", com.alipay.sdk.authjs.a.f6838i, "Landroidx/recyclerview/widget/ListUpdateCallback;", "diffResult", "Landroidx/paging/NullPaddedDiffResult;", "PlaceholderUsingUpdateCallback", "paging-runtime_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class OverlappingListsDiffDispatcher {
    @g
    public static final OverlappingListsDiffDispatcher INSTANCE = new OverlappingListsDiffDispatcher();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NullPaddedListDiffHelper.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\b\b\u0002\u0018\u0000 \"*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\"B)\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u0016J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\"\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0018\u0010 \u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016J\r\u0010!\u001a\u00020\t*\u00020\tH\u0082\bR\u000e\u0010\u0006\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/ListUpdateCallback;", "oldList", "Landroidx/paging/NullPaddedList;", "newList", com.alipay.sdk.authjs.a.f6838i, "(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;)V", "placeholdersAfter", "", "placeholdersAfterState", "placeholdersBefore", "placeholdersBeforeState", "storageCount", "dispatchInsertAsPlaceholderAfter", "", "position", "count", "dispatchInsertAsPlaceholderBefore", "dispatchRemovalAsPlaceholdersAfter", "dispatchRemovalAsPlaceholdersBefore", "fixLeadingPlaceholders", "", "fixPlaceholders", "fixTrailingPlaceholders", "onChanged", "payload", "", "onInserted", "onMoved", "fromPosition", "toPosition", "onRemoved", "offsetForDispatch", "Companion", "paging-runtime_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class PlaceholderUsingUpdateCallback<T> implements ListUpdateCallback {
        @g
        public static final Companion Companion = new Companion(null);
        private static final int UNUSED = 1;
        private static final int USED_FOR_ADDITION = 3;
        private static final int USED_FOR_REMOVAL = 2;
        @g
        private final ListUpdateCallback callback;
        @g
        private final NullPaddedList<T> newList;
        @g
        private final NullPaddedList<T> oldList;
        private int placeholdersAfter;
        private int placeholdersAfterState;
        private int placeholdersBefore;
        private int placeholdersBeforeState;
        private int storageCount;

        /* compiled from: NullPaddedListDiffHelper.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;", "", "()V", "UNUSED", "", "USED_FOR_ADDITION", "USED_FOR_REMOVAL", "paging-runtime_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public PlaceholderUsingUpdateCallback(@g NullPaddedList<T> oldList, @g NullPaddedList<T> newList, @g ListUpdateCallback callback) {
            Intrinsics.checkNotNullParameter(oldList, "oldList");
            Intrinsics.checkNotNullParameter(newList, "newList");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.oldList = oldList;
            this.newList = newList;
            this.callback = callback;
            this.placeholdersBefore = oldList.getPlaceholdersBefore();
            this.placeholdersAfter = oldList.getPlaceholdersAfter();
            this.storageCount = oldList.getStorageCount();
            this.placeholdersBeforeState = 1;
            this.placeholdersAfterState = 1;
        }

        private final boolean dispatchInsertAsPlaceholderAfter(int i4, int i10) {
            if (i4 >= this.storageCount && this.placeholdersAfterState != 2) {
                int min = Math.min(i10, this.placeholdersAfter);
                if (min > 0) {
                    this.placeholdersAfterState = 3;
                    this.callback.onChanged(this.placeholdersBefore + i4, min, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
                    this.placeholdersAfter -= min;
                }
                int i11 = i10 - min;
                if (i11 > 0) {
                    this.callback.onInserted(i4 + min + this.placeholdersBefore, i11);
                    return true;
                }
                return true;
            }
            return false;
        }

        private final boolean dispatchInsertAsPlaceholderBefore(int i4, int i10) {
            if (i4 <= 0 && this.placeholdersBeforeState != 2) {
                int min = Math.min(i10, this.placeholdersBefore);
                if (min > 0) {
                    this.placeholdersBeforeState = 3;
                    this.callback.onChanged((0 - min) + this.placeholdersBefore, min, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
                    this.placeholdersBefore -= min;
                }
                int i11 = i10 - min;
                if (i11 > 0) {
                    this.callback.onInserted(this.placeholdersBefore + 0, i11);
                    return true;
                }
                return true;
            }
            return false;
        }

        private final boolean dispatchRemovalAsPlaceholdersAfter(int i4, int i10) {
            int coerceAtLeast;
            if (i4 + i10 >= this.storageCount && this.placeholdersAfterState != 3) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Math.min(this.newList.getPlaceholdersAfter() - this.placeholdersAfter, i10), 0);
                int i11 = i10 - coerceAtLeast;
                if (coerceAtLeast > 0) {
                    this.placeholdersAfterState = 2;
                    this.callback.onChanged(this.placeholdersBefore + i4, coerceAtLeast, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
                    this.placeholdersAfter += coerceAtLeast;
                }
                if (i11 > 0) {
                    this.callback.onRemoved(i4 + coerceAtLeast + this.placeholdersBefore, i11);
                    return true;
                }
                return true;
            }
            return false;
        }

        private final boolean dispatchRemovalAsPlaceholdersBefore(int i4, int i10) {
            int coerceAtLeast;
            if (i4 <= 0 && this.placeholdersBeforeState != 3) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Math.min(this.newList.getPlaceholdersBefore() - this.placeholdersBefore, i10), 0);
                int i11 = i10 - coerceAtLeast;
                if (i11 > 0) {
                    this.callback.onRemoved(this.placeholdersBefore + 0, i11);
                }
                if (coerceAtLeast > 0) {
                    this.placeholdersBeforeState = 2;
                    this.callback.onChanged(this.placeholdersBefore + 0, coerceAtLeast, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
                    this.placeholdersBefore += coerceAtLeast;
                    return true;
                }
                return true;
            }
            return false;
        }

        private final void fixLeadingPlaceholders() {
            int min = Math.min(this.oldList.getPlaceholdersBefore(), this.placeholdersBefore);
            int placeholdersBefore = this.newList.getPlaceholdersBefore() - this.placeholdersBefore;
            if (placeholdersBefore > 0) {
                if (min > 0) {
                    this.callback.onChanged(0, min, DiffingChangePayload.PLACEHOLDER_POSITION_CHANGE);
                }
                this.callback.onInserted(0, placeholdersBefore);
            } else if (placeholdersBefore < 0) {
                this.callback.onRemoved(0, -placeholdersBefore);
                int i4 = min + placeholdersBefore;
                if (i4 > 0) {
                    this.callback.onChanged(0, i4, DiffingChangePayload.PLACEHOLDER_POSITION_CHANGE);
                }
            }
            this.placeholdersBefore = this.newList.getPlaceholdersBefore();
        }

        private final void fixTrailingPlaceholders() {
            int min = Math.min(this.oldList.getPlaceholdersAfter(), this.placeholdersAfter);
            int placeholdersAfter = this.newList.getPlaceholdersAfter();
            int i4 = this.placeholdersAfter;
            int i10 = placeholdersAfter - i4;
            int i11 = this.placeholdersBefore + this.storageCount + i4;
            int i12 = i11 - min;
            boolean z9 = i12 != this.oldList.getSize() - min;
            if (i10 > 0) {
                this.callback.onInserted(i11, i10);
            } else if (i10 < 0) {
                this.callback.onRemoved(i11 + i10, -i10);
                min += i10;
            }
            if (min > 0 && z9) {
                this.callback.onChanged(i12, min, DiffingChangePayload.PLACEHOLDER_POSITION_CHANGE);
            }
            this.placeholdersAfter = this.newList.getPlaceholdersAfter();
        }

        private final int offsetForDispatch(int i4) {
            return i4 + this.placeholdersBefore;
        }

        public final void fixPlaceholders() {
            fixLeadingPlaceholders();
            fixTrailingPlaceholders();
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onChanged(int i4, int i10, @h Object obj) {
            this.callback.onChanged(i4 + this.placeholdersBefore, i10, obj);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i4, int i10) {
            if (!dispatchInsertAsPlaceholderAfter(i4, i10) && !dispatchInsertAsPlaceholderBefore(i4, i10)) {
                this.callback.onInserted(i4 + this.placeholdersBefore, i10);
            }
            this.storageCount += i10;
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i4, int i10) {
            this.callback.onMoved(i4 + this.placeholdersBefore, i10 + this.placeholdersBefore);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i4, int i10) {
            if (!dispatchRemovalAsPlaceholdersAfter(i4, i10) && !dispatchRemovalAsPlaceholdersBefore(i4, i10)) {
                this.callback.onRemoved(i4 + this.placeholdersBefore, i10);
            }
            this.storageCount -= i10;
        }
    }

    private OverlappingListsDiffDispatcher() {
    }

    public final <T> void dispatchDiff(@g NullPaddedList<T> oldList, @g NullPaddedList<T> newList, @g ListUpdateCallback callback, @g NullPaddedDiffResult diffResult) {
        Intrinsics.checkNotNullParameter(oldList, "oldList");
        Intrinsics.checkNotNullParameter(newList, "newList");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        PlaceholderUsingUpdateCallback placeholderUsingUpdateCallback = new PlaceholderUsingUpdateCallback(oldList, newList, callback);
        diffResult.getDiff().dispatchUpdatesTo(placeholderUsingUpdateCallback);
        placeholderUsingUpdateCallback.fixPlaceholders();
    }
}
