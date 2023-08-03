package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: o */
    private static final Map f31745o = new HashMap();

    /* renamed from: a */
    private final Context f31746a;

    /* renamed from: b */
    private final h f31747b;

    /* renamed from: c */
    private final String f31748c;

    /* renamed from: g */
    private boolean f31752g;

    /* renamed from: h */
    private final Intent f31753h;

    /* renamed from: i */
    private final o f31754i;
    @Nullable

    /* renamed from: m */
    private ServiceConnection f31758m;
    @Nullable

    /* renamed from: n */
    private IInterface f31759n;

    /* renamed from: d */
    private final List f31749d = new ArrayList();
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: e */
    private final Set f31750e = new HashSet();

    /* renamed from: f */
    private final Object f31751f = new Object();

    /* renamed from: k */
    private final IBinder.DeathRecipient f31756k = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.internal.j
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            t.i(t.this);
        }
    };
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: l */
    private final AtomicInteger f31757l = new AtomicInteger(0);

    /* renamed from: j */
    private final WeakReference f31755j = new WeakReference(null);

    public t(Context context, h hVar, String str, Intent intent, o oVar, @Nullable n nVar) {
        this.f31746a = context;
        this.f31747b = hVar;
        this.f31748c = str;
        this.f31753h = intent;
        this.f31754i = oVar;
    }

    public static /* synthetic */ void i(t tVar) {
        tVar.f31747b.d("reportBinderDeath", new Object[0]);
        n nVar = (n) tVar.f31755j.get();
        if (nVar != null) {
            tVar.f31747b.d("calling onBinderDied", new Object[0]);
            nVar.zza();
        } else {
            tVar.f31747b.d("%s : Binder has died.", tVar.f31748c);
            for (i iVar : tVar.f31749d) {
                iVar.c(tVar.t());
            }
            tVar.f31749d.clear();
        }
        tVar.u();
    }

    public static /* bridge */ /* synthetic */ void n(t tVar, i iVar) {
        if (tVar.f31759n != null || tVar.f31752g) {
            if (tVar.f31752g) {
                tVar.f31747b.d("Waiting to bind to the service.", new Object[0]);
                tVar.f31749d.add(iVar);
                return;
            }
            iVar.run();
            return;
        }
        tVar.f31747b.d("Initiate binding to the service.", new Object[0]);
        tVar.f31749d.add(iVar);
        s sVar = new s(tVar, null);
        tVar.f31758m = sVar;
        tVar.f31752g = true;
        if (tVar.f31746a.bindService(tVar.f31753h, sVar, 1)) {
            return;
        }
        tVar.f31747b.d("Failed to bind to the service.", new Object[0]);
        tVar.f31752g = false;
        for (i iVar2 : tVar.f31749d) {
            iVar2.c(new zzat());
        }
        tVar.f31749d.clear();
    }

    public static /* bridge */ /* synthetic */ void o(t tVar) {
        tVar.f31747b.d("linkToDeath", new Object[0]);
        try {
            tVar.f31759n.asBinder().linkToDeath(tVar.f31756k, 0);
        } catch (RemoteException e4) {
            tVar.f31747b.c(e4, "linkToDeath failed", new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void p(t tVar) {
        tVar.f31747b.d("unlinkToDeath", new Object[0]);
        tVar.f31759n.asBinder().unlinkToDeath(tVar.f31756k, 0);
    }

    private final RemoteException t() {
        return new RemoteException(String.valueOf(this.f31748c).concat(" : Binder has died."));
    }

    public final void u() {
        synchronized (this.f31751f) {
            for (com.google.android.play.core.tasks.o oVar : this.f31750e) {
                oVar.d(t());
            }
            this.f31750e.clear();
        }
    }

    public final Handler c() {
        Handler handler;
        Map map = f31745o;
        synchronized (map) {
            if (!map.containsKey(this.f31748c)) {
                HandlerThread handlerThread = new HandlerThread(this.f31748c, 10);
                handlerThread.start();
                map.put(this.f31748c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(this.f31748c);
        }
        return handler;
    }

    @Nullable
    public final IInterface e() {
        return this.f31759n;
    }

    public final void q(i iVar, @Nullable final com.google.android.play.core.tasks.o oVar) {
        synchronized (this.f31751f) {
            this.f31750e.add(oVar);
            oVar.a().a(new com.google.android.play.core.tasks.a() { // from class: com.google.android.play.core.internal.k
                @Override // com.google.android.play.core.tasks.a
                public final void a(com.google.android.play.core.tasks.d dVar) {
                    t.this.r(oVar, dVar);
                }
            });
        }
        synchronized (this.f31751f) {
            if (this.f31757l.getAndIncrement() > 0) {
                this.f31747b.a("Already connected to the service.", new Object[0]);
            }
        }
        c().post(new l(this, iVar.b(), iVar));
    }

    public final /* synthetic */ void r(com.google.android.play.core.tasks.o oVar, com.google.android.play.core.tasks.d dVar) {
        synchronized (this.f31751f) {
            this.f31750e.remove(oVar);
        }
    }

    public final void s(com.google.android.play.core.tasks.o oVar) {
        synchronized (this.f31751f) {
            this.f31750e.remove(oVar);
        }
        synchronized (this.f31751f) {
            if (this.f31757l.get() > 0 && this.f31757l.decrementAndGet() > 0) {
                this.f31747b.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            c().post(new m(this));
        }
    }
}
