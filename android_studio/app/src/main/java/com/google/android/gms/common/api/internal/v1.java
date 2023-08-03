package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.internal.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class v1<O extends a.d> implements i.b, i.c, a4 {
    @NotOnlyInitialized

    /* renamed from: d */
    private final a.f f28908d;

    /* renamed from: e */
    private final c<O> f28909e;

    /* renamed from: f */
    private final h0 f28910f;

    /* renamed from: i */
    private final int f28913i;
    @Nullable

    /* renamed from: j */
    private final z2 f28914j;

    /* renamed from: k */
    private boolean f28915k;

    /* renamed from: o */
    final /* synthetic */ i f28919o;

    /* renamed from: c */
    private final Queue<o3> f28907c = new LinkedList();

    /* renamed from: g */
    private final Set<r3> f28911g = new HashSet();

    /* renamed from: h */
    private final Map<n.a<?>, o2> f28912h = new HashMap();

    /* renamed from: l */
    private final List<x1> f28916l = new ArrayList();
    @Nullable

    /* renamed from: m */
    private ConnectionResult f28917m = null;

    /* renamed from: n */
    private int f28918n = 0;

    @WorkerThread
    public v1(i iVar, com.google.android.gms.common.api.h<O> hVar) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f28919o = iVar;
        handler = iVar.f28740p;
        a.f w9 = hVar.w(handler.getLooper(), this);
        this.f28908d = w9;
        this.f28909e = hVar.b();
        this.f28910f = new h0();
        this.f28913i = hVar.v();
        if (!w9.k()) {
            this.f28914j = null;
            return;
        }
        context = iVar.f28731g;
        handler2 = iVar.f28740p;
        this.f28914j = hVar.x(context, handler2);
    }

    public static /* bridge */ /* synthetic */ void B(v1 v1Var, x1 x1Var) {
        if (v1Var.f28916l.contains(x1Var) && !v1Var.f28915k) {
            if (v1Var.f28908d.a()) {
                v1Var.f();
            } else {
                v1Var.E();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void C(v1 v1Var, x1 x1Var) {
        Handler handler;
        Handler handler2;
        Feature feature;
        Feature[] g4;
        if (v1Var.f28916l.remove(x1Var)) {
            handler = v1Var.f28919o.f28740p;
            handler.removeMessages(15, x1Var);
            handler2 = v1Var.f28919o.f28740p;
            handler2.removeMessages(16, x1Var);
            feature = x1Var.f28929b;
            ArrayList arrayList = new ArrayList(v1Var.f28907c.size());
            for (o3 o3Var : v1Var.f28907c) {
                if ((o3Var instanceof f2) && (g4 = ((f2) o3Var).g(v1Var)) != null && y2.b.d(g4, feature)) {
                    arrayList.add(o3Var);
                }
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                o3 o3Var2 = (o3) arrayList.get(i4);
                v1Var.f28907c.remove(o3Var2);
                o3Var2.b(new UnsupportedApiCallException(feature));
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean N(v1 v1Var, boolean z9) {
        return v1Var.n(false);
    }

    @Nullable
    @WorkerThread
    private final Feature b(@Nullable Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] s9 = this.f28908d.s();
            if (s9 == null) {
                s9 = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(s9.length);
            for (Feature feature : s9) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l10 = (Long) arrayMap.get(feature2.getName());
                if (l10 == null || l10.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @WorkerThread
    private final void c(ConnectionResult connectionResult) {
        for (r3 r3Var : this.f28911g) {
            r3Var.c(this.f28909e, connectionResult, com.google.android.gms.common.internal.s.b(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.f28908d.g() : null);
        }
        this.f28911g.clear();
    }

    @WorkerThread
    public final void d(Status status) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        e(status, null, false);
    }

    @WorkerThread
    private final void e(@Nullable Status status, @Nullable Exception exc, boolean z9) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if ((status == null) != (exc == null)) {
            Iterator<o3> it = this.f28907c.iterator();
            while (it.hasNext()) {
                o3 next = it.next();
                if (!z9 || next.f28839a == 2) {
                    if (status != null) {
                        next.a(status);
                    } else {
                        next.b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    @WorkerThread
    private final void f() {
        ArrayList arrayList = new ArrayList(this.f28907c);
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            o3 o3Var = (o3) arrayList.get(i4);
            if (!this.f28908d.a()) {
                return;
            }
            if (l(o3Var)) {
                this.f28907c.remove(o3Var);
            }
        }
    }

    @WorkerThread
    public final void g() {
        D();
        c(ConnectionResult.RESULT_SUCCESS);
        k();
        Iterator<o2> it = this.f28912h.values().iterator();
        while (it.hasNext()) {
            o2 next = it.next();
            if (b(next.f28836a.c()) != null) {
                it.remove();
            } else {
                try {
                    next.f28836a.d(this.f28908d, new com.google.android.gms.tasks.l<>());
                } catch (DeadObjectException unused) {
                    x(3);
                    this.f28908d.e("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        f();
        i();
    }

    @WorkerThread
    public final void h(int i4) {
        Handler handler;
        Handler handler2;
        long j4;
        Handler handler3;
        Handler handler4;
        long j10;
        com.google.android.gms.common.internal.s0 s0Var;
        D();
        this.f28915k = true;
        this.f28910f.e(i4, this.f28908d.u());
        i iVar = this.f28919o;
        handler = iVar.f28740p;
        handler2 = iVar.f28740p;
        Message obtain = Message.obtain(handler2, 9, this.f28909e);
        j4 = this.f28919o.f28725a;
        handler.sendMessageDelayed(obtain, j4);
        i iVar2 = this.f28919o;
        handler3 = iVar2.f28740p;
        handler4 = iVar2.f28740p;
        Message obtain2 = Message.obtain(handler4, 11, this.f28909e);
        j10 = this.f28919o.f28726b;
        handler3.sendMessageDelayed(obtain2, j10);
        s0Var = this.f28919o.f28733i;
        s0Var.c();
        for (o2 o2Var : this.f28912h.values()) {
            o2Var.f28838c.run();
        }
    }

    private final void i() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j4;
        handler = this.f28919o.f28740p;
        handler.removeMessages(12, this.f28909e);
        i iVar = this.f28919o;
        handler2 = iVar.f28740p;
        handler3 = iVar.f28740p;
        Message obtainMessage = handler3.obtainMessage(12, this.f28909e);
        j4 = this.f28919o.f28727c;
        handler2.sendMessageDelayed(obtainMessage, j4);
    }

    @WorkerThread
    private final void j(o3 o3Var) {
        o3Var.d(this.f28910f, P());
        try {
            o3Var.c(this);
        } catch (DeadObjectException unused) {
            x(1);
            this.f28908d.e("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    @WorkerThread
    private final void k() {
        Handler handler;
        Handler handler2;
        if (this.f28915k) {
            handler = this.f28919o.f28740p;
            handler.removeMessages(11, this.f28909e);
            handler2 = this.f28919o.f28740p;
            handler2.removeMessages(9, this.f28909e);
            this.f28915k = false;
        }
    }

    @WorkerThread
    private final boolean l(o3 o3Var) {
        boolean z9;
        Handler handler;
        Handler handler2;
        long j4;
        Handler handler3;
        Handler handler4;
        long j10;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        long j11;
        if (!(o3Var instanceof f2)) {
            j(o3Var);
            return true;
        }
        f2 f2Var = (f2) o3Var;
        Feature b10 = b(f2Var.g(this));
        if (b10 == null) {
            j(o3Var);
            return true;
        }
        String name = this.f28908d.getClass().getName();
        String name2 = b10.getName();
        long version = b10.getVersion();
        StringBuilder sb = new StringBuilder(name.length() + 77 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(version);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        z9 = this.f28919o.f28741q;
        if (z9 && f2Var.f(this)) {
            x1 x1Var = new x1(this.f28909e, b10, null);
            int indexOf = this.f28916l.indexOf(x1Var);
            if (indexOf >= 0) {
                x1 x1Var2 = this.f28916l.get(indexOf);
                handler5 = this.f28919o.f28740p;
                handler5.removeMessages(15, x1Var2);
                i iVar = this.f28919o;
                handler6 = iVar.f28740p;
                handler7 = iVar.f28740p;
                Message obtain = Message.obtain(handler7, 15, x1Var2);
                j11 = this.f28919o.f28725a;
                handler6.sendMessageDelayed(obtain, j11);
                return false;
            }
            this.f28916l.add(x1Var);
            i iVar2 = this.f28919o;
            handler = iVar2.f28740p;
            handler2 = iVar2.f28740p;
            Message obtain2 = Message.obtain(handler2, 15, x1Var);
            j4 = this.f28919o.f28725a;
            handler.sendMessageDelayed(obtain2, j4);
            i iVar3 = this.f28919o;
            handler3 = iVar3.f28740p;
            handler4 = iVar3.f28740p;
            Message obtain3 = Message.obtain(handler4, 16, x1Var);
            j10 = this.f28919o.f28726b;
            handler3.sendMessageDelayed(obtain3, j10);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (m(connectionResult)) {
                return false;
            }
            this.f28919o.h(connectionResult, this.f28913i);
            return false;
        }
        f2Var.b(new UnsupportedApiCallException(b10));
        return true;
    }

    @WorkerThread
    private final boolean m(@NonNull ConnectionResult connectionResult) {
        Object obj;
        i0 i0Var;
        Set set;
        i0 i0Var2;
        obj = i.f28723t;
        synchronized (obj) {
            i iVar = this.f28919o;
            i0Var = iVar.f28737m;
            if (i0Var != null) {
                set = iVar.f28738n;
                if (set.contains(this.f28909e)) {
                    i0Var2 = this.f28919o.f28737m;
                    i0Var2.t(connectionResult, this.f28913i);
                    return true;
                }
            }
            return false;
        }
    }

    @WorkerThread
    public final boolean n(boolean z9) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if (this.f28908d.a() && this.f28912h.size() == 0) {
            if (!this.f28910f.g()) {
                this.f28908d.e("Timing out service connection.");
                return true;
            }
            if (z9) {
                i();
            }
            return false;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ c u(v1 v1Var) {
        return v1Var.f28909e;
    }

    public static /* bridge */ /* synthetic */ void w(v1 v1Var, Status status) {
        v1Var.d(status);
    }

    @WorkerThread
    public final void D() {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        this.f28917m = null;
    }

    @WorkerThread
    public final void E() {
        Handler handler;
        com.google.android.gms.common.internal.s0 s0Var;
        Context context;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if (this.f28908d.a() || this.f28908d.f()) {
            return;
        }
        try {
            i iVar = this.f28919o;
            s0Var = iVar.f28733i;
            context = iVar.f28731g;
            int b10 = s0Var.b(context, this.f28908d);
            if (b10 != 0) {
                ConnectionResult connectionResult = new ConnectionResult(b10, null);
                String name = this.f28908d.getClass().getName();
                String obj = connectionResult.toString();
                StringBuilder sb = new StringBuilder(name.length() + 35 + obj.length());
                sb.append("The service for ");
                sb.append(name);
                sb.append(" is not available: ");
                sb.append(obj);
                Log.w("GoogleApiManager", sb.toString());
                H(connectionResult, null);
                return;
            }
            i iVar2 = this.f28919o;
            a.f fVar = this.f28908d;
            z1 z1Var = new z1(iVar2, fVar, this.f28909e);
            if (fVar.k()) {
                ((z2) com.google.android.gms.common.internal.u.k(this.f28914j)).M1(z1Var);
            }
            try {
                this.f28908d.h(z1Var);
            } catch (SecurityException e4) {
                H(new ConnectionResult(10), e4);
            }
        } catch (IllegalStateException e10) {
            H(new ConnectionResult(10), e10);
        }
    }

    @WorkerThread
    public final void F(o3 o3Var) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if (this.f28908d.a()) {
            if (l(o3Var)) {
                i();
                return;
            } else {
                this.f28907c.add(o3Var);
                return;
            }
        }
        this.f28907c.add(o3Var);
        ConnectionResult connectionResult = this.f28917m;
        if (connectionResult != null && connectionResult.hasResolution()) {
            H(this.f28917m, null);
        } else {
            E();
        }
    }

    @WorkerThread
    public final void G() {
        this.f28918n++;
    }

    @WorkerThread
    public final void H(@NonNull ConnectionResult connectionResult, @Nullable Exception exc) {
        Handler handler;
        com.google.android.gms.common.internal.s0 s0Var;
        boolean z9;
        Status i4;
        Status i10;
        Status i11;
        Handler handler2;
        Handler handler3;
        long j4;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        z2 z2Var = this.f28914j;
        if (z2Var != null) {
            z2Var.N1();
        }
        D();
        s0Var = this.f28919o.f28733i;
        s0Var.c();
        c(connectionResult);
        if ((this.f28908d instanceof com.google.android.gms.common.internal.service.q) && connectionResult.getErrorCode() != 24) {
            this.f28919o.f28728d = true;
            i iVar = this.f28919o;
            handler5 = iVar.f28740p;
            handler6 = iVar.f28740p;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            status = i.f28722s;
            d(status);
        } else if (this.f28907c.isEmpty()) {
            this.f28917m = connectionResult;
        } else if (exc != null) {
            handler4 = this.f28919o.f28740p;
            com.google.android.gms.common.internal.u.d(handler4);
            e(null, exc, false);
        } else {
            z9 = this.f28919o.f28741q;
            if (z9) {
                i10 = i.i(this.f28909e, connectionResult);
                e(i10, null, true);
                if (this.f28907c.isEmpty() || m(connectionResult) || this.f28919o.h(connectionResult, this.f28913i)) {
                    return;
                }
                if (connectionResult.getErrorCode() == 18) {
                    this.f28915k = true;
                }
                if (this.f28915k) {
                    i iVar2 = this.f28919o;
                    handler2 = iVar2.f28740p;
                    handler3 = iVar2.f28740p;
                    Message obtain = Message.obtain(handler3, 9, this.f28909e);
                    j4 = this.f28919o.f28725a;
                    handler2.sendMessageDelayed(obtain, j4);
                    return;
                }
                i11 = i.i(this.f28909e, connectionResult);
                d(i11);
                return;
            }
            i4 = i.i(this.f28909e, connectionResult);
            d(i4);
        }
    }

    @WorkerThread
    public final void I(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        a.f fVar = this.f28908d;
        String name = fVar.getClass().getName();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(valueOf);
        fVar.e(sb.toString());
        H(connectionResult, null);
    }

    @WorkerThread
    public final void J(r3 r3Var) {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        this.f28911g.add(r3Var);
    }

    @WorkerThread
    public final void K() {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if (this.f28915k) {
            E();
        }
    }

    @WorkerThread
    public final void L() {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        d(i.f28721r);
        this.f28910f.f();
        for (n.a aVar : (n.a[]) this.f28912h.keySet().toArray(new n.a[0])) {
            F(new n3(aVar, new com.google.android.gms.tasks.l()));
        }
        c(new ConnectionResult(4));
        if (this.f28908d.a()) {
            this.f28908d.o(new u1(this));
        }
    }

    @WorkerThread
    public final void M() {
        Handler handler;
        com.google.android.gms.common.e eVar;
        Context context;
        Status status;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        if (this.f28915k) {
            k();
            i iVar = this.f28919o;
            eVar = iVar.f28732h;
            context = iVar.f28731g;
            if (eVar.j(context) == 18) {
                status = new Status(21, "Connection timed out waiting for Google Play services update to complete.");
            } else {
                status = new Status(22, "API failed to connect while resuming due to an unknown error.");
            }
            d(status);
            this.f28908d.e("Timing out connection while resuming.");
        }
    }

    public final boolean O() {
        return this.f28908d.a();
    }

    public final boolean P() {
        return this.f28908d.k();
    }

    @WorkerThread
    public final boolean a() {
        return n(true);
    }

    @Override // com.google.android.gms.common.api.internal.a4
    public final void n1(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        throw null;
    }

    public final int o() {
        return this.f28913i;
    }

    @WorkerThread
    public final int p() {
        return this.f28918n;
    }

    @Nullable
    @WorkerThread
    public final ConnectionResult q() {
        Handler handler;
        handler = this.f28919o.f28740p;
        com.google.android.gms.common.internal.u.d(handler);
        return this.f28917m;
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void s(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f28919o.f28740p;
        if (myLooper == handler.getLooper()) {
            g();
            return;
        }
        handler2 = this.f28919o.f28740p;
        handler2.post(new r1(this));
    }

    public final a.f t() {
        return this.f28908d;
    }

    public final Map<n.a<?>, o2> v() {
        return this.f28912h;
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void x(int i4) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f28919o.f28740p;
        if (myLooper == handler.getLooper()) {
            h(i4);
            return;
        }
        handler2 = this.f28919o.f28740p;
        handler2.post(new s1(this, i4));
    }

    @Override // com.google.android.gms.common.api.internal.q
    @WorkerThread
    public final void z(@NonNull ConnectionResult connectionResult) {
        H(connectionResult, null);
    }
}
