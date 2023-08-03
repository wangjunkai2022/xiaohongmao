package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class e<T extends IInterface> {
    @u2.a
    public static final int D = 1;
    @u2.a
    public static final int E = 4;
    @u2.a
    public static final int F = 5;
    @NonNull
    @u2.a
    public static final String G = "pendingIntent";
    @NonNull
    @u2.a
    public static final String H = "<<default account>>";
    private boolean A;
    @Nullable
    private volatile zzj B;
    @NonNull
    @y2.d0
    protected AtomicInteger C;

    /* renamed from: a  reason: collision with root package name */
    private int f29073a;

    /* renamed from: b  reason: collision with root package name */
    private long f29074b;

    /* renamed from: c  reason: collision with root package name */
    private long f29075c;

    /* renamed from: d  reason: collision with root package name */
    private int f29076d;

    /* renamed from: e  reason: collision with root package name */
    private long f29077e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile String f29078f;
    @y2.d0

    /* renamed from: g  reason: collision with root package name */
    h2 f29079g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f29080h;

    /* renamed from: i  reason: collision with root package name */
    private final Looper f29081i;

    /* renamed from: j  reason: collision with root package name */
    private final j f29082j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.gms.common.f f29083k;

    /* renamed from: l  reason: collision with root package name */
    final Handler f29084l;

    /* renamed from: m  reason: collision with root package name */
    private final Object f29085m;

    /* renamed from: n  reason: collision with root package name */
    private final Object f29086n;
    @Nullable
    @s7.a("mServiceBrokerLock")

    /* renamed from: o  reason: collision with root package name */
    private p f29087o;
    @NonNull
    @y2.d0

    /* renamed from: p  reason: collision with root package name */
    protected c f29088p;
    @Nullable
    @s7.a("mLock")

    /* renamed from: q  reason: collision with root package name */
    private T f29089q;

    /* renamed from: r  reason: collision with root package name */
    private final ArrayList<q1<?>> f29090r;
    @Nullable
    @s7.a("mLock")

    /* renamed from: s  reason: collision with root package name */
    private s1 f29091s;
    @s7.a("mLock")

    /* renamed from: t  reason: collision with root package name */
    private int f29092t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private final a f29093u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private final b f29094v;

    /* renamed from: w  reason: collision with root package name */
    private final int f29095w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final String f29096x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private volatile String f29097y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ConnectionResult f29098z;
    private static final Feature[] J = new Feature[0];
    @NonNull
    @u2.a
    public static final String[] I = {"service_esmobile", "service_googleme"};

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a {
        @u2.a

        /* renamed from: a  reason: collision with root package name */
        public static final int f29099a = 1;
        @u2.a

        /* renamed from: b  reason: collision with root package name */
        public static final int f29100b = 3;

        @u2.a
        void s(@Nullable Bundle bundle);

        @u2.a
        void x(int i4);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface b {
        @u2.a
        void z(@NonNull ConnectionResult connectionResult);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface c {
        @u2.a
        void a(@NonNull ConnectionResult connectionResult);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    protected class d implements c {
        @u2.a
        public d() {
        }

        @Override // com.google.android.gms.common.internal.e.c
        public final void a(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                e eVar = e.this;
                eVar.n(null, eVar.J());
            } else if (e.this.f29094v != null) {
                e.this.f29094v.z(connectionResult);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* renamed from: com.google.android.gms.common.internal.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0197e {
        @u2.a
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    @y2.d0
    public e(@NonNull Context context, @NonNull Handler handler, @NonNull j jVar, @NonNull com.google.android.gms.common.f fVar, int i4, @Nullable a aVar, @Nullable b bVar) {
        this.f29078f = null;
        this.f29085m = new Object();
        this.f29086n = new Object();
        this.f29090r = new ArrayList<>();
        this.f29092t = 1;
        this.f29098z = null;
        this.A = false;
        this.B = null;
        this.C = new AtomicInteger(0);
        u.l(context, "Context must not be null");
        this.f29080h = context;
        u.l(handler, "Handler must not be null");
        this.f29084l = handler;
        this.f29081i = handler.getLooper();
        u.l(jVar, "Supervisor must not be null");
        this.f29082j = jVar;
        u.l(fVar, "API availability must not be null");
        this.f29083k = fVar;
        this.f29095w = i4;
        this.f29093u = aVar;
        this.f29094v = bVar;
        this.f29096x = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void i0(e eVar, zzj zzjVar) {
        eVar.B = zzjVar;
        if (eVar.Y()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.zzd;
            w.b().c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.zza());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void j0(e eVar, int i4) {
        int i10;
        int i11;
        synchronized (eVar.f29085m) {
            i10 = eVar.f29092t;
        }
        if (i10 == 3) {
            eVar.A = true;
            i11 = 5;
        } else {
            i11 = 4;
        }
        Handler handler = eVar.f29084l;
        handler.sendMessage(handler.obtainMessage(i11, eVar.C.get(), 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean m0(e eVar, int i4, int i10, IInterface iInterface) {
        synchronized (eVar.f29085m) {
            if (eVar.f29092t != i4) {
                return false;
            }
            eVar.o0(i10, iInterface);
            return true;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException
        	at java.base/java.util.BitSet.or(BitSet.java:941)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    static /* bridge */ /* synthetic */ boolean n0(com.google.android.gms.common.internal.e r2) {
        /*
            boolean r0 = r2.A
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.L()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.H()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.L()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.e.n0(com.google.android.gms.common.internal.e):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(int i4, @Nullable T t9) {
        h2 h2Var;
        h2 h2Var2;
        u.a((i4 == 4) == (t9 != null));
        synchronized (this.f29085m) {
            this.f29092t = i4;
            this.f29089q = t9;
            if (i4 == 1) {
                s1 s1Var = this.f29091s;
                if (s1Var != null) {
                    j jVar = this.f29082j;
                    String c10 = this.f29079g.c();
                    u.k(c10);
                    jVar.j(c10, this.f29079g.b(), this.f29079g.a(), s1Var, d0(), this.f29079g.d());
                    this.f29091s = null;
                }
            } else if (i4 == 2 || i4 == 3) {
                s1 s1Var2 = this.f29091s;
                if (s1Var2 != null && (h2Var2 = this.f29079g) != null) {
                    String c11 = h2Var2.c();
                    String b10 = h2Var2.b();
                    StringBuilder sb = new StringBuilder(String.valueOf(c11).length() + 70 + String.valueOf(b10).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(c11);
                    sb.append(" on ");
                    sb.append(b10);
                    Log.e("GmsClient", sb.toString());
                    j jVar2 = this.f29082j;
                    String c12 = this.f29079g.c();
                    u.k(c12);
                    jVar2.j(c12, this.f29079g.b(), this.f29079g.a(), s1Var2, d0(), this.f29079g.d());
                    this.C.incrementAndGet();
                }
                s1 s1Var3 = new s1(this, this.C.get());
                this.f29091s = s1Var3;
                if (this.f29092t == 3 && H() != null) {
                    h2Var = new h2(E().getPackageName(), H(), true, j.c(), false);
                } else {
                    h2Var = new h2(N(), M(), false, j.c(), P());
                }
                this.f29079g = h2Var;
                if (h2Var.d() && r() < 17895000) {
                    String valueOf = String.valueOf(this.f29079g.c());
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
                j jVar3 = this.f29082j;
                String c13 = this.f29079g.c();
                u.k(c13);
                if (!jVar3.k(new a2(c13, this.f29079g.b(), this.f29079g.a(), this.f29079g.d()), s1Var3, d0(), C())) {
                    String c14 = this.f29079g.c();
                    String b11 = this.f29079g.b();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(c14).length() + 34 + String.valueOf(b11).length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(c14);
                    sb2.append(" on ");
                    sb2.append(b11);
                    Log.w("GmsClient", sb2.toString());
                    k0(16, null, this.C.get());
                }
            } else if (i4 == 4) {
                u.k(t9);
                R(t9);
            }
        }
    }

    @Nullable
    @u2.a
    public Account A() {
        return null;
    }

    @NonNull
    @u2.a
    public Feature[] B() {
        return J;
    }

    @Nullable
    @u2.a
    protected Executor C() {
        return null;
    }

    @Nullable
    @u2.a
    public Bundle D() {
        return null;
    }

    @NonNull
    @u2.a
    public final Context E() {
        return this.f29080h;
    }

    @u2.a
    public int F() {
        return this.f29095w;
    }

    @NonNull
    @u2.a
    protected Bundle G() {
        return new Bundle();
    }

    @Nullable
    @u2.a
    protected String H() {
        return null;
    }

    @NonNull
    @u2.a
    public final Looper I() {
        return this.f29081i;
    }

    @NonNull
    @u2.a
    protected Set<Scope> J() {
        return Collections.emptySet();
    }

    @NonNull
    @u2.a
    public final T K() throws DeadObjectException {
        T t9;
        synchronized (this.f29085m) {
            if (this.f29092t != 5) {
                x();
                t9 = this.f29089q;
                u.l(t9, "Client is connected but service is null");
            } else {
                throw new DeadObjectException();
            }
        }
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    @u2.a
    public abstract String L();

    @NonNull
    @u2.a
    protected abstract String M();

    @NonNull
    @u2.a
    protected String N() {
        return "com.google.android.gms";
    }

    @Nullable
    @u2.a
    public ConnectionTelemetryConfiguration O() {
        zzj zzjVar = this.B;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzd;
    }

    @u2.a
    protected boolean P() {
        return r() >= 211700000;
    }

    @u2.a
    public boolean Q() {
        return this.B != null;
    }

    @u2.a
    @CallSuper
    protected void R(@NonNull T t9) {
        this.f29075c = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    @CallSuper
    public void S(@NonNull ConnectionResult connectionResult) {
        this.f29076d = connectionResult.getErrorCode();
        this.f29077e = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    @CallSuper
    public void T(int i4) {
        this.f29073a = i4;
        this.f29074b = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public void U(int i4, @Nullable IBinder iBinder, @Nullable Bundle bundle, int i10) {
        Handler handler = this.f29084l;
        handler.sendMessage(handler.obtainMessage(1, i10, -1, new t1(this, i4, iBinder, bundle)));
    }

    @u2.a
    public void V(@NonNull String str) {
        this.f29097y = str;
    }

    @u2.a
    public void W(int i4) {
        Handler handler = this.f29084l;
        handler.sendMessage(handler.obtainMessage(6, this.C.get(), i4));
    }

    @u2.a
    @y2.d0
    protected void X(@NonNull c cVar, int i4, @Nullable PendingIntent pendingIntent) {
        u.l(cVar, "Connection progress callbacks cannot be null.");
        this.f29088p = cVar;
        Handler handler = this.f29084l;
        handler.sendMessage(handler.obtainMessage(3, this.C.get(), i4, pendingIntent));
    }

    @u2.a
    public boolean Y() {
        return false;
    }

    @u2.a
    public boolean a() {
        boolean z9;
        synchronized (this.f29085m) {
            z9 = this.f29092t == 4;
        }
        return z9;
    }

    @u2.a
    public boolean b() {
        return false;
    }

    @u2.a
    public void c() {
        this.C.incrementAndGet();
        synchronized (this.f29090r) {
            int size = this.f29090r.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f29090r.get(i4).d();
            }
            this.f29090r.clear();
        }
        synchronized (this.f29086n) {
            this.f29087o = null;
        }
        o0(1, null);
    }

    @u2.a
    public boolean d() {
        return false;
    }

    @NonNull
    protected final String d0() {
        String str = this.f29096x;
        return str == null ? this.f29080h.getClass().getName() : str;
    }

    @u2.a
    public void e(@NonNull String str) {
        this.f29078f = str;
        c();
    }

    @u2.a
    public boolean f() {
        boolean z9;
        synchronized (this.f29085m) {
            int i4 = this.f29092t;
            z9 = true;
            if (i4 != 2 && i4 != 3) {
                z9 = false;
            }
        }
        return z9;
    }

    @NonNull
    @u2.a
    public String g() {
        h2 h2Var;
        if (a() && (h2Var = this.f29079g) != null) {
            return h2Var.b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    @u2.a
    public void h(@NonNull c cVar) {
        u.l(cVar, "Connection progress callbacks cannot be null.");
        this.f29088p = cVar;
        o0(2, null);
    }

    @u2.a
    public boolean j() {
        return true;
    }

    @u2.a
    public boolean k() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k0(int i4, @Nullable Bundle bundle, int i10) {
        Handler handler = this.f29084l;
        handler.sendMessage(handler.obtainMessage(7, i10, -1, new u1(this, i4, null)));
    }

    @Nullable
    @u2.a
    public IBinder l() {
        synchronized (this.f29086n) {
            p pVar = this.f29087o;
            if (pVar == null) {
                return null;
            }
            return pVar.asBinder();
        }
    }

    @u2.a
    @WorkerThread
    public void n(@Nullable m mVar, @NonNull Set<Scope> set) {
        Bundle G2 = G();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f29095w, this.f29097y);
        getServiceRequest.zzd = this.f29080h.getPackageName();
        getServiceRequest.zzg = G2;
        if (set != null) {
            getServiceRequest.zzf = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (k()) {
            Account A = A();
            if (A == null) {
                A = new Account("<<default account>>", com.google.android.gms.common.internal.b.f29059a);
            }
            getServiceRequest.zzh = A;
            if (mVar != null) {
                getServiceRequest.zze = mVar.asBinder();
            }
        } else if (b()) {
            getServiceRequest.zzh = A();
        }
        getServiceRequest.zzi = J;
        getServiceRequest.zzj = B();
        if (Y()) {
            getServiceRequest.zzm = true;
        }
        try {
            synchronized (this.f29086n) {
                p pVar = this.f29087o;
                if (pVar != null) {
                    pVar.Y0(new r1(this, this.C.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            W(3);
        } catch (RemoteException e10) {
            e = e10;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            U(8, null, null, this.C.get());
        } catch (SecurityException e11) {
            throw e11;
        } catch (RuntimeException e12) {
            e = e12;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            U(8, null, null, this.C.get());
        }
    }

    @u2.a
    public void o(@NonNull InterfaceC0197e interfaceC0197e) {
        interfaceC0197e.a();
    }

    @u2.a
    public void p(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        int i4;
        T t9;
        p pVar;
        synchronized (this.f29085m) {
            i4 = this.f29092t;
            t9 = this.f29089q;
        }
        synchronized (this.f29086n) {
            pVar = this.f29087o;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i4 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i4 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i4 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i4 == 4) {
            printWriter.print("CONNECTED");
        } else if (i4 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (t9 == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) L()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t9.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (pVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(pVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f29075c > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j4 = this.f29075c;
            String format = simpleDateFormat.format(new Date(j4));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j4);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.f29074b > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i10 = this.f29073a;
            if (i10 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i10 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i10 != 3) {
                printWriter.append((CharSequence) String.valueOf(i10));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j10 = this.f29074b;
            String format2 = simpleDateFormat.format(new Date(j10));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j10);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.f29077e > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) com.google.android.gms.common.api.f.a(this.f29076d));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j11 = this.f29077e;
            String format3 = simpleDateFormat.format(new Date(j11));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j11);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    @u2.a
    public int r() {
        return com.google.android.gms.common.f.f29004a;
    }

    @Nullable
    @u2.a
    public final Feature[] s() {
        zzj zzjVar = this.B;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzb;
    }

    @Nullable
    @u2.a
    public String u() {
        return this.f29078f;
    }

    @NonNull
    @u2.a
    public Intent v() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @u2.a
    public void w() {
        int k10 = this.f29083k.k(this.f29080h, r());
        if (k10 != 0) {
            o0(1, null);
            X(new d(), k10, null);
            return;
        }
        h(new d());
    }

    @u2.a
    protected final void x() {
        if (!a()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    @u2.a
    public abstract T y(@NonNull IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public boolean z() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @u2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected e(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.NonNull android.os.Looper r11, int r12, @androidx.annotation.Nullable com.google.android.gms.common.internal.e.a r13, @androidx.annotation.Nullable com.google.android.gms.common.internal.e.b r14, @androidx.annotation.Nullable java.lang.String r15) {
        /*
            r9 = this;
            com.google.android.gms.common.internal.j r3 = com.google.android.gms.common.internal.j.d(r10)
            com.google.android.gms.common.f r4 = com.google.android.gms.common.f.i()
            com.google.android.gms.common.internal.u.k(r13)
            com.google.android.gms.common.internal.u.k(r14)
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.e.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.e$a, com.google.android.gms.common.internal.e$b, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    @y2.d0
    public e(@NonNull Context context, @NonNull Looper looper, @NonNull j jVar, @NonNull com.google.android.gms.common.f fVar, int i4, @Nullable a aVar, @Nullable b bVar, @Nullable String str) {
        this.f29078f = null;
        this.f29085m = new Object();
        this.f29086n = new Object();
        this.f29090r = new ArrayList<>();
        this.f29092t = 1;
        this.f29098z = null;
        this.A = false;
        this.B = null;
        this.C = new AtomicInteger(0);
        u.l(context, "Context must not be null");
        this.f29080h = context;
        u.l(looper, "Looper must not be null");
        this.f29081i = looper;
        u.l(jVar, "Supervisor must not be null");
        this.f29082j = jVar;
        u.l(fVar, "API availability must not be null");
        this.f29083k = fVar;
        this.f29084l = new p1(this, looper);
        this.f29095w = i4;
        this.f29093u = aVar;
        this.f29094v = bVar;
        this.f29096x = str;
    }
}
