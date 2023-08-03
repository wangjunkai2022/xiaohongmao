package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class a0<A extends a.b, ResultT> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Feature[] f28616a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28617b;

    /* renamed from: c  reason: collision with root package name */
    private final int f28618c;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a<A extends a.b, ResultT> {

        /* renamed from: a  reason: collision with root package name */
        private v<A, com.google.android.gms.tasks.l<ResultT>> f28619a;

        /* renamed from: c  reason: collision with root package name */
        private Feature[] f28621c;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28620b = true;

        /* renamed from: d  reason: collision with root package name */
        private int f28622d = 0;

        private a() {
        }

        /* synthetic */ a(c3 c3Var) {
        }

        @NonNull
        @u2.a
        public a0<A, ResultT> a() {
            com.google.android.gms.common.internal.u.b(this.f28619a != null, "execute parameter required");
            return new b3(this, this.f28621c, this.f28620b, this.f28622d);
        }

        @NonNull
        @u2.a
        @Deprecated
        public a<A, ResultT> b(@NonNull final y2.d<A, com.google.android.gms.tasks.l<ResultT>> dVar) {
            this.f28619a = new v() { // from class: com.google.android.gms.common.api.internal.a3
                @Override // com.google.android.gms.common.api.internal.v
                public final void accept(Object obj, Object obj2) {
                    y2.d.this.accept((a.b) obj, (com.google.android.gms.tasks.l) obj2);
                }
            };
            return this;
        }

        @NonNull
        @u2.a
        public a<A, ResultT> c(@NonNull v<A, com.google.android.gms.tasks.l<ResultT>> vVar) {
            this.f28619a = vVar;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, ResultT> d(boolean z9) {
            this.f28620b = z9;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, ResultT> e(@NonNull Feature... featureArr) {
            this.f28621c = featureArr;
            return this;
        }

        @NonNull
        @u2.a
        public a<A, ResultT> f(int i4) {
            this.f28622d = i4;
            return this;
        }
    }

    @u2.a
    @Deprecated
    public a0() {
        this.f28616a = null;
        this.f28617b = false;
        this.f28618c = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public a0(@Nullable Feature[] featureArr, boolean z9, int i4) {
        this.f28616a = featureArr;
        boolean z10 = false;
        if (featureArr != null && z9) {
            z10 = true;
        }
        this.f28617b = z10;
        this.f28618c = i4;
    }

    @NonNull
    @u2.a
    public static <A extends a.b, ResultT> a<A, ResultT> a() {
        return new a<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public abstract void b(@NonNull A a10, @NonNull com.google.android.gms.tasks.l<ResultT> lVar) throws RemoteException;

    @u2.a
    public boolean c() {
        return this.f28617b;
    }

    public final int d() {
        return this.f28618c;
    }

    @Nullable
    public final Feature[] e() {
        return this.f28616a;
    }
}
