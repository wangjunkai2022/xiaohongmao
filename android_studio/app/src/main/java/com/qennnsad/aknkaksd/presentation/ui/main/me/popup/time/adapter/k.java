package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedList;
import java.util.List;

/* compiled from: WheelRecycle.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f53115a;

    /* renamed from: b  reason: collision with root package name */
    private List<View> f53116b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f53117c;

    public k(WheelView wheelView) {
        this.f53117c = wheelView;
    }

    private List<View> a(View view, List<View> list) {
        if (list == null) {
            list = new LinkedList<>();
        }
        list.add(view);
        return list;
    }

    private View c(List<View> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        View view = list.get(0);
        list.remove(0);
        return view;
    }

    private void g(View view, int i4) {
        int itemsCount = this.f53117c.getViewAdapter().getItemsCount();
        if ((i4 < 0 || i4 >= itemsCount) && !this.f53117c.x()) {
            this.f53116b = a(view, this.f53116b);
            return;
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        int i10 = i4 % itemsCount;
        this.f53115a = a(view, this.f53115a);
    }

    public void b() {
        List<View> list = this.f53115a;
        if (list != null) {
            list.clear();
        }
        List<View> list2 = this.f53116b;
        if (list2 != null) {
            list2.clear();
        }
    }

    public View d() {
        return c(this.f53116b);
    }

    public View e() {
        return c(this.f53115a);
    }

    public int f(LinearLayout linearLayout, int i4, e eVar) {
        int i10 = i4;
        int i11 = 0;
        while (i11 < linearLayout.getChildCount()) {
            if (eVar.a(i10)) {
                i11++;
            } else {
                g(linearLayout.getChildAt(i11), i10);
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
