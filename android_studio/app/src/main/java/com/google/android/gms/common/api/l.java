package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.q;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class l<R extends q> {

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a {
        @u2.a
        void a(@NonNull Status status);
    }

    @u2.a
    public void c(@NonNull a aVar) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public abstract R d();

    @NonNull
    public abstract R e(long j4, @NonNull TimeUnit timeUnit);

    public abstract void f();

    public abstract boolean g();

    public abstract void h(@NonNull r<? super R> rVar);

    public abstract void i(@NonNull r<? super R> rVar, long j4, @NonNull TimeUnit timeUnit);

    @NonNull
    public <S extends q> u<S> j(@NonNull t<? super R, ? extends S> tVar) {
        throw new UnsupportedOperationException();
    }
}
