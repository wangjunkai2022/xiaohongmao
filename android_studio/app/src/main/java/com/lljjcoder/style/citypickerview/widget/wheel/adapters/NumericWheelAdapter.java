package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.content.Context;

/* loaded from: classes3.dex */
public class NumericWheelAdapter extends AbstractWheelTextAdapter {
    public static final int DEFAULT_MAX_VALUE = 9;
    private static final int DEFAULT_MIN_VALUE = 0;
    private String format;
    private int maxValue;
    private int minValue;

    public NumericWheelAdapter(Context context) {
        this(context, 0, 9);
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.AbstractWheelTextAdapter
    public CharSequence getItemText(int i4) {
        if (i4 < 0 || i4 >= getItemsCount()) {
            return null;
        }
        int i10 = this.minValue + i4;
        String str = this.format;
        return str != null ? String.format(str, Integer.valueOf(i10)) : Integer.toString(i10);
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public int getItemsCount() {
        return (this.maxValue - this.minValue) + 1;
    }

    public NumericWheelAdapter(Context context, int i4, int i10) {
        this(context, i4, i10, null);
    }

    public NumericWheelAdapter(Context context, int i4, int i10, String str) {
        super(context);
        this.minValue = i4;
        this.maxValue = i10;
        this.format = str;
    }
}
