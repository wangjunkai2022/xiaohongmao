package com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.internal.managers.g;
import q6.i;

/* compiled from: Hilt_PrivateRoomFragment.java */
/* loaded from: classes3.dex */
public abstract class a extends Fragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f53948a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53949b;

    /* renamed from: c  reason: collision with root package name */
    private volatile g f53950c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f53951d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53952e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        this.f53951d = new Object();
        this.f53952e = false;
    }

    private void W() {
        if (this.f53948a == null) {
            this.f53948a = g.b(super.getContext(), this);
            this.f53949b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final g componentManager() {
        if (this.f53950c == null) {
            synchronized (this.f53951d) {
                if (this.f53950c == null) {
                    this.f53950c = V();
                }
            }
        }
        return this.f53950c;
    }

    protected g V() {
        return new g(this);
    }

    protected void X() {
        if (this.f53952e) {
            return;
        }
        this.f53952e = true;
        ((c) generatedComponent()).A((PrivateRoomFragment) i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f53949b) {
            W();
            return this.f53948a;
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
        return onGetLayoutInflater.cloneInContext(g.c(onGetLayoutInflater, this));
    }

    a(int i4) {
        super(i4);
        this.f53951d = new Object();
        this.f53952e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53948a;
        q6.f.d(contextWrapper == null || g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
