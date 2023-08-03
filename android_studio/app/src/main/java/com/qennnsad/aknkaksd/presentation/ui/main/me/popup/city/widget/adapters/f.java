package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: WheelViewAdapter.java */
/* loaded from: classes3.dex */
public interface f {
    View getEmptyItem(View view, ViewGroup viewGroup);

    View getItem(int i4, View view, ViewGroup viewGroup);

    int getItemsCount();

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
