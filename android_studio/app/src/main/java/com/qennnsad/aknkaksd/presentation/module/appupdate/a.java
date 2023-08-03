package com.qennnsad.aknkaksd.presentation.module.appupdate;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment;

/* compiled from: Hilt_UpdateFragment.java */
/* loaded from: classes3.dex */
public abstract class a<VB extends ViewBinding> extends BaseDialogFragment<VB> implements q6.d {

    /* renamed from: b  reason: collision with root package name */
    private ContextWrapper f50976b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50977c;

    /* renamed from: d  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f50978d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f50979e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f50980f = false;

    private void b0() {
        if (this.f50976b == null) {
            this.f50976b = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f50977c = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: Z */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f50978d == null) {
            synchronized (this.f50979e) {
                if (this.f50978d == null) {
                    this.f50978d = a0();
                }
            }
        }
        return this.f50978d;
    }

    protected dagger.hilt.android.internal.managers.g a0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void c0() {
        if (this.f50980f) {
            return;
        }
        this.f50980f = true;
        ((g) generatedComponent()).i((UpdateFragment) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f50977c) {
            b0();
            return this.f50976b;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        b0();
        c0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f50976b;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        b0();
        c0();
    }
}
