package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment;

/* compiled from: Hilt_FollowedAnchorFragment.java */
/* loaded from: classes3.dex */
public abstract class j<Event> extends AbstractAnchorFragment<Event> implements q6.d {

    /* renamed from: i  reason: collision with root package name */
    private ContextWrapper f51522i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f51523j;

    /* renamed from: k  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f51524k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f51525l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private boolean f51526m = false;

    private void P0() {
        if (this.f51522i == null) {
            this.f51522i = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f51523j = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.d
    /* renamed from: N0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f51524k == null) {
            synchronized (this.f51525l) {
                if (this.f51524k == null) {
                    this.f51524k = O0();
                }
            }
        }
        return this.f51524k;
    }

    protected dagger.hilt.android.internal.managers.g O0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    protected void Q0() {
        if (this.f51526m) {
            return;
        }
        this.f51526m = true;
        ((d) generatedComponent()).y((FollowedAnchorFragment) q6.i.a(this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    public /* bridge */ /* synthetic */ l e0() {
        return super.z0();
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f51523j) {
            P0();
            return this.f51522i;
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
        P0();
        Q0();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f51522i;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        P0();
        Q0();
    }
}
