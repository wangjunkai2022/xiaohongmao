package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class v3 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b  reason: collision with root package name */
    protected volatile boolean f28921b;

    /* renamed from: c  reason: collision with root package name */
    protected final AtomicReference<s3> f28922c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f28923d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.google.android.gms.common.e f28924e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @y2.d0
    public v3(m mVar, com.google.android.gms.common.e eVar) {
        super(mVar);
        this.f28922c = new AtomicReference<>(null);
        this.f28923d = new com.google.android.gms.internal.base.q(Looper.getMainLooper());
        this.f28924e = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(ConnectionResult connectionResult, int i4) {
        this.f28922c.set(null);
        n(connectionResult, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        this.f28922c.set(null);
        o();
    }

    private static final int q(@Nullable s3 s3Var) {
        if (s3Var == null) {
            return -1;
        }
        return s3Var.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f(int i4, int i10, Intent intent) {
        s3 s3Var = this.f28922c.get();
        if (i4 != 1) {
            if (i4 == 2) {
                int j4 = this.f28924e.j(b());
                if (j4 == 0) {
                    p();
                    return;
                } else if (s3Var == null) {
                    return;
                } else {
                    if (s3Var.b().getErrorCode() == 18 && j4 == 18) {
                        return;
                    }
                }
            }
        } else if (i10 == -1) {
            p();
            return;
        } else if (i10 == 0) {
            if (s3Var == null) {
                return;
            }
            m(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, s3Var.b().toString()), q(s3Var));
            return;
        }
        if (s3Var != null) {
            m(s3Var.b(), s3Var.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void g(@Nullable Bundle bundle) {
        super.g(bundle);
        if (bundle != null) {
            this.f28922c.set(bundle.getBoolean("resolving_error", false) ? new s3(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j(Bundle bundle) {
        super.j(bundle);
        s3 s3Var = this.f28922c.get();
        if (s3Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", s3Var.a());
        bundle.putInt("failed_status", s3Var.b().getErrorCode());
        bundle.putParcelable("failed_resolution", s3Var.b().getResolution());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void k() {
        super.k();
        this.f28921b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void l() {
        super.l();
        this.f28921b = false;
    }

    protected abstract void n(ConnectionResult connectionResult, int i4);

    protected abstract void o();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m(new ConnectionResult(13, null), q(this.f28922c.get()));
    }

    public final void t(ConnectionResult connectionResult, int i4) {
        s3 s3Var = new s3(connectionResult, i4);
        if (this.f28922c.compareAndSet(null, s3Var)) {
            this.f28923d.post(new u3(this, s3Var));
        }
    }
}
