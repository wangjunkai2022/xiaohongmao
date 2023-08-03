package com.shizhefei.view.viewpager;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;

/* compiled from: RecyclingPagerAdapter.java */
/* loaded from: classes3.dex */
public abstract class c extends PagerAdapter {

    /* renamed from: b  reason: collision with root package name */
    public static final int f55516b = -1;

    /* renamed from: a  reason: collision with root package name */
    private final b f55517a;

    public c() {
        this(new b());
    }

    public int a(int i4) {
        return 0;
    }

    public abstract View b(int i4, View view, ViewGroup viewGroup);

    public int c() {
        return 1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i4, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        int a10 = a(i4);
        if (a10 != -1) {
            this.f55517a.a(view, i4, a10);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i4) {
        int a10 = a(i4);
        View b10 = b(i4, a10 != -1 ? this.f55517a.b(i4, a10) : null, viewGroup);
        viewGroup.addView(b10);
        return b10;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f55517a.e();
        super.notifyDataSetChanged();
    }

    c(b bVar) {
        this.f55517a = bVar;
        bVar.f(c());
    }
}
