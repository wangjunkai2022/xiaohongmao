package com.qennnsad.aknkaksd;

import androidx.annotation.CallSuper;
import q6.i;

/* loaded from: classes3.dex */
public abstract class Hilt_BeautyLiveApplication extends BaseBeautyApplication implements q6.d {
    private boolean injected = false;
    private final dagger.hilt.android.internal.managers.d componentManager = new dagger.hilt.android.internal.managers.d(new a());

    /* loaded from: classes3.dex */
    class a implements dagger.hilt.android.internal.managers.f {
        a() {
        }

        @Override // dagger.hilt.android.internal.managers.f
        public Object get() {
            return f.a().b(new dagger.hilt.android.internal.modules.c(Hilt_BeautyLiveApplication.this)).c();
        }
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    protected void hiltInternalInject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((c) generatedComponent()).b((BeautyLiveApplication) i.a(this));
    }

    @Override // com.qennnsad.aknkaksd.BaseBeautyApplication, android.app.Application
    @CallSuper
    public void onCreate() {
        hiltInternalInject();
        super.onCreate();
    }

    @Override // q6.d
    public final dagger.hilt.android.internal.managers.d componentManager() {
        return this.componentManager;
    }
}
