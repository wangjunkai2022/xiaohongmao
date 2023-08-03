package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class e2 extends j {
    @s7.a(StatsConstant.BODY_TYPE_CONNECTION_STATUS)

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<a2, b2> f29105f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final Context f29106g;

    /* renamed from: h  reason: collision with root package name */
    private volatile Handler f29107h;

    /* renamed from: i  reason: collision with root package name */
    private final d2 f29108i;

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.gms.common.stats.a f29109j;

    /* renamed from: k  reason: collision with root package name */
    private final long f29110k;

    /* renamed from: l  reason: collision with root package name */
    private final long f29111l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e2(Context context, Looper looper) {
        d2 d2Var = new d2(this, null);
        this.f29108i = d2Var;
        this.f29106g = context.getApplicationContext();
        this.f29107h = new com.google.android.gms.internal.common.r(looper, d2Var);
        this.f29109j = com.google.android.gms.common.stats.a.b();
        this.f29110k = 5000L;
        this.f29111l = 300000L;
    }

    @Override // com.google.android.gms.common.internal.j
    protected final void i(a2 a2Var, ServiceConnection serviceConnection, String str) {
        u.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f29105f) {
            b2 b2Var = this.f29105f.get(a2Var);
            if (b2Var != null) {
                if (b2Var.h(serviceConnection)) {
                    b2Var.f(serviceConnection, str);
                    if (b2Var.i()) {
                        this.f29107h.sendMessageDelayed(this.f29107h.obtainMessage(0, a2Var), this.f29110k);
                    }
                } else {
                    String obj = a2Var.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 76);
                    sb.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb.append(obj);
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                String obj2 = a2Var.toString();
                StringBuilder sb2 = new StringBuilder(obj2.length() + 50);
                sb2.append("Nonexistent connection status for service config: ");
                sb2.append(obj2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.j
    public final boolean k(a2 a2Var, ServiceConnection serviceConnection, String str, @Nullable Executor executor) {
        boolean j4;
        u.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f29105f) {
            b2 b2Var = this.f29105f.get(a2Var);
            if (b2Var == null) {
                b2Var = new b2(this, a2Var);
                b2Var.d(serviceConnection, serviceConnection, str);
                b2Var.e(str, executor);
                this.f29105f.put(a2Var, b2Var);
            } else {
                this.f29107h.removeMessages(0, a2Var);
                if (!b2Var.h(serviceConnection)) {
                    b2Var.d(serviceConnection, serviceConnection, str);
                    int a10 = b2Var.a();
                    if (a10 == 1) {
                        serviceConnection.onServiceConnected(b2Var.b(), b2Var.c());
                    } else if (a10 == 2) {
                        b2Var.e(str, executor);
                    }
                } else {
                    String obj = a2Var.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(obj);
                    throw new IllegalStateException(sb.toString());
                }
            }
            j4 = b2Var.j();
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(Looper looper) {
        synchronized (this.f29105f) {
            this.f29107h = new com.google.android.gms.internal.common.r(looper, this.f29108i);
        }
    }
}
