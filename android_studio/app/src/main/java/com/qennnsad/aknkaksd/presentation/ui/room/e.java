package com.qennnsad.aknkaksd.presentation.ui.room;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

/* compiled from: Hilt_RoomFinishedFragment.java */
/* loaded from: classes3.dex */
public abstract class e extends Fragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f53318a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53319b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f53320c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f53321d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53322e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        this.f53321d = new Object();
        this.f53322e = false;
    }

    private void W() {
        if (this.f53318a == null) {
            this.f53318a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f53319b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f53320c == null) {
            synchronized (this.f53321d) {
                if (this.f53320c == null) {
                    this.f53320c = V();
                }
            }
        }
        return this.f53320c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f53322e) {
            return;
        }
        this.f53322e = true;
        ((h) generatedComponent()).x((RoomFinishedFragment) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f53319b) {
            W();
            return this.f53318a;
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
        W();
        X();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    e(int i4) {
        super(i4);
        this.f53321d = new Object();
        this.f53322e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53318a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
