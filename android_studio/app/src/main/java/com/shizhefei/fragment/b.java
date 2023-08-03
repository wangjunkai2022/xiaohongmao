package com.shizhefei.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;

/* compiled from: LazyFragment.java */
/* loaded from: classes3.dex */
public class b extends a {

    /* renamed from: k  reason: collision with root package name */
    public static final String f55339k = "intent_boolean_lazyLoad";

    /* renamed from: l  reason: collision with root package name */
    private static final int f55340l = -1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f55341m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f55342n = 0;

    /* renamed from: f  reason: collision with root package name */
    private Bundle f55344f;

    /* renamed from: h  reason: collision with root package name */
    private FrameLayout f55346h;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55343e = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55345g = true;

    /* renamed from: i  reason: collision with root package name */
    private int f55347i = -1;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55348j = false;

    @Override // com.shizhefei.fragment.a
    public /* bridge */ /* synthetic */ View U(@IdRes int i4) {
        return super.U(i4);
    }

    @Override // com.shizhefei.fragment.a
    public /* bridge */ /* synthetic */ Context V() {
        return super.V();
    }

    @Override // com.shizhefei.fragment.a
    public /* bridge */ /* synthetic */ View W() {
        return super.W();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.shizhefei.fragment.a
    @Deprecated
    public final void X(Bundle bundle) {
        boolean z9;
        super.X(bundle);
        this.f55344f = bundle;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f55345g = arguments.getBoolean(f55339k, this.f55345g);
        }
        int i4 = this.f55347i;
        if (i4 == -1) {
            z9 = getUserVisibleHint();
        } else {
            z9 = i4 == 1;
        }
        if (this.f55345g) {
            if (z9 && !this.f55343e) {
                this.f55343e = true;
                b0(bundle);
                return;
            }
            LayoutInflater layoutInflater = this.f55335a;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(V());
            }
            FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
            this.f55346h = frameLayout;
            View a02 = a0(layoutInflater, frameLayout);
            if (a02 != null) {
                this.f55346h.addView(a02);
            }
            this.f55346h.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            super.Z(this.f55346h);
            return;
        }
        this.f55343e = true;
        b0(bundle);
    }

    @Override // com.shizhefei.fragment.a
    public void Y(int i4) {
        if (this.f55345g && W() != null && W().getParent() != null) {
            this.f55346h.removeAllViews();
            this.f55346h.addView(this.f55335a.inflate(i4, (ViewGroup) this.f55346h, false));
            return;
        }
        super.Y(i4);
    }

    @Override // com.shizhefei.fragment.a
    public void Z(View view) {
        if (this.f55345g && W() != null && W().getParent() != null) {
            this.f55346h.removeAllViews();
            this.f55346h.addView(view);
            return;
        }
        super.Z(view);
    }

    protected View a0(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    protected void b0(Bundle bundle) {
    }

    protected void c0() {
    }

    protected void d0() {
    }

    protected void e0() {
    }

    protected void f0() {
    }

    protected void g0() {
    }

    @Override // com.shizhefei.fragment.a, androidx.fragment.app.Fragment
    public /* bridge */ /* synthetic */ void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.shizhefei.fragment.a, androidx.fragment.app.Fragment
    @Deprecated
    public final void onDestroyView() {
        super.onDestroyView();
        if (this.f55343e) {
            c0();
        }
        this.f55343e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated
    public final void onPause() {
        super.onPause();
        if (this.f55343e) {
            f0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated
    public final void onResume() {
        super.onResume();
        if (this.f55343e) {
            g0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated
    public final void onStart() {
        super.onStart();
        if (this.f55343e && !this.f55348j && getUserVisibleHint()) {
            this.f55348j = true;
            d0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated
    public final void onStop() {
        super.onStop();
        if (this.f55343e && this.f55348j && getUserVisibleHint()) {
            this.f55348j = false;
            e0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z9) {
        super.setUserVisibleHint(z9);
        this.f55347i = z9 ? 1 : 0;
        if (z9 && !this.f55343e && W() != null) {
            this.f55343e = true;
            b0(this.f55344f);
            g0();
        }
        if (!this.f55343e || W() == null) {
            return;
        }
        if (z9) {
            this.f55348j = true;
            d0();
            return;
        }
        this.f55348j = false;
        e0();
    }
}
