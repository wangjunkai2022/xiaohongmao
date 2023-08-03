package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class u<A extends a.b, L> {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public final t<A, L> f28890a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final c0<A, L> f28891b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f28892c;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a<A extends a.b, L> {

        /* renamed from: a  reason: collision with root package name */
        private v<A, com.google.android.gms.tasks.l<Void>> f28893a;

        /* renamed from: b  reason: collision with root package name */
        private v<A, com.google.android.gms.tasks.l<Boolean>> f28894b;

        /* renamed from: d  reason: collision with root package name */
        private n<L> f28896d;

        /* renamed from: e  reason: collision with root package name */
        private Feature[] f28897e;

        /* renamed from: g  reason: collision with root package name */
        private int f28899g;

        /* renamed from: c  reason: collision with root package name */
        private Runnable f28895c = p2.f28856a;

        /* renamed from: f  reason: collision with root package name */
        private boolean f28898f = true;

        private a() {
        }

        /* synthetic */ a(s2 s2Var) {
        }

        @NonNull
        @u2.a
        public u<A, L> a() {
            com.google.android.gms.common.internal.u.b(this.f28893a != null, "Must set register function");
            com.google.android.gms.common.internal.u.b(this.f28894b != null, "Must set unregister function");
            com.google.android.gms.common.internal.u.b(this.f28896d != null, "Must set holder");
            return new u<>(new q2(this, this.f28896d, this.f28897e, this.f28898f, this.f28899g), new r2(this, (n.a) com.google.android.gms.common.internal.u.l(this.f28896d.b(), "Key must not be null")), this.f28895c, null);
        }

        @NonNull
        @u2.a
        public a<A, L> b(@NonNull Runnable runnable) {
            this.f28895c = runnable;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> c(@NonNull v<A, com.google.android.gms.tasks.l<Void>> vVar) {
            this.f28893a = vVar;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> d(boolean z9) {
            this.f28898f = z9;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> e(@NonNull Feature... featureArr) {
            this.f28897e = featureArr;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> f(int i4) {
            this.f28899g = i4;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> g(@NonNull v<A, com.google.android.gms.tasks.l<Boolean>> vVar) {
            this.f28894b = vVar;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, L> h(@NonNull n<L> nVar) {
            this.f28896d = nVar;
            return this;
        }
    }

    /* synthetic */ u(t tVar, c0 c0Var, Runnable runnable, t2 t2Var) {
        this.f28890a = tVar;
        this.f28891b = c0Var;
        this.f28892c = runnable;
    }

    @NonNull
    @u2.a
    public static <A extends a.b, L> a<A, L> a() {
        return new a<>(null);
    }
}
