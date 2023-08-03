package com.gigamole.infinitecycleviewpager;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;

/* compiled from: InfiniteCyclePagerAdapter.java */
/* loaded from: classes2.dex */
class c extends PagerAdapter {

    /* renamed from: c  reason: collision with root package name */
    private static final int f16225c = 10000000;

    /* renamed from: a  reason: collision with root package name */
    private final PagerAdapter f16226a;

    /* renamed from: b  reason: collision with root package name */
    private a f16227b;

    /* compiled from: InfiniteCyclePagerAdapter.java */
    /* loaded from: classes2.dex */
    protected interface a {
        void a();
    }

    public c(PagerAdapter pagerAdapter) {
        this.f16226a = pagerAdapter;
    }

    public PagerAdapter a() {
        return this.f16226a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(int i4) {
        return i4 % this.f16226a.getCount();
    }

    public void c(a aVar) {
        this.f16227b = aVar;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i4, Object obj) {
        this.f16226a.destroyItem(viewGroup, b(i4), obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        this.f16226a.finishUpdate(viewGroup);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.f16226a.getCount() == 0) {
            return 0;
        }
        return f16225c;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return this.f16226a.getItemPosition(obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i4) {
        return this.f16226a.getPageTitle(b(i4));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public float getPageWidth(int i4) {
        return this.f16226a.getPageWidth(b(i4));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i4) {
        return this.f16226a.instantiateItem(viewGroup, b(i4));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return this.f16226a.isViewFromObject(view, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f16226a.notifyDataSetChanged();
        a aVar = this.f16227b;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f16226a.registerDataSetObserver(dataSetObserver);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.f16226a.restoreState(parcelable, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return this.f16226a.saveState();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i4, Object obj) {
        this.f16226a.setPrimaryItem(viewGroup, i4, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        this.f16226a.startUpdate(viewGroup);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f16226a.unregisterDataSetObserver(dataSetObserver);
    }
}
