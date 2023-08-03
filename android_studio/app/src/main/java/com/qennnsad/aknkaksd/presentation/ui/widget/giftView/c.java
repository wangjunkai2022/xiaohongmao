package com.qennnsad.aknkaksd.presentation.ui.widget.giftView;

import android.view.View;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.List;

/* compiled from: GiftViewPagerAdapter.java */
/* loaded from: classes3.dex */
public class c extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f54430a;

    public c(List<View> list) {
        this.f54430a = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(View view, int i4, Object obj) {
        ((ViewPager) view).removeView(this.f54430a.get(i4));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f54430a.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return super.getItemPosition(obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(View view, int i4) {
        ((ViewPager) view).addView(this.f54430a.get(i4));
        return this.f54430a.get(i4);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
