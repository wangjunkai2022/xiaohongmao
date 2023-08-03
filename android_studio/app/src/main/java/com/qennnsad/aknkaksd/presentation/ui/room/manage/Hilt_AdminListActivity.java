package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;

/* loaded from: classes3.dex */
public abstract class Hilt_AdminListActivity extends AppCompatActivity implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f53499a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f53500b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f53501c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_AdminListActivity.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_AdminListActivity() {
        this.f53500b = new Object();
        this.f53501c = false;
        G();
    }

    private void G() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: H */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f53499a == null) {
            synchronized (this.f53500b) {
                if (this.f53499a == null) {
                    this.f53499a = I();
                }
            }
        }
        return this.f53499a;
    }

    protected dagger.hilt.android.internal.managers.a I() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    protected void J() {
        if (this.f53501c) {
            return;
        }
        this.f53501c = true;
        ((d) generatedComponent()).g((AdminListActivity) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }

    Hilt_AdminListActivity(int i4) {
        super(i4);
        this.f53500b = new Object();
        this.f53501c = false;
        G();
    }
}
