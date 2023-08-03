package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment;

/* compiled from: Hilt_ContactListFragment.java */
/* loaded from: classes3.dex */
public abstract class n<VB extends ViewBinding, Event> extends BaseMvvmFragment<VB, Event> implements q6.d {

    /* renamed from: f  reason: collision with root package name */
    private ContextWrapper f52684f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f52685g;

    /* renamed from: h  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f52686h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f52687i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private boolean f52688j = false;

    private void v0() {
        if (this.f52684f == null) {
            this.f52684f = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f52685g = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f52685g) {
            v0();
            return this.f52684f;
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
        v0();
        w0();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    @Override // q6.d
    /* renamed from: t0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f52686h == null) {
            synchronized (this.f52687i) {
                if (this.f52686h == null) {
                    this.f52686h = u0();
                }
            }
        }
        return this.f52686h;
    }

    protected dagger.hilt.android.internal.managers.g u0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void w0() {
        if (this.f52688j) {
            return;
        }
        this.f52688j = true;
        ((j) generatedComponent()).K((ContactListFragment) q6.i.a(this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52684f;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        v0();
        w0();
    }
}
