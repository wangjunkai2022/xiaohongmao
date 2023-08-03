package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.a2;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.i0;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.common.api.internal.v1;
import com.google.android.gms.common.api.internal.z2;
import com.google.android.gms.common.internal.f;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class h<O extends a.d> implements j<O> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28559a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f28560b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f28561c;

    /* renamed from: d  reason: collision with root package name */
    private final O f28562d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.c<O> f28563e;

    /* renamed from: f  reason: collision with root package name */
    private final Looper f28564f;

    /* renamed from: g  reason: collision with root package name */
    private final int f28565g;
    @NotOnlyInitialized

    /* renamed from: h  reason: collision with root package name */
    private final i f28566h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.y f28567i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    protected final com.google.android.gms.common.api.internal.i f28568j;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a {
        @NonNull
        @u2.a

        /* renamed from: c  reason: collision with root package name */
        public static final a f28569c = new C0196a().a();
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.gms.common.api.internal.y f28570a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        public final Looper f28571b;

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        @u2.a
        /* renamed from: com.google.android.gms.common.api.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0196a {

            /* renamed from: a  reason: collision with root package name */
            private com.google.android.gms.common.api.internal.y f28572a;

            /* renamed from: b  reason: collision with root package name */
            private Looper f28573b;

            @NonNull
            @u2.a
            public a a() {
                if (this.f28572a == null) {
                    this.f28572a = new com.google.android.gms.common.api.internal.b();
                }
                if (this.f28573b == null) {
                    this.f28573b = Looper.getMainLooper();
                }
                return new a(this.f28572a, this.f28573b);
            }

            @NonNull
            @u2.a
            public C0196a b(@NonNull Looper looper) {
                com.google.android.gms.common.internal.u.l(looper, "Looper must not be null.");
                this.f28573b = looper;
                return this;
            }

            @NonNull
            @u2.a
            public C0196a c(@NonNull com.google.android.gms.common.api.internal.y yVar) {
                com.google.android.gms.common.internal.u.l(yVar, "StatusExceptionMapper must not be null.");
                this.f28572a = yVar;
                return this;
            }
        }

        @u2.a
        private a(com.google.android.gms.common.api.internal.y yVar, Account account, Looper looper) {
            this.f28570a = yVar;
            this.f28571b = looper;
        }
    }

    @u2.a
    @MainThread
    public h(@NonNull Activity activity, @NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o9, @NonNull a aVar2) {
        this(activity, activity, aVar, o9, aVar2);
    }

    private final <A extends a.b, T extends e.a<? extends q, A>> T y(int i4, @NonNull T t9) {
        t9.s();
        this.f28568j.J(this, i4, t9);
        return t9;
    }

    private final <TResult, A extends a.b> com.google.android.gms.tasks.k<TResult> z(int i4, @NonNull com.google.android.gms.common.api.internal.a0<A, TResult> a0Var) {
        com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l();
        this.f28568j.K(this, i4, a0Var, lVar, this.f28567i);
        return lVar.a();
    }

    @Override // com.google.android.gms.common.api.j
    @NonNull
    public final com.google.android.gms.common.api.internal.c<O> b() {
        return this.f28563e;
    }

    @NonNull
    @u2.a
    public i c() {
        return this.f28566h;
    }

    @NonNull
    @u2.a
    protected f.a d() {
        Account account;
        Set<Scope> emptySet;
        GoogleSignInAccount a10;
        f.a aVar = new f.a();
        O o9 = this.f28562d;
        if ((o9 instanceof a.d.b) && (a10 = ((a.d.b) o9).a()) != null) {
            account = a10.getAccount();
        } else {
            O o10 = this.f28562d;
            account = o10 instanceof a.d.InterfaceC0194a ? ((a.d.InterfaceC0194a) o10).getAccount() : null;
        }
        aVar.d(account);
        O o11 = this.f28562d;
        if (o11 instanceof a.d.b) {
            GoogleSignInAccount a11 = ((a.d.b) o11).a();
            if (a11 == null) {
                emptySet = Collections.emptySet();
            } else {
                emptySet = a11.getRequestedScopes();
            }
        } else {
            emptySet = Collections.emptySet();
        }
        aVar.c(emptySet);
        aVar.e(this.f28559a.getClass().getName());
        aVar.b(this.f28559a.getPackageName());
        return aVar;
    }

    @NonNull
    @u2.a
    protected com.google.android.gms.tasks.k<Boolean> e() {
        return this.f28568j.C(this);
    }

    @NonNull
    @u2.a
    public <A extends a.b, T extends e.a<? extends q, A>> T f(@NonNull T t9) {
        y(2, t9);
        return t9;
    }

    @NonNull
    @u2.a
    public <TResult, A extends a.b> com.google.android.gms.tasks.k<TResult> g(@NonNull com.google.android.gms.common.api.internal.a0<A, TResult> a0Var) {
        return z(2, a0Var);
    }

    @NonNull
    @u2.a
    public <A extends a.b, T extends e.a<? extends q, A>> T h(@NonNull T t9) {
        y(0, t9);
        return t9;
    }

    @NonNull
    @u2.a
    public <TResult, A extends a.b> com.google.android.gms.tasks.k<TResult> i(@NonNull com.google.android.gms.common.api.internal.a0<A, TResult> a0Var) {
        return z(0, a0Var);
    }

    @NonNull
    @u2.a
    @Deprecated
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.t<A, ?>, U extends com.google.android.gms.common.api.internal.c0<A, ?>> com.google.android.gms.tasks.k<Void> j(@NonNull T t9, @NonNull U u9) {
        com.google.android.gms.common.internal.u.k(t9);
        com.google.android.gms.common.internal.u.k(u9);
        com.google.android.gms.common.internal.u.l(t9.b(), "Listener has already been released.");
        com.google.android.gms.common.internal.u.l(u9.a(), "Listener has already been released.");
        com.google.android.gms.common.internal.u.b(com.google.android.gms.common.internal.s.b(t9.b(), u9.a()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f28568j.D(this, t9, u9, y.f28961a);
    }

    @NonNull
    @u2.a
    public <A extends a.b> com.google.android.gms.tasks.k<Void> k(@NonNull com.google.android.gms.common.api.internal.u<A, ?> uVar) {
        com.google.android.gms.common.internal.u.k(uVar);
        com.google.android.gms.common.internal.u.l(uVar.f28890a.b(), "Listener has already been released.");
        com.google.android.gms.common.internal.u.l(uVar.f28891b.a(), "Listener has already been released.");
        return this.f28568j.D(this, uVar.f28890a, uVar.f28891b, uVar.f28892c);
    }

    @NonNull
    @u2.a
    public com.google.android.gms.tasks.k<Boolean> l(@NonNull n.a<?> aVar) {
        return m(aVar, 0);
    }

    @NonNull
    @u2.a
    public com.google.android.gms.tasks.k<Boolean> m(@NonNull n.a<?> aVar, int i4) {
        com.google.android.gms.common.internal.u.l(aVar, "Listener key cannot be null.");
        return this.f28568j.E(this, aVar, i4);
    }

    @NonNull
    @u2.a
    public <A extends a.b, T extends e.a<? extends q, A>> T n(@NonNull T t9) {
        y(1, t9);
        return t9;
    }

    @NonNull
    @u2.a
    public <TResult, A extends a.b> com.google.android.gms.tasks.k<TResult> o(@NonNull com.google.android.gms.common.api.internal.a0<A, TResult> a0Var) {
        return z(1, a0Var);
    }

    @NonNull
    @u2.a
    public O p() {
        return this.f28562d;
    }

    @NonNull
    @u2.a
    public Context q() {
        return this.f28559a;
    }

    @Nullable
    @u2.a
    protected String r() {
        return this.f28560b;
    }

    @Nullable
    @u2.a
    @Deprecated
    protected String s() {
        return this.f28560b;
    }

    @NonNull
    @u2.a
    public Looper t() {
        return this.f28564f;
    }

    @NonNull
    @u2.a
    public <L> com.google.android.gms.common.api.internal.n<L> u(@NonNull L l10, @NonNull String str) {
        return com.google.android.gms.common.api.internal.o.a(l10, this.f28564f, str);
    }

    public final int v() {
        return this.f28565g;
    }

    @WorkerThread
    public final a.f w(Looper looper, v1<O> v1Var) {
        a.f c10 = ((a.AbstractC0193a) com.google.android.gms.common.internal.u.k(this.f28561c.a())).c(this.f28559a, looper, d().a(), this.f28562d, v1Var, v1Var);
        String r9 = r();
        if (r9 != null && (c10 instanceof com.google.android.gms.common.internal.e)) {
            ((com.google.android.gms.common.internal.e) c10).V(r9);
        }
        if (r9 != null && (c10 instanceof com.google.android.gms.common.api.internal.p)) {
            ((com.google.android.gms.common.api.internal.p) c10).y(r9);
        }
        return c10;
    }

    public final z2 x(Context context, Handler handler) {
        return new z2(context, handler, d().a());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @u2.a
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h(@androidx.annotation.NonNull android.app.Activity r2, @androidx.annotation.NonNull com.google.android.gms.common.api.a<O> r3, @androidx.annotation.NonNull O r4, @androidx.annotation.NonNull com.google.android.gms.common.api.internal.y r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.h$a$a r0 = new com.google.android.gms.common.api.h$a$a
            r0.<init>()
            r0.c(r5)
            android.os.Looper r5 = r2.getMainLooper()
            r0.b(r5)
            com.google.android.gms.common.api.h$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.h.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.y):void");
    }

    private h(@NonNull Context context, @Nullable Activity activity, com.google.android.gms.common.api.a<O> aVar, O o9, a aVar2) {
        com.google.android.gms.common.internal.u.l(context, "Null context is not permitted.");
        com.google.android.gms.common.internal.u.l(aVar, "Api must not be null.");
        com.google.android.gms.common.internal.u.l(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f28559a = context.getApplicationContext();
        String str = null;
        if (y2.v.q()) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        this.f28560b = str;
        this.f28561c = aVar;
        this.f28562d = o9;
        this.f28564f = aVar2.f28571b;
        com.google.android.gms.common.api.internal.c<O> a10 = com.google.android.gms.common.api.internal.c.a(aVar, o9, str);
        this.f28563e = a10;
        this.f28566h = new a2(this);
        com.google.android.gms.common.api.internal.i z9 = com.google.android.gms.common.api.internal.i.z(this.f28559a);
        this.f28568j = z9;
        this.f28565g = z9.n();
        this.f28567i = aVar2.f28570a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            i0.v(activity, z9, a10);
        }
        z9.c(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @u2.a
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h(@androidx.annotation.NonNull android.content.Context r2, @androidx.annotation.NonNull com.google.android.gms.common.api.a<O> r3, @androidx.annotation.NonNull O r4, @androidx.annotation.NonNull android.os.Looper r5, @androidx.annotation.NonNull com.google.android.gms.common.api.internal.y r6) {
        /*
            r1 = this;
            com.google.android.gms.common.api.h$a$a r0 = new com.google.android.gms.common.api.h$a$a
            r0.<init>()
            r0.b(r5)
            r0.c(r6)
            com.google.android.gms.common.api.h$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.h.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, android.os.Looper, com.google.android.gms.common.api.internal.y):void");
    }

    @u2.a
    public h(@NonNull Context context, @NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o9, @NonNull a aVar2) {
        this(context, (Activity) null, aVar, o9, aVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @u2.a
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h(@androidx.annotation.NonNull android.content.Context r2, @androidx.annotation.NonNull com.google.android.gms.common.api.a<O> r3, @androidx.annotation.NonNull O r4, @androidx.annotation.NonNull com.google.android.gms.common.api.internal.y r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.h$a$a r0 = new com.google.android.gms.common.api.h$a$a
            r0.<init>()
            r0.c(r5)
            com.google.android.gms.common.api.h$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.h.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.y):void");
    }
}
