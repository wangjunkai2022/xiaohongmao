package com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

/* compiled from: Hilt_ChatListFragment.java */
/* loaded from: classes3.dex */
public abstract class j extends Fragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f52642a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52643b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f52644c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f52645d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f52646e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this.f52645d = new Object();
        this.f52646e = false;
    }

    private void W() {
        if (this.f52642a == null) {
            this.f52642a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f52643b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f52644c == null) {
            synchronized (this.f52645d) {
                if (this.f52644c == null) {
                    this.f52644c = V();
                }
            }
        }
        return this.f52644c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f52646e) {
            return;
        }
        this.f52646e = true;
        ((e) generatedComponent()).q((ChatListFragment) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f52643b) {
            W();
            return this.f52642a;
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

    j(int i4) {
        super(i4);
        this.f52645d = new Object();
        this.f52646e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52642a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
