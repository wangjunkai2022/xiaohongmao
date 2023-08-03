package com.qennnsad.aknkaksd.presentation.module.main.profile;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;

/* loaded from: classes3.dex */
public abstract class Hilt_UserProfileActivity<VB extends ViewBinding> extends BaseMvvmActivity<VB> implements q6.d {

    /* renamed from: h  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f51829h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f51830i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private boolean f51831j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_UserProfileActivity.this.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_UserProfileActivity() {
        f0();
    }

    private void f0() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: g0 */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f51829h == null) {
            synchronized (this.f51830i) {
                if (this.f51829h == null) {
                    this.f51829h = h0();
                }
            }
        }
        return this.f51829h;
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }

    protected dagger.hilt.android.internal.managers.a h0() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    protected void i0() {
        if (this.f51831j) {
            return;
        }
        this.f51831j = true;
        ((c) generatedComponent()).h((UserProfileActivity) q6.i.a(this));
    }
}
