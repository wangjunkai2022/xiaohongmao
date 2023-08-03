package com.google.mlkit.common.sdkinternal;

import java.io.Closeable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class k0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ q f35806a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k0(q qVar, j0 j0Var) {
        AtomicReference atomicReference;
        this.f35806a = qVar;
        atomicReference = qVar.f35906d;
        com.google.android.gms.common.internal.u.q(((Thread) atomicReference.getAndSet(Thread.currentThread())) == null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        AtomicReference atomicReference;
        atomicReference = this.f35806a.f35906d;
        atomicReference.set(null);
        this.f35806a.e();
    }
}
