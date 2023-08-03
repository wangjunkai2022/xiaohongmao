package com.qennnsad.aknkaksd.presentation.module.main.anchors.vip;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment;
import dagger.hilt.android.internal.managers.g;
import q6.i;

/* compiled from: Hilt_VipAnchorFragment.java */
/* loaded from: classes3.dex */
public abstract class a<Event> extends AbstractAnchorFragment<Event> implements q6.d {

    /* renamed from: i  reason: collision with root package name */
    private ContextWrapper f51583i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f51584j;

    /* renamed from: k  reason: collision with root package name */
    private volatile g f51585k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f51586l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private boolean f51587m = false;

    private void P0() {
        if (this.f51583i == null) {
            this.f51583i = g.b(super.getContext(), this);
            this.f51584j = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: N0 */
    public final g componentManager() {
        if (this.f51585k == null) {
            synchronized (this.f51586l) {
                if (this.f51585k == null) {
                    this.f51585k = O0();
                }
            }
        }
        return this.f51585k;
    }

    protected g O0() {
        return new g(this);
    }

    protected void Q0() {
        if (this.f51587m) {
            return;
        }
        this.f51587m = true;
        ((b) generatedComponent()).O((VipAnchorFragment) i.a(this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    public /* bridge */ /* synthetic */ l e0() {
        return super.z0();
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f51584j) {
            P0();
            return this.f51583i;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        P0();
        Q0();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(g.c(onGetLayoutInflater, this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f51583i;
        q6.f.d(contextWrapper == null || g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        P0();
        Q0();
    }
}
