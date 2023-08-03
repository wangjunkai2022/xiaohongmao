package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {
    private static final int TYPE_ADD = 1;
    private static final int TYPE_CHANGE = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_REMOVE = 2;
    final ListUpdateCallback mWrapped;
    int mLastEventType = 0;
    int mLastEventPosition = -1;
    int mLastEventCount = -1;
    Object mLastEventPayload = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.mWrapped = listUpdateCallback;
    }

    public void dispatchLastEvent() {
        int i4 = this.mLastEventType;
        if (i4 == 0) {
            return;
        }
        if (i4 == 1) {
            this.mWrapped.onInserted(this.mLastEventPosition, this.mLastEventCount);
        } else if (i4 == 2) {
            this.mWrapped.onRemoved(this.mLastEventPosition, this.mLastEventCount);
        } else if (i4 == 3) {
            this.mWrapped.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
        }
        this.mLastEventPayload = null;
        this.mLastEventType = 0;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i4, int i10, Object obj) {
        int i11;
        if (this.mLastEventType == 3) {
            int i12 = this.mLastEventPosition;
            int i13 = this.mLastEventCount;
            if (i4 <= i12 + i13 && (i11 = i4 + i10) >= i12 && this.mLastEventPayload == obj) {
                this.mLastEventPosition = Math.min(i4, i12);
                this.mLastEventCount = Math.max(i13 + i12, i11) - this.mLastEventPosition;
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = i4;
        this.mLastEventCount = i10;
        this.mLastEventPayload = obj;
        this.mLastEventType = 3;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i4, int i10) {
        int i11;
        if (this.mLastEventType == 1 && i4 >= (i11 = this.mLastEventPosition)) {
            int i12 = this.mLastEventCount;
            if (i4 <= i11 + i12) {
                this.mLastEventCount = i12 + i10;
                this.mLastEventPosition = Math.min(i4, i11);
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = i4;
        this.mLastEventCount = i10;
        this.mLastEventType = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i4, int i10) {
        dispatchLastEvent();
        this.mWrapped.onMoved(i4, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i4, int i10) {
        int i11;
        if (this.mLastEventType == 2 && (i11 = this.mLastEventPosition) >= i4 && i11 <= i4 + i10) {
            this.mLastEventCount += i10;
            this.mLastEventPosition = i4;
            return;
        }
        dispatchLastEvent();
        this.mLastEventPosition = i4;
        this.mLastEventCount = i10;
        this.mLastEventType = 2;
    }
}
