package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.qennnsad.aknkaksd.presentation.ui.base.e;
import com.qennnsad.aknkaksd.presentation.ui.base.n;

/* compiled from: Hilt_HistoryListFragmentDialog.java */
/* loaded from: classes3.dex */
public abstract class a<V extends n, P extends com.qennnsad.aknkaksd.presentation.ui.base.e<V>> extends com.qennnsad.aknkaksd.presentation.ui.base.a<V, P> implements q6.d {

    /* renamed from: d  reason: collision with root package name */
    private ContextWrapper f53323d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53324e;

    /* renamed from: f  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f53325f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f53326g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private boolean f53327h = false;

    private void k0() {
        if (this.f53323d == null) {
            this.f53323d = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f53324e = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f53324e) {
            k0();
            return this.f53323d;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // q6.d
    /* renamed from: i0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f53325f == null) {
            synchronized (this.f53326g) {
                if (this.f53325f == null) {
                    this.f53325f = j0();
                }
            }
        }
        return this.f53325f;
    }

    protected dagger.hilt.android.internal.managers.g j0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void l0() {
        if (this.f53327h) {
            return;
        }
        this.f53327h = true;
        ((h) generatedComponent()).H((g) q6.i.a(this));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        k0();
        l0();
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
        ContextWrapper contextWrapper = this.f53323d;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        k0();
        l0();
    }
}
