package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Executor;

/* compiled from: ForwardingListenableFuture.java */
@CanIgnoreReturnValue
@h3.b
/* loaded from: classes2.dex */
public abstract class f0<V> extends e0<V> implements q0<V> {

    /* compiled from: ForwardingListenableFuture.java */
    /* loaded from: classes2.dex */
    public static abstract class a<V> extends f0<V> {

        /* renamed from: a  reason: collision with root package name */
        private final q0<V> f35125a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(q0<V> q0Var) {
            this.f35125a = (q0) com.google.common.base.a0.E(q0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.f0, com.google.common.util.concurrent.e0
        /* renamed from: N */
        public final q0<V> M() {
            return this.f35125a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.e0
    /* renamed from: N */
    public abstract q0<? extends V> M();

    @Override // com.google.common.util.concurrent.q0
    public void addListener(Runnable runnable, Executor executor) {
        M().addListener(runnable, executor);
    }
}
