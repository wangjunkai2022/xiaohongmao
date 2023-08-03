package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModelProvider;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Hilt_UserInfoDialog.java */
/* loaded from: classes3.dex */
public abstract class e extends BaseUserInfoDialog implements q6.d {

    /* renamed from: p  reason: collision with root package name */
    private ContextWrapper f54463p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f54464q;

    /* renamed from: r  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.g f54465r;

    /* renamed from: s  reason: collision with root package name */
    private final Object f54466s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f54467t;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(UserInfo userInfo, String str, String str2, BaseUserInfoDialog.UserType userType, boolean z9, Function1<? super UserInfo, Unit> function1) {
        super(userInfo, str, str2, userType, z9, function1);
        this.f54466s = new Object();
        this.f54467t = false;
    }

    private void p0() {
        if (this.f54463p == null) {
            this.f54463p = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f54464q = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f54464q) {
            p0();
            return this.f54463p;
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // q6.d
    /* renamed from: n0 */
    public final dagger.hilt.android.internal.managers.g componentManager() {
        if (this.f54465r == null) {
            synchronized (this.f54466s) {
                if (this.f54465r == null) {
                    this.f54465r = o0();
                }
            }
        }
        return this.f54465r;
    }

    protected dagger.hilt.android.internal.managers.g o0() {
        return new dagger.hilt.android.internal.managers.g(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        p0();
        q0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    protected void q0() {
        if (this.f54467t) {
            return;
        }
        this.f54467t = true;
        ((q) generatedComponent()).m((l) q6.i.a(this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f54463p;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        p0();
        q0();
    }
}
