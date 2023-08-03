package com.qennnsad.aknkaksd.presentation.module.contributors;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;

/* loaded from: classes3.dex */
public abstract class Hilt_ContributorsActivity extends AppCompatActivity implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f51332a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f51333b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f51334c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_ContributorsActivity.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_ContributorsActivity() {
        this.f51333b = new Object();
        this.f51334c = false;
        G();
    }

    private void G() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: H */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f51332a == null) {
            synchronized (this.f51333b) {
                if (this.f51332a == null) {
                    this.f51332a = I();
                }
            }
        }
        return this.f51332a;
    }

    protected dagger.hilt.android.internal.managers.a I() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    protected void J() {
        if (this.f51334c) {
            return;
        }
        this.f51334c = true;
        ((b) generatedComponent()).e((ContributorsActivity) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }

    Hilt_ContributorsActivity(int i4) {
        super(i4);
        this.f51333b = new Object();
        this.f51334c = false;
        G();
    }
}
