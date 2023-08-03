package com.qennnsad.aknkaksd.presentation.module.auth;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelProvider;

/* compiled from: Hilt_TestConfigDialog.java */
/* loaded from: classes3.dex */
public abstract class g extends DialogFragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f51096a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f51097b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f51098c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f51099d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51100e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g() {
        this.f51099d = new Object();
        this.f51100e = false;
    }

    private void W() {
        if (this.f51096a == null) {
            this.f51096a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f51097b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f51098c == null) {
            synchronized (this.f51099d) {
                if (this.f51098c == null) {
                    this.f51098c = V();
                }
            }
        }
        return this.f51098c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f51100e) {
            return;
        }
        this.f51100e = true;
        ((l) generatedComponent()).f((TestConfigDialog) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f51097b) {
            W();
            return this.f51096a;
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
        W();
        X();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    g(int i4) {
        super(i4);
        this.f51099d = new Object();
        this.f51100e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f51096a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
