package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ListUpdateCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NullPaddedListDiffHelper.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/paging/OffsettingListUpdateCallback;", "Landroidx/recyclerview/widget/ListUpdateCallback;", TypedValues.Cycle.S_WAVE_OFFSET, "", com.alipay.sdk.authjs.a.f6838i, "(ILandroidx/recyclerview/widget/ListUpdateCallback;)V", "onChanged", "", "position", "count", "payload", "", "onInserted", "onMoved", "fromPosition", "toPosition", "onRemoved", "paging-runtime_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
final class OffsettingListUpdateCallback implements ListUpdateCallback {
    @g
    private final ListUpdateCallback callback;
    private final int offset;

    public OffsettingListUpdateCallback(int i4, @g ListUpdateCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.offset = i4;
        this.callback = callback;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i4, int i10, @h Object obj) {
        this.callback.onChanged(i4 + this.offset, i10, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i4, int i10) {
        this.callback.onInserted(i4 + this.offset, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i4, int i10) {
        ListUpdateCallback listUpdateCallback = this.callback;
        int i11 = this.offset;
        listUpdateCallback.onMoved(i4 + i11, i10 + i11);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i4, int i10) {
        this.callback.onRemoved(i4 + this.offset, i10);
    }
}
