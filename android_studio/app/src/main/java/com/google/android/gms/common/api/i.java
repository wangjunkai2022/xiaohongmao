package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.h3;
import com.google.android.gms.common.api.internal.j1;
import com.google.android.gms.common.api.internal.q3;
import com.google.android.gms.common.api.internal.z3;
import com.google.android.gms.common.internal.i0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@Deprecated
/* loaded from: classes2.dex */
public abstract class i {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public static final String f28574a = "<<default account>>";

    /* renamed from: b  reason: collision with root package name */
    public static final int f28575b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f28576c = 2;
    @s7.a("sAllClients")

    /* renamed from: d  reason: collision with root package name */
    private static final Set<i> f28577d = Collections.newSetFromMap(new WeakHashMap());

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface b extends com.google.android.gms.common.api.internal.f {

        /* renamed from: a  reason: collision with root package name */
        public static final int f28596a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f28597b = 2;
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface c extends com.google.android.gms.common.api.internal.q {
    }

    public static void k(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        Set<i> set = f28577d;
        synchronized (set) {
            String concat = String.valueOf(str).concat("  ");
            int i4 = 0;
            for (i iVar : set) {
                printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i4);
                iVar.j(concat, fileDescriptor, printWriter, strArr);
                i4++;
            }
        }
    }

    @NonNull
    @u2.a
    public static Set<i> n() {
        Set<i> set = f28577d;
        synchronized (set) {
        }
        return set;
    }

    public abstract void A();

    public abstract void B(@NonNull b bVar);

    public abstract void C(@NonNull c cVar);

    @NonNull
    @u2.a
    public <L> com.google.android.gms.common.api.internal.n<L> D(@NonNull L l10) {
        throw new UnsupportedOperationException();
    }

    public abstract void E(@NonNull FragmentActivity fragmentActivity);

    public abstract void F(@NonNull b bVar);

    public abstract void G(@NonNull c cVar);

    public void H(h3 h3Var) {
        throw new UnsupportedOperationException();
    }

    public void I(h3 h3Var) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public abstract ConnectionResult d();

    @NonNull
    public abstract ConnectionResult e(long j4, @NonNull TimeUnit timeUnit);

    @NonNull
    public abstract l<Status> f();

    public abstract void g();

    public void h(int i4) {
        throw new UnsupportedOperationException();
    }

    public abstract void i();

    public abstract void j(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr);

    @NonNull
    @u2.a
    public <A extends a.b, R extends q, T extends e.a<R, A>> T l(@NonNull T t9) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @u2.a
    public <A extends a.b, T extends e.a<? extends q, A>> T m(@NonNull T t9) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @u2.a
    public <C extends a.f> C o(@NonNull a.c<C> cVar) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public abstract ConnectionResult p(@NonNull com.google.android.gms.common.api.a<?> aVar);

