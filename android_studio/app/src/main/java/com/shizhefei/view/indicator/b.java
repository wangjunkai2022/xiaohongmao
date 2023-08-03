package com.shizhefei.view.indicator;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;

/* compiled from: FragmentListPageAdapter.java */
/* loaded from: classes3.dex */
public abstract class b extends PagerAdapter {

    /* renamed from: f  reason: collision with root package name */
    private static final String f55446f = "FragmentStatePagerAdapter";

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f55447g = false;

    /* renamed from: a  reason: collision with root package name */
    private final FragmentManager f55448a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentTransaction f55449b = null;

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<Fragment.SavedState> f55450c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<Fragment> f55451d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private Fragment f55452e = null;

    public b(FragmentManager fragmentManager) {
        this.f55448a = fragmentManager;
    }

    public Fragment a() {
        return this.f55452e;
    }

    public Fragment b(int i4) {
        return this.f55451d.get(i4);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i4, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f55449b == null) {
            this.f55449b = this.f55448a.beginTransaction();
        }
        this.f55450c.put(i4, this.f55448a.saveFragmentInstanceState(fragment));
        this.f55451d.remove(i4);
        this.f55449b.remove(fragment);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f55449b;
        if (fragmentTransaction != null) {
            fragmentTransaction.commitAllowingStateLoss();
            this.f55449b = null;
            this.f55448a.executePendingTransactions();
        }
    }

    public abstract Fragment getItem(int i4);

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i4) {
        Fragment fragment = this.f55451d.get(i4);
        if (fragment != null) {
            return fragment;
        }
        if (this.f55449b == null) {
            this.f55449b = this.f55448a.beginTransaction();
        }
        Fragment item = getItem(i4);
        Fragment.SavedState savedState = this.f55450c.get(i4);
        if (savedState != null) {
            item.setInitialSavedState(savedState);
        }
        item.setMenuVisibility(false);
        item.setUserVisibleHint(false);
        this.f55451d.put(i4, item);
        this.f55449b.add(viewGroup.getId(), item);
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            this.f55450c.clear();
            this.f55451d.clear();
            if (bundle.containsKey("states")) {
                this.f55450c = bundle.getSparseParcelableArray("states");
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f55448a.getFragment(bundle, str);
                    if (fragment != null) {
                        fragment.setMenuVisibility(false);
                        this.f55451d.put(parseInt, fragment);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f55450c.size() > 0) {
            bundle = new Bundle();
            bundle.putSparseParcelableArray("states", this.f55450c.clone());
        } else {
            bundle = null;
        }
        int size = this.f55451d.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = this.f55451d.keyAt(i4);
            Fragment valueAt = this.f55451d.valueAt(i4);
            if (valueAt != null && valueAt.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f55448a.putFragment(bundle, "f" + keyAt, valueAt);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i4, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f55452e;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.f55452e.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.f55452e = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }
}
