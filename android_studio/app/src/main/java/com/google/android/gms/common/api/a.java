package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a<O extends d> {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC0193a<?, O> f28520a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f28521b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28522c;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @y2.d0
    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0193a<T extends f, O> extends e<T, O> {
        @NonNull
        @u2.a
        @Deprecated
        public T c(@NonNull Context context, @NonNull Looper looper, @NonNull com.google.android.gms.common.internal.f fVar, @NonNull O o9, @NonNull i.b bVar, @NonNull i.c cVar) {
            return d(context, looper, fVar, o9, bVar, cVar);
        }

        @NonNull
        @u2.a
        public T d(@NonNull Context context, @NonNull Looper looper, @NonNull com.google.android.gms.common.internal.f fVar, @NonNull O o9, @NonNull com.google.android.gms.common.api.internal.f fVar2, @NonNull com.google.android.gms.common.api.internal.q qVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface b {
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class c<C extends b> {
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    /* loaded from: classes2.dex */
    public interface d {
        @NonNull
        public static final C0195d M0 = new C0195d(null);

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* renamed from: com.google.android.gms.common.api.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0194a extends c, e {
            @NonNull
            Account getAccount();
        }

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* loaded from: classes2.dex */
        public interface b extends c {
            @Nullable
            GoogleSignInAccount a();
        }

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* loaded from: classes2.dex */
        public interface c extends d {
        }

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* renamed from: com.google.android.gms.common.api.a$d$d  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0195d implements e {
            private C0195d() {
            }

            /* synthetic */ C0195d(v vVar) {
            }
        }

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* loaded from: classes2.dex */
        public interface e extends d {
        }

        /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        /* loaded from: classes2.dex */
        public interface f extends c, e {
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @y2.d0
    /* loaded from: classes2.dex */
    public static abstract class e<T extends b, O> {
        @u2.a

        /* renamed from: a  reason: collision with root package name */
        public static final int f28523a = 1;
        @u2.a

        /* renamed from: b  reason: collision with root package name */
        public static final int f28524b = 2;
        @u2.a

        /* renamed from: c  reason: collision with root package name */
        public static final int f28525c = Integer.MAX_VALUE;

        @NonNull
        @u2.a
        public List<Scope> a(@Nullable O o9) {
            return Collections.emptyList();
        }

        @u2.a
        public int b() {
            return Integer.MAX_VALUE;
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface f extends b {
        @u2.a
        boolean a();

        @u2.a
        boolean b();

        @u2.a
        void c();

        @u2.a
        boolean d();

        @u2.a
        void e(@NonNull String str);

        @u2.a
        boolean f();

        @NonNull
        @u2.a
        String g();

        @u2.a
        void h(@NonNull e.c cVar);

        @NonNull
        @u2.a
        Feature[] i();

        @u2.a
        boolean j();

        @u2.a
        boolean k();

        @Nullable
        @u2.a
        IBinder l();

        @NonNull
        @u2.a
        Set<Scope> m();

        @u2.a
        void n(@Nullable com.google.android.gms.common.internal.m mVar, @Nullable Set<Scope> set);

        @u2.a
        void o(@NonNull e.InterfaceC0197e interfaceC0197e);

        @u2.a
        void p(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr);

        @u2.a
        int r();

        @NonNull
        @u2.a
        Feature[] s();

        @Nullable
        @u2.a
        String u();

        @NonNull
        @u2.a
        Intent v();
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @y2.d0
    /* loaded from: classes2.dex */
    public static final class g<C extends f> extends c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @u2.a
    public <C extends f> a(@NonNull String str, @NonNull AbstractC0193a<C, O> abstractC0193a, @NonNull g<C> gVar) {
        com.google.android.gms.common.internal.u.l(abstractC0193a, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.u.l(gVar, "Cannot construct an Api with a null ClientKey");
        this.f28522c = str;
        this.f28520a = abstractC0193a;
        this.f28521b = gVar;
    }

    @NonNull
    public final AbstractC0193a<?, O> a() {
        return this.f28520a;
    }

    @NonNull
    public final c<?> b() {
        return this.f28521b;
    }

    @NonNull
    public final e<?, O> c() {
        return this.f28520a;
    }

    @NonNull
    public final String d() {
        return this.f28522c;
    }
}
