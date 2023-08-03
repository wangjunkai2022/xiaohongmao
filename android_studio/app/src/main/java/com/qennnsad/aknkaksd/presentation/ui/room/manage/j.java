package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelProvider;

/* compiled from: Hilt_RoomManageDialog.java */
/* loaded from: classes3.dex */
public abstract class j extends DialogFragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f53560a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53561b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f53562c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f53563d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53564e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this.f53563d = new Object();
        this.f53564e = false;
    }

    private void W() {
        if (this.f53560a == null) {
            this.f53560a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f53561b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f53562c == null) {
            synchronized (this.f53563d) {
                if (this.f53562c == null) {
                    this.f53562c = V();
                }
            }
        }
        return this.f53562c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f53564e) {
            return;
        }
        this.f53564e = true;
        ((l) generatedComponent()).J((RoomManageDialog) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f53561b) {
            W();
            return this.f53560a;
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

    j(int i4) {
        super(i4);
        this.f53563d = new Object();
        this.f53564e = false;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53560a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
