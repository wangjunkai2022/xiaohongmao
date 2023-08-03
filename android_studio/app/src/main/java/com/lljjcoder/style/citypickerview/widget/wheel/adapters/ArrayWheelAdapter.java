package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.content.Context;
import java.util.List;

/* loaded from: classes3.dex */
public class ArrayWheelAdapter<T> extends AbstractWheelTextAdapter {
    private List<T> items;

    public ArrayWheelAdapter(Context context, List<T> list) {
        super(context);
        this.items = list;
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.AbstractWheelTextAdapter
    public CharSequence getItemText(int i4) {
        if (i4 < 0 || i4 >= this.items.size()) {
            return null;
        }
        T t9 = this.items.get(i4);
        if (t9 instanceof CharSequence) {
            return (CharSequence) t9;
        }
        return t9.toString();
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public int getItemsCount() {
        return this.items.size();
    }
}
