package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedList;
import java.util.List;

/* compiled from: WheelRecycle.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f53047a;

    /* renamed from: b  reason: collision with root package name */
    private List<View> f53048b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f53049c;

    public f(WheelView wheelView) {
        this.f53049c = wheelView;
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
        int itemsCount = this.f53049c.getViewAdapter().getItemsCount();
        if ((i4 < 0 || i4 >= itemsCount) && !this.f53049c.x()) {
            this.f53048b = a(view, this.f53048b);
            return;
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        int i10 = i4 % itemsCount;
        this.f53047a = a(view, this.f53047a);
    }

    public void b() {
        List<View> list = this.f53047a;
        if (list != null) {
            list.clear();
        }
        List<View> list2 = this.f53048b;
        if (list2 != null) {
            list2.clear();
        }
    }

    public View d() {
        return c(this.f53048b);
    }

    public View e() {
        return c(this.f53047a);
    }

    public int f(LinearLayout linearLayout, int i4, a aVar) {
        int i10 = i4;
        int i11 = 0;
        while (i11 < linearLayout.getChildCount()) {
            if (aVar.a(i10)) {
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
