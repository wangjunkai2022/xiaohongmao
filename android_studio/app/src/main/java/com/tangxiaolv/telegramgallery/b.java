package com.tangxiaolv.telegramgallery;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

/* compiled from: BaseFragmentAdapter.java */
/* loaded from: classes3.dex */
public class b extends BaseAdapter {
    @Override // android.widget.Adapter
    public int getCount() {
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i4) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        if (dataSetObserver != null) {
            super.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
