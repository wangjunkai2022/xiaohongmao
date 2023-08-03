package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;

/* compiled from: Hilt_RankTodayDialog.java */
/* loaded from: classes3.dex */
public abstract class a<VB extends ViewBinding, Event> extends com.qennnsad.aknkaksd.presentation.common.e<VB, Event> implements q6.d {

    /* renamed from: b  reason: collision with root package name */
    private ContextWrapper f52334b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52335c;

    /* renamed from: d  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f52336d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f52337e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f52338f = false;

    private void g0() {
        if (this.f52334b == null) {
            this.f52334b = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f52335c = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: e0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f52336d == null) {
            synchronized (this.f52337e) {
                if (this.f52336d == null) {
                    this.f52336d = f0();
                }
            }
        }
        return this.f52336d;
    }

    protected dagger.hilt.android.internal.managers.g f0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f52335c) {
            g0();
            return this.f52334b;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    protected void h0() {
        if (this.f52338f) {
            return;
        }
        this.f52338f = true;
        ((e) generatedComponent()).E((RankTodayDialog) q6.i.a(this));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        g0();
        h0();
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
        ContextWrapper contextWrapper = this.f52334b;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        g0();
        h0();
    }
}
