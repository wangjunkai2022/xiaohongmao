package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.Exception;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: ForwardingCheckedFuture.java */
@h3.c
@h3.a
@Deprecated
/* loaded from: classes2.dex */
public abstract class a0<V, X extends Exception> extends f0<V> implements q<V, X> {

    /* compiled from: ForwardingCheckedFuture.java */
    @h3.a
    @Deprecated
    /* loaded from: classes2.dex */
    public static abstract class a<V, X extends Exception> extends a0<V, X> {

        /* renamed from: a  reason: collision with root package name */
        private final q<V, X> f35035a;

        protected a(q<V, X> qVar) {
            this.f35035a = (q) com.google.common.base.a0.E(qVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.a0, com.google.common.util.concurrent.f0
        /* renamed from: O */
        public final q<V, X> N() {
            return this.f35035a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.f0
    /* renamed from: O */
    public abstract q<V, X> N();

    @Override // com.google.common.util.concurrent.q
    @CanIgnoreReturnValue
    public V d() throws Exception {
        return N().d();
    }

    @Override // com.google.common.util.concurrent.q
    @CanIgnoreReturnValue
    public V m(long j4, TimeUnit timeUnit) throws TimeoutException, Exception {
        return N().m(j4, timeUnit);
    }
}
