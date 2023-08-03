package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Hilt_PeerageUserInfoDialog.java */
/* loaded from: classes3.dex */
public abstract class d extends l {
    private ContextWrapper W;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f54461b1;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f54462g1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(UserInfo userInfo, String str, String str2, BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, Function1<? super String, Unit> function1, Function1<? super HotAnchorSummary, Unit> function12, Function1<? super UserInfo, Unit> function13) {
        super(userInfo, str, str2, userType, z9, z10, z11, z12, function1, function12, function13);
        this.f54462g1 = false;
    }

    private void p0() {
        if (this.W == null) {
            this.W = dagger.hilt.android.internal.managers.g.b(super.getContext(), this);
            this.f54461b1 = dagger.hilt.android.flags.a.a(super.getContext());
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e, androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() != null || this.f54461b1) {
            p0();
            return this.W;
        }
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        p0();
        q0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return onGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.g.c(onGetLayoutInflater, this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e
    protected void q0() {
        if (this.f54462g1) {
            return;
        }
        this.f54462g1 = true;
        ((i) ((q6.d) q6.i.a(this)).generatedComponent()).l((h) q6.i.a(this));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e, androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.W;
        q6.f.d(contextWrapper == null || dagger.hilt.android.internal.managers.g.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        p0();
        q0();
    }
}
