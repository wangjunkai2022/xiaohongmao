package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

/* compiled from: Hilt_SettingsFragment.java */
/* loaded from: classes3.dex */
public abstract class b extends Fragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f52723a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52724b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f52725c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f52726d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f52727e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b() {
        this.f52726d = new Object();
        this.f52727e = false;
    }

    private void W() {
        if (this.f52723a == null) {
            this.f52723a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f52724b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f52725c == null) {
            synchronized (this.f52726d) {
                if (this.f52725c == null) {
                    this.f52725c = V();
                }
            }
        }
        return this.f52725c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f52727e) {
            return;
        }
        this.f52727e = true;
        ((k) generatedComponent()).j((SettingsFragment) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f52724b) {
            W();
            return this.f52723a;
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

    b(int i4) {
        super(i4);
        this.f52726d = new Object();
        this.f52727e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52723a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
