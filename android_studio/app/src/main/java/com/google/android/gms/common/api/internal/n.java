package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class n<L> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f28807a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile L f28808b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private volatile a<L> f28809c;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static final class a<L> {

        /* renamed from: a  reason: collision with root package name */
        private final L f28810a;

        /* renamed from: b  reason: collision with root package name */
        private final String f28811b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @u2.a
        public a(L l10, String str) {
            this.f28810a = l10;
            this.f28811b = str;
        }

        @NonNull
        @u2.a
        public String a() {
            String str = this.f28811b;
            int identityHashCode = System.identityHashCode(this.f28810a);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(str);
            sb.append("@");
            sb.append(identityHashCode);
            return sb.toString();
        }

        @u2.a
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f28810a == aVar.f28810a && this.f28811b.equals(aVar.f28811b);
            }
            return false;
        }

        @u2.a
        public int hashCode() {
            return (System.identityHashCode(this.f28810a) * 31) + this.f28811b.hashCode();
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface b<L> {
        @u2.a
        void a(@NonNull L l10);

        @u2.a
        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u2.a
    public n(@NonNull Looper looper, @NonNull L l10, @NonNull String str) {
        this.f28807a = new com.google.android.gms.common.util.concurrent.a(looper);
        this.f28808b = (L) com.google.android.gms.common.internal.u.l(l10, "Listener must not be null");
        this.f28809c = new a<>(l10, com.google.android.gms.common.internal.u.g(str));
    }

    @u2.a
    public void a() {
        this.f28808b = null;
        this.f28809c = null;
    }

    @Nullable
    @u2.a
    public a<L> b() {
        return this.f28809c;
    }

    @u2.a
    public boolean c() {
        return this.f28808b != null;
    }

    @u2.a
    public void d(@NonNull final b<? super L> bVar) {
        com.google.android.gms.common.internal.u.l(bVar, "Notifier must not be null");
        this.f28807a.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.h2
            @Override // java.lang.Runnable
            public final void run() {
                n.this.e(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(b<? super L> bVar) {
        Object obj = (L) this.f28808b;
        if (obj == null) {
            bVar.b();
            return;
        }
        try {
            bVar.a(obj);
        } catch (RuntimeException e4) {
            bVar.b();
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u2.a
    public n(@NonNull Executor executor, @NonNull L l10, @NonNull String str) {
        this.f28807a = (Executor) com.google.android.gms.common.internal.u.l(executor, "Executor must not be null");
        this.f28808b = (L) com.google.android.gms.common.internal.u.l(l10, "Listener must not be null");
        this.f28809c = new a<>(l10, com.google.android.gms.common.internal.u.g(str));
    }
}