    @NonNull
    @u2.a
    public Context q() {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @u2.a
    public Looper r() {
        throw new UnsupportedOperationException();
    }

    @u2.a
    public boolean s(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean t(@NonNull com.google.android.gms.common.api.a<?> aVar);

    public abstract boolean u();

    public abstract boolean v();

    public abstract boolean w(@NonNull b bVar);

    public abstract boolean x(@NonNull c cVar);

    @u2.a
    public boolean y(@NonNull com.google.android.gms.common.api.internal.w wVar) {
        throw new UnsupportedOperationException();
    }

    @u2.a
    public void z() {
        throw new UnsupportedOperationException();
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @Deprecated
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Account f28578a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<Scope> f28579b;

        /* renamed from: c  reason: collision with root package name */
        private final Set<Scope> f28580c;

        /* renamed from: d  reason: collision with root package name */
        private int f28581d;

        /* renamed from: e  reason: collision with root package name */
        private View f28582e;

        /* renamed from: f  reason: collision with root package name */
        private String f28583f;

        /* renamed from: g  reason: collision with root package name */
        private String f28584g;

        /* renamed from: h  reason: collision with root package name */
        private final Map<com.google.android.gms.common.api.a<?>, i0> f28585h;

        /* renamed from: i  reason: collision with root package name */
        private final Context f28586i;

        /* renamed from: j  reason: collision with root package name */
        private final Map<com.google.android.gms.common.api.a<?>, a.d> f28587j;

        /* renamed from: k  reason: collision with root package name */
        private com.google.android.gms.common.api.internal.l f28588k;

        /* renamed from: l  reason: collision with root package name */
        private int f28589l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private c f28590m;

        /* renamed from: n  reason: collision with root package name */
        private Looper f28591n;

        /* renamed from: o  reason: collision with root package name */
        private com.google.android.gms.common.e f28592o;

        /* renamed from: p  reason: collision with root package name */
        private a.AbstractC0193a<? extends com.google.android.gms.signin.f, com.google.android.gms.signin.a> f28593p;

        /* renamed from: q  reason: collision with root package name */
        private final ArrayList<b> f28594q;

        /* renamed from: r  reason: collision with root package name */
        private final ArrayList<c> f28595r;

        @u2.a
        public a(@NonNull Context context) {
            this.f28579b = new HashSet();
            this.f28580c = new HashSet();
            this.f28585h = new ArrayMap();
            this.f28587j = new ArrayMap();
            this.f28589l = -1;
            this.f28592o = com.google.android.gms.common.e.x();
            this.f28593p = com.google.android.gms.signin.e.f31093c;
            this.f28594q = new ArrayList<>();
            this.f28595r = new ArrayList<>();
            this.f28586i = context;
            this.f28591n = context.getMainLooper();
            this.f28583f = context.getPackageName();
            this.f28584g = context.getClass().getName();
        }

        private final <O extends a.d> void q(com.google.android.gms.common.api.a<O> aVar, @Nullable O o9, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((a.e) com.google.android.gms.common.internal.u.l(aVar.c(), "Base client builder must not be null")).a(o9));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.f28585h.put(aVar, new i0(hashSet));
        }

        @NonNull
        public a a(@NonNull com.google.android.gms.common.api.a<? extends a.d.e> aVar) {
            com.google.android.gms.common.internal.u.l(aVar, "Api must not be null");
            this.f28587j.put(aVar, null);
            List<Scope> a10 = ((a.e) com.google.android.gms.common.internal.u.l(aVar.c(), "Base client builder must not be null")).a(null);
            this.f28580c.addAll(a10);
            this.f28579b.addAll(a10);
            return this;
        }

        @NonNull
        public <O extends a.d.c> a b(@NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o9) {
            com.google.android.gms.common.internal.u.l(aVar, "Api must not be null");
            com.google.android.gms.common.internal.u.l(o9, "Null options are not permitted for this Api");
            this.f28587j.put(aVar, o9);
            List<Scope> a10 = ((a.e) com.google.android.gms.common.internal.u.l(aVar.c(), "Base client builder must not be null")).a(o9);
            this.f28580c.addAll(a10);
            this.f28579b.addAll(a10);
            return this;
        }

        @NonNull
        public <O extends a.d.c> a c(@NonNull com.google.android.gms.common.api.a<O> aVar, @NonNull O o9, @NonNull Scope... scopeArr) {
            com.google.android.gms.common.internal.u.l(aVar, "Api must not be null");
            com.google.android.gms.common.internal.u.l(o9, "Null options are not permitted for this Api");
            this.f28587j.put(aVar, o9);
            q(aVar, o9, scopeArr);
            return this;
        }

        @NonNull
        public <T extends a.d.e> a d(@NonNull com.google.android.gms.common.api.a<? extends a.d.e> aVar, @NonNull Scope... scopeArr) {
            com.google.android.gms.common.internal.u.l(aVar, "Api must not be null");
            this.f28587j.put(aVar, null);
            q(aVar, null, scopeArr);
            return this;
        }

        @NonNull
        public a e(@NonNull b bVar) {
            com.google.android.gms.common.internal.u.l(bVar, "Listener must not be null");
            this.f28594q.add(bVar);
            return this;
        }

        @NonNull
        public a f(@NonNull c cVar) {
            com.google.android.gms.common.internal.u.l(cVar, "Listener must not be null");
            this.f28595r.add(cVar);
            return this;
        }

        @NonNull
        public a g(@NonNull Scope scope) {
            com.google.android.gms.common.internal.u.l(scope, "Scope must not be null");
            this.f28579b.add(scope);
            return this;
        }

        @NonNull
        public i h() {
            com.google.android.gms.common.internal.u.b(!this.f28587j.isEmpty(), "must call addApi() to add at least one API");
            com.google.android.gms.common.internal.f p9 = p();
            Map<com.google.android.gms.common.api.a<?>, i0> n9 = p9.n();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            com.google.android.gms.common.api.a<?> aVar = null;
            boolean z9 = false;
            for (com.google.android.gms.common.api.a<?> aVar2 : this.f28587j.keySet()) {
                a.d dVar = this.f28587j.get(aVar2);
                boolean z10 = n9.get(aVar2) != null;
                arrayMap.put(aVar2, Boolean.valueOf(z10));
                z3 z3Var = new z3(aVar2, z10);
                arrayList.add(z3Var);
                a.AbstractC0193a abstractC0193a = (a.AbstractC0193a) com.google.android.gms.common.internal.u.k(aVar2.a());
                a.f c10 = abstractC0193a.c(this.f28586i, this.f28591n, p9, dVar, z3Var, z3Var);
                arrayMap2.put(aVar2.b(), c10);
                if (abstractC0193a.b() == 1) {
                    z9 = dVar != null;
                }
                if (c10.d()) {
                    if (aVar != null) {
                        String d4 = aVar2.d();
                        String d10 = aVar.d();
                        StringBuilder sb = new StringBuilder(String.valueOf(d4).length() + 21 + String.valueOf(d10).length());
                        sb.append(d4);
                        sb.append(" cannot be used with ");
                        sb.append(d10);
                        throw new IllegalStateException(sb.toString());
                    }
                    aVar = aVar2;
                }
            }
            if (aVar != null) {
                if (!z9) {
                    com.google.android.gms.common.internal.u.s(this.f28578a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", aVar.d());
                    com.google.android.gms.common.internal.u.s(this.f28579b.equals(this.f28580c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", aVar.d());
                } else {
                    String d11 = aVar.d();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(d11).length() + 82);
                    sb2.append("With using ");
                    sb2.append(d11);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
            }
            j1 j1Var = new j1(this.f28586i, new ReentrantLock(), this.f28591n, p9, this.f28592o, this.f28593p, arrayMap, this.f28594q, this.f28595r, arrayMap2, this.f28589l, j1.K(arrayMap2.values(), true), arrayList);
            synchronized (i.f28577d) {
                i.f28577d.add(j1Var);
            }
            if (this.f28589l >= 0) {
                q3.u(this.f28588k).v(this.f28589l, j1Var, this.f28590m);
            }
            return j1Var;
        }

        @NonNull
        public a i(@NonNull FragmentActivity fragmentActivity, int i4, @Nullable c cVar) {
            com.google.android.gms.common.api.internal.l lVar = new com.google.android.gms.common.api.internal.l((Activity) fragmentActivity);
            com.google.android.gms.common.internal.u.b(i4 >= 0, "clientId must be non-negative");
            this.f28589l = i4;
            this.f28590m = cVar;
            this.f28588k = lVar;
            return this;
        }

        @NonNull
        public a j(@NonNull FragmentActivity fragmentActivity, @Nullable c cVar) {
            i(fragmentActivity, 0, cVar);
            return this;
        }

        @NonNull
        public a k(@NonNull String str) {
            this.f28578a = str == null ? null : new Account(str, com.google.android.gms.common.internal.b.f29059a);
            return this;
        }

        @NonNull
        public a l(int i4) {
            this.f28581d = i4;
            return this;
        }

        @NonNull
        public a m(@NonNull Handler handler) {
            com.google.android.gms.common.internal.u.l(handler, "Handler must not be null");
            this.f28591n = handler.getLooper();
            return this;
        }

        @NonNull
        public a n(@NonNull View view) {
            com.google.android.gms.common.internal.u.l(view, "View must not be null");
            this.f28582e = view;
            return this;
        }

        @NonNull
        public a o() {
            k("<<default account>>");
            return this;
        }

        @NonNull
        @y2.d0
        public final com.google.android.gms.common.internal.f p() {
            com.google.android.gms.signin.a aVar = com.google.android.gms.signin.a.f31081j;
            Map<com.google.android.gms.common.api.a<?>, a.d> map = this.f28587j;
            com.google.android.gms.common.api.a<com.google.android.gms.signin.a> aVar2 = com.google.android.gms.signin.e.f31097g;
            if (map.containsKey(aVar2)) {
                aVar = (com.google.android.gms.signin.a) this.f28587j.get(aVar2);
            }
            return new com.google.android.gms.common.internal.f(this.f28578a, this.f28579b, this.f28585h, this.f28581d, this.f28582e, this.f28583f, this.f28584g, aVar, false);
        }

        @u2.a
        public a(@NonNull Context context, @NonNull b bVar, @NonNull c cVar) {
            this(context);
            com.google.android.gms.common.internal.u.l(bVar, "Must provide a connected listener");
            this.f28594q.add(bVar);
            com.google.android.gms.common.internal.u.l(cVar, "Must provide a connection failed listener");
            this.f28595r.add(cVar);
        }
    }
}
