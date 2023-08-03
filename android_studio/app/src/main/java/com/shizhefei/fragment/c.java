package com.shizhefei.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* compiled from: ProxyLazyFragment.java */
/* loaded from: classes3.dex */
public final class c extends Fragment {

    /* renamed from: d  reason: collision with root package name */
    private static final String f55349d = "extra_class_name";

    /* renamed from: e  reason: collision with root package name */
    private static final String f55350e = "extra_arguments";

    /* renamed from: f  reason: collision with root package name */
    private static final int f55351f = 666;

    /* renamed from: g  reason: collision with root package name */
    private static final int f55352g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f55353h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f55354i = 0;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f55356b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f55355a = false;

    /* renamed from: c  reason: collision with root package name */
    private int f55357c = -1;

    private void U() {
        if (getChildFragmentManager().findFragmentById(f55351f) == null) {
            Bundle arguments = getArguments();
            Fragment instantiate = Fragment.instantiate(getContext(), arguments.getString(f55349d));
            instantiate.setArguments((Bundle) arguments.getParcelable(f55350e));
            getChildFragmentManager().beginTransaction().replace(f55351f, instantiate).commitAllowingStateLoss();
        }
    }

    @Nullable
    private Fragment V() {
        return getChildFragmentManager().findFragmentById(f55351f);
    }

    public static c W(@Nullable Class<? extends Fragment> cls) {
        return X(cls, null);
    }

    public static c X(@Nullable Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        c cVar = new c();
        Bundle bundle2 = new Bundle();
        bundle2.putString(f55349d, cls.getName());
        bundle2.putParcelable(f55350e, bundle);
        cVar.setArguments(bundle2);
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f55356b = frameLayout;
        frameLayout.setId(f55351f);
        this.f55356b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return this.f55356b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f55356b = null;
        this.f55355a = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        boolean z9;
        super.onViewCreated(view, bundle);
        int i4 = this.f55357c;
        if (i4 == -1) {
            z9 = getUserVisibleHint();
        } else {
            z9 = i4 == 1;
        }
        if (!z9 || this.f55355a) {
            return;
        }
        this.f55355a = true;
        U();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z9) {
        super.setUserVisibleHint(z9);
        this.f55357c = z9 ? 1 : 0;
        if (!z9 || this.f55355a || this.f55356b == null) {
            return;
        }
        this.f55355a = true;
        U();
    }
}
