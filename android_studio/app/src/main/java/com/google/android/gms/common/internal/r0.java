package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class r0 implements Handler.Callback {
    @NotOnlyInitialized

    /* renamed from: a  reason: collision with root package name */
    private final q0 f29173a;

    /* renamed from: h  reason: collision with root package name */
    private final Handler f29180h;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<i.b> f29174b = new ArrayList<>();
    @y2.d0

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<i.b> f29175c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<i.c> f29176d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f29177e = false;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f29178f = new AtomicInteger(0);

    /* renamed from: g  reason: collision with root package name */
    private boolean f29179g = false;

    /* renamed from: i  reason: collision with root package name */
    private final Object f29181i = new Object();

    public r0(Looper looper, q0 q0Var) {
        this.f29173a = q0Var;
        this.f29180h = new com.google.android.gms.internal.base.q(looper, this);
    }

    public final void a() {
        this.f29177e = false;
        this.f29178f.incrementAndGet();
    }

    public final void b() {
        this.f29177e = true;
    }

    @y2.d0
    public final void c(ConnectionResult connectionResult) {
        u.e(this.f29180h, "onConnectionFailure must only be called on the Handler thread");
        this.f29180h.removeMessages(1);
        synchronized (this.f29181i) {
            ArrayList arrayList = new ArrayList(this.f29176d);
            int i4 = this.f29178f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                i.c cVar = (i.c) it.next();
                if (this.f29177e && this.f29178f.get() == i4) {
                    if (this.f29176d.contains(cVar)) {
                        cVar.z(connectionResult);
                    }
                }
                return;
            }
        }
    }

    @y2.d0
    public final void d(@Nullable Bundle bundle) {
        u.e(this.f29180h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f29181i) {
            u.q(!this.f29179g);
            this.f29180h.removeMessages(1);
            this.f29179g = true;
            u.q(this.f29175c.isEmpty());
            ArrayList arrayList = new ArrayList(this.f29174b);
            int i4 = this.f29178f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                i.b bVar = (i.b) it.next();
                if (!this.f29177e || !this.f29173a.a() || this.f29178f.get() != i4) {
                    break;
                } else if (!this.f29175c.contains(bVar)) {
                    bVar.s(bundle);
                }
            }
            this.f29175c.clear();
            this.f29179g = false;
        }
    }

    @y2.d0
    public final void e(int i4) {
        u.e(this.f29180h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f29180h.removeMessages(1);
        synchronized (this.f29181i) {
            this.f29179g = true;
            ArrayList arrayList = new ArrayList(this.f29174b);
            int i10 = this.f29178f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                i.b bVar = (i.b) it.next();
                if (!this.f29177e || this.f29178f.get() != i10) {
                    break;
                } else if (this.f29174b.contains(bVar)) {
                    bVar.x(i4);
                }
            }
            this.f29175c.clear();
            this.f29179g = false;
        }
    }

    public final void f(i.b bVar) {
        u.k(bVar);
        synchronized (this.f29181i) {
            if (this.f29174b.contains(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f29174b.add(bVar);
            }
        }
        if (this.f29173a.a()) {
            Handler handler = this.f29180h;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    public final void g(i.c cVar) {
        u.k(cVar);
        synchronized (this.f29181i) {
            if (this.f29176d.contains(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f29176d.add(cVar);
            }
        }
    }

    public final void h(i.b bVar) {
        u.k(bVar);
        synchronized (this.f29181i) {
            if (!this.f29174b.remove(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 52);
                sb.append("unregisterConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            } else if (this.f29179g) {
                this.f29175c.add(bVar);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i4 = message.what;
        if (i4 == 1) {
            i.b bVar = (i.b) message.obj;
            synchronized (this.f29181i) {
                if (this.f29177e && this.f29173a.a() && this.f29174b.contains(bVar)) {
                    bVar.s(null);
                }
            }
            return true;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i4);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }

    public final void i(i.c cVar) {
        u.k(cVar);
        synchronized (this.f29181i) {
            if (!this.f29176d.remove(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    public final boolean j(i.b bVar) {
        boolean contains;
        u.k(bVar);
        synchronized (this.f29181i) {
            contains = this.f29174b.contains(bVar);
        }
        return contains;
    }

    public final boolean k(i.c cVar) {
        boolean contains;
        u.k(cVar);
        synchronized (this.f29181i) {
            contains = this.f29176d.contains(cVar);
        }
        return contains;
    }
}
