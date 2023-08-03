package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;

/* compiled from: Hilt_StreamChatDialog.java */
/* loaded from: classes3.dex */
public abstract class c<VB extends ViewBinding, Event> extends com.qennnsad.aknkaksd.presentation.common.e<VB, Event> implements q6.d {

    /* renamed from: b  reason: collision with root package name */
    private ContextWrapper f54266b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54267c;

    /* renamed from: d  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f54268d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f54269e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f54270f = false;

    private void g0() {
        if (this.f54266b == null) {
            this.f54266b = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f54267c = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: e0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f54268d == null) {
            synchronized (this.f54269e) {
                if (this.f54268d == null) {
                    this.f54268d = f0();
                }
            }
        }
        return this.f54268d;
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
        if (super.getContext() != null || this.f54267c) {
            g0();
            return this.f54266b;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    protected void h0() {
        if (this.f54270f) {
            return;
        }
        this.f54270f = true;
        ((h) generatedComponent()).k((StreamChatDialog) q6.i.a(this));
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
        ContextWrapper contextWrapper = this.f54266b;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        g0();
        h0();
    }
}
