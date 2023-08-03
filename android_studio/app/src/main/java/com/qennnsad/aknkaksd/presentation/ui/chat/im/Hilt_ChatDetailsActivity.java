package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;

/* loaded from: classes3.dex */
public abstract class Hilt_ChatDetailsActivity extends AppCompatActivity implements q6.d {

    /* renamed from: a  reason: collision with root package name */
    private volatile dagger.hilt.android.internal.managers.a f52558a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f52559b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52560c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_ChatDetailsActivity.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_ChatDetailsActivity() {
        this.f52559b = new Object();
        this.f52560c = false;
        G();
    }

    private void G() {
        addOnContextAvailableListener(new a());
    }

    @Override // q6.d
    /* renamed from: H */
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.f52558a == null) {
            synchronized (this.f52559b) {
                if (this.f52558a == null) {
                    this.f52558a = I();
                }
            }
        }
        return this.f52558a;
    }

    protected dagger.hilt.android.internal.managers.a I() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    protected void J() {
        if (this.f52560c) {
            return;
        }
        this.f52560c = true;
        ((b) generatedComponent()).d((ChatDetailsActivity) q6.i.a(this));
    }

    @Override // q6.c
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }

    Hilt_ChatDetailsActivity(int i4) {
        super(i4);
        this.f52559b = new Object();
        this.f52560c = false;
        G();
    }
}
