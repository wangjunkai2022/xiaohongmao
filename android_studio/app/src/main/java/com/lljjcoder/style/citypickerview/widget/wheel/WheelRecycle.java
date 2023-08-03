package com.lljjcoder.style.citypickerview.widget.wheel;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class WheelRecycle {
    private List<View> emptyItems;
    private List<View> items;
    private WheelView wheel;

    public WheelRecycle(WheelView wheelView) {
        this.wheel = wheelView;
    }

    private List<View> addView(View view, List<View> list) {
        if (list == null) {
            list = new LinkedList<>();
        }
        list.add(view);
        return list;
    }

    private View getCachedView(List<View> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        View view = list.get(0);
        list.remove(0);
        return view;
    }

    private void recycleView(View view, int i4) {
        int itemsCount = this.wheel.getViewAdapter().getItemsCount();
        if ((i4 < 0 || i4 >= itemsCount) && !this.wheel.isCyclic()) {
            this.emptyItems = addView(view, this.emptyItems);
            return;
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        int i10 = i4 % itemsCount;
        this.items = addView(view, this.items);
    }

    public void clearAll() {
        List<View> list = this.items;
        if (list != null) {
            list.clear();
        }
        List<View> list2 = this.emptyItems;
        if (list2 != null) {
            list2.clear();
        }
    }

    public View getEmptyItem() {
        return getCachedView(this.emptyItems);
    }

    public View getItem() {
        return getCachedView(this.items);
    }

    public int recycleItems(LinearLayout linearLayout, int i4, ItemsRange itemsRange) {
        int i10 = i4;
        int i11 = 0;
        while (i11 < linearLayout.getChildCount()) {
            if (itemsRange.contains(i10)) {
                i11++;
            } else {
                recycleView(linearLayout.getChildAt(i11), i10);
                linearLayout.removeViewAt(i11);
                if (i11 == 0) {
                    i4++;
                }
            }
            i10++;
        }
        return i4;
    }
}
