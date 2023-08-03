package com.qennnsad.aknkaksd.presentation.module.auth;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;

/* loaded from: classes3.dex */
public abstract class Hilt_AuthActivity<VB extends ViewBinding> extends BaseMvvmActivity<VB> implements q6.d {

    /* renamed from: h  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f50993h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f50994i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private boolean f50995j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_AuthActivity.this.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_AuthActivity() {
        f0();
    }

    private void f0() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: g0 */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f50993h == null) {
            synchronized (this.f50994i) {
                if (this.f50993h == null) {
                    this.f50993h = h0();
                }
            }
        }
        return this.f50993h;
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
        if (this.f50995j) {
            return;
        }
        this.f50995j = true;
        ((b) generatedComponent()).k((AuthActivity) q6.i.a(this));
    }
}
