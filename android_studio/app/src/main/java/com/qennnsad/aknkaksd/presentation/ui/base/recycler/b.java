package com.qennnsad.aknkaksd.presentation.ui.base.recycler;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SimpleRecyclerHolder.java */
/* loaded from: classes3.dex */
public abstract class b<DataType> extends RecyclerView.ViewHolder {
    public b(View view) {
        super(view);
    }

    public abstract void b(DataType datatype);
}
