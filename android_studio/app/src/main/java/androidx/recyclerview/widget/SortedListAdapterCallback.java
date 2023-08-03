package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;

/* loaded from: classes.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback
    public void onChanged(int i4, int i10) {
        this.mAdapter.notifyItemRangeChanged(i4, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i4, int i10) {
        this.mAdapter.notifyItemRangeInserted(i4, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i4, int i10) {
        this.mAdapter.notifyItemMoved(i4, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i4, int i10) {
        this.mAdapter.notifyItemRangeRemoved(i4, i10);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i4, int i10, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i4, i10, obj);
    }
}
