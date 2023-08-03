package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

/* compiled from: Hilt_PurchaseItemListFragmentDialog.java */
/* loaded from: classes3.dex */
public abstract class a extends BottomSheetDialogFragment implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private ContextWrapper f53389a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53390b;

    /* renamed from: c  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f53391c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f53392d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private boolean f53393e = false;

    private void W() {
        if (this.f53389a == null) {
            this.f53389a = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f53390b = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: U */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f53391c == null) {
            synchronized (this.f53392d) {
                if (this.f53391c == null) {
                    this.f53391c = V();
                }
            }
        }
        return this.f53391c;
    }

    protected dagger.hilt.android.internal.managers.g V() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void X() {
        if (this.f53393e) {
            return;
        }
        this.f53393e = true;
        ((i) generatedComponent()).c((PurchaseItemListFragmentDialog) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f53390b) {
            W();
            return this.f53389a;
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

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53389a;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        W();
        X();
    }
}
