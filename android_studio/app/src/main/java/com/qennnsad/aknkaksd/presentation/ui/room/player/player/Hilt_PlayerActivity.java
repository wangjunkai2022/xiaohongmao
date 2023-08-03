package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewbinding.ViewBinding;

/* loaded from: classes3.dex */
public abstract class Hilt_PlayerActivity<VB extends ViewBinding> extends WebsocketActivity<VB> implements q6.d {
    private volatile dagger.hilt.android.internal.managers.a E;
    private final Object F = new Object();
    private boolean G = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_PlayerActivity.this.K2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_PlayerActivity() {
        H2();
    }

    private void H2() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: I2 */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.E == null) {
            synchronized (this.F) {
                if (this.E == null) {
                    this.E = J2();
                }
            }
        }
        return this.E;
    }

    protected dagger.hilt.android.internal.managers.a J2() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    protected void K2() {
        if (this.G) {
            return;
        }
        this.G = true;
        ((o1) generatedComponent()).n((PlayerActivity) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }
}
