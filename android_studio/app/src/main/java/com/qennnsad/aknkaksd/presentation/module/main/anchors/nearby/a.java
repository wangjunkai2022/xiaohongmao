package com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby;

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

/* compiled from: Hilt_NearbyAnchorFragment.java */
/* loaded from: classes3.dex */
public abstract class a<Event> extends AbstractAnchorFragment<Event> implements q6.d {

    /* renamed from: i  reason: collision with root package name */
    private ContextWrapper f51551i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f51552j;

    /* renamed from: k  reason: collision with root package name */
    private volatile g f51553k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f51554l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private boolean f51555m = false;

    private void P0() {
        if (this.f51551i == null) {
            this.f51551i = g.b(super.getContext(), this);
            this.f51552j = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: N0 */
    public final g componentManager() {
        if (this.f51553k == null) {
            synchronized (this.f51554l) {
                if (this.f51553k == null) {
                    this.f51553k = O0();
                }
            }
        }
        return this.f51553k;
    }

    protected g O0() {
        return new g(this);
    }

    protected void Q0() {
        if (this.f51555m) {
            return;
        }
        this.f51555m = true;
        ((b) generatedComponent()).I((NearbyAnchorFragment) i.a(this));
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
        if (super.getContext() != null || this.f51552j) {
            P0();
            return this.f51551i;
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
        ContextWrapper contextWrapper = this.f51551i;
        q6.f.d(contextWrapper == null || g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        P0();
        Q0();
    }
}
