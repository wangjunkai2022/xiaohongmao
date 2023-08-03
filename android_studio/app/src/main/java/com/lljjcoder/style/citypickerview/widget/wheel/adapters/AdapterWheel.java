package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.content.Context;
import com.lljjcoder.style.citypickerview.widget.wheel.WheelAdapter;

/* loaded from: classes3.dex */
public class AdapterWheel extends AbstractWheelTextAdapter {
    private WheelAdapter adapter;

    public AdapterWheel(Context context, WheelAdapter wheelAdapter) {
        super(context);
        this.adapter = wheelAdapter;
    }

    public WheelAdapter getAdapter() {
        return this.adapter;
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.AbstractWheelTextAdapter
    protected CharSequence getItemText(int i4) {
        return this.adapter.getItem(i4);
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public int getItemsCount() {
        return this.adapter.getItemsCount();
    }
}
