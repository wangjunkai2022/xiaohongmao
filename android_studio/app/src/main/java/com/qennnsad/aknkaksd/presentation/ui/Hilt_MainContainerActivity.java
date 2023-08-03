package com.qennnsad.aknkaksd.presentation.ui;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import q6.d;
import q6.i;

/* loaded from: classes3.dex */
public abstract class Hilt_MainContainerActivity<VB extends ViewBinding> extends BaseMvvmActivity<VB> implements d {

    /* renamed from: h  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f52455h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f52456i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private boolean f52457j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_MainContainerActivity.this.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_MainContainerActivity() {
        f0();
    }

    private void f0() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: g0 */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f52455h == null) {
            synchronized (this.f52456i) {
                if (this.f52455h == null) {
                    this.f52455h = h0();
                }
            }
        }
        return this.f52455h;
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
        if (this.f52457j) {
            return;
        }
        this.f52457j = true;
        ((b) generatedComponent()).m((MainContainerActivity) i.a(this));
    }
}
