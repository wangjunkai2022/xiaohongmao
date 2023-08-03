package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public interface WheelViewAdapter {
    View getEmptyItem(View view, ViewGroup viewGroup);

    View getItem(int i4, View view, ViewGroup viewGroup);

    int getItemsCount();

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
