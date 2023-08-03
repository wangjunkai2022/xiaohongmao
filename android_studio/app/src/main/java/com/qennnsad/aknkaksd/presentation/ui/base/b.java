package com.qennnsad.aknkaksd.presentation.ui.base;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.didi.live.spring.R;
import com.im.freechat.sdk.a;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.q0;

/* compiled from: BaseFragment.java */
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public abstract class b extends q implements n {
    @u7.a

    /* renamed from: f  reason: collision with root package name */
    protected x4.a f52489f;
    @u7.a

    /* renamed from: g  reason: collision with root package name */
    protected g5.a f52490g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    protected com.qennnsad.aknkaksd.data.repository.m f52491h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    protected q0 f52492i;

    /* renamed from: k  reason: collision with root package name */
    private ProgressDialog f52494k;

    /* renamed from: l  reason: collision with root package name */
    protected float f52495l;

    /* renamed from: m  reason: collision with root package name */
    protected int f52496m;

    /* renamed from: n  reason: collision with root package name */
    protected int f52497n;

    /* renamed from: o  reason: collision with root package name */
    protected int f52498o;

    /* renamed from: p  reason: collision with root package name */
    protected int f52499p;

    /* renamed from: q  reason: collision with root package name */
    private Dialog f52500q;

    /* renamed from: r  reason: collision with root package name */
    protected View f52501r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f52502s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f52503t;

    /* renamed from: j  reason: collision with root package name */
    protected final String f52493j = getClass().getSimpleName();

    /* renamed from: u  reason: collision with root package name */
    protected final a.C0327a f52504u = new a.C0327a();

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void C() {
        h0(R.string.msg_unknown_error, false);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void K() {
    }

    protected final <T extends View> T Y(@NonNull View view, @IdRes int i4) {
        return (T) view.findViewById(i4);
    }

    public BaseStreamActivity<?> Z() {
        return (BaseStreamActivity) requireActivity();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void a() {
        if (isVisible()) {
            if (!this.f52503t) {
                this.f52503t = true;
            }
            if (getActivity() == null || getActivity().isFinishing()) {
                return;
            }
            Z().a();
        }
    }

    @LayoutRes
    protected abstract int a0();

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    @NonNull
    public Context b() {
        return BaseBeautyApplication.getContextInstance();
    }

    @AnimRes
    protected int b0() {
        return R.anim.fragment_slide_left_in;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public Dialog c() {
        if (!isVisible() || getActivity() == null || getActivity().isFinishing()) {
            return null;
        }
        return Z().c();
    }

    @AnimRes
    protected int c0() {
        return R.anim.fragment_slide_left_out;
    }

    protected abstract void d0(View view);

    public boolean e0() {
        if (isVisible() || getActivity() == null || getActivity().isFinishing()) {
            return Z().s0();
        }
        return false;
    }

    protected void f0(boolean z9) {
    }

    public void g0() {
        com.qennnsad.aknkaksd.util.l.u(requireActivity(), this.f52490g);
    }

    protected void h0(@StringRes int i4, boolean z9) {
        com.qennnsad.aknkaksd.util.toast.a.b(i4, z9);
    }

    protected void i0(@NonNull String str, boolean z9) {
        com.qennnsad.aknkaksd.util.toast.a.l(str, z9);
    }

    protected void j0(@StringRes int i4) {
        com.qennnsad.aknkaksd.util.toast.a.h(i4);
    }

    protected void k0(@NonNull String str) {
        com.qennnsad.aknkaksd.util.toast.a.k(str);
    }

    protected void l0(@StringRes int i4) {
        com.qennnsad.aknkaksd.util.toast.a.u(i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void n() {
        h0(R.string.msg_network_error, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f10 = displayMetrics.density;
        this.f52495l = f10;
        this.f52496m = displayMetrics.densityDpi;
        this.f52497n = displayMetrics.widthPixels;
        this.f52498o = displayMetrics.heightPixels;
        this.f52499p = (int) (f10 * 50.0f);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@m8.g LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str = this.f52493j;
        o0.j(str, "----- onCreateView ----- Bundle=" + bundle);
        View inflate = layoutInflater.inflate(a0(), viewGroup, false);
        this.f52501r = inflate;
        d0(inflate);
        if (this.f52502s && !this.f52503t) {
            o0.g(this.f52493j, "onCreateView-- onFragmentVisibleChange(true);");
            f0(true);
        }
        return this.f52501r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        o0.j(this.f52493j, "----- onDestroy -----");
        Dialog dialog = this.f52500q;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.f52504u.a();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        o0.j(this.f52493j, "----- onDestroyView -----");
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z9) {
        String str = this.f52493j;
        o0.j(str, "----- onHiddenChanged -----" + z9);
        super.onHiddenChanged(z9);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        o0.j(this.f52493j, "----- onPause -----");
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        o0.j(this.f52493j, "----- onResume -----");
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        o0.j(this.f52493j, "----- onViewCreated -----");
        super.onViewCreated(view, bundle);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public Dialog p(String str) {
        if (!isVisible() || requireActivity().isFinishing() || getActivity() == null || getActivity().isFinishing()) {
            return null;
        }
        return Z().p(str);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void r(String str) {
        i0(str, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z9) {
        super.setUserVisibleHint(z9);
        if (z9) {
            this.f52502s = true;
        }
        if (this.f52501r == null) {
            return;
        }
        if (!this.f52503t && this.f52502s) {
            o0.g(this.f52493j, "setUserVisibleHint-- onFragmentVisibleChange(true);");
            f0(true);
        } else if (this.f52502s) {
            o0.g(this.f52493j, "setUserVisibleHint-- onFragmentVisibleChange(false);");
            f0(false);
            this.f52502s = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivity(Intent intent) {
        super.startActivity(intent);
        getActivity().overridePendingTransition(b0(), c0());
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivityForResult(Intent intent, int i4) {
        super.startActivityForResult(intent, i4);
        getActivity().overridePendingTransition(b0(), c0());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void v(@m8.h String str) {
        com.qennnsad.aknkaksd.util.l.A(requireActivity(), str);
    }
}
