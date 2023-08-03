package com.facebook.common.references;

import com.facebook.common.references.a;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: FinalizerCloseableReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c<T> extends a<T> {

    /* renamed from: m  reason: collision with root package name */
    private static final String f11020m = "FinalizerCloseableReference";

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(T t9, h<T> resourceReleaser, a.d leakHandler, @r7.h Throwable stacktrace) {
        super(t9, resourceReleaser, leakHandler, stacktrace);
    }

    @Override // com.facebook.common.references.a
    /* renamed from: b */
    public a<T> clone() {
        return this;
    }

    @Override // com.facebook.common.references.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (this.f11015a) {
                    return;
                }
                T h4 = this.f11016b.h();
                Object[] objArr = new Object[3];
                objArr[0] = Integer.valueOf(System.identityHashCode(this));
                objArr[1] = Integer.valueOf(System.identityHashCode(this.f11016b));
                objArr[2] = h4 == null ? null : h4.getClass().getName();
                p0.a.q0(f11020m, "Finalized without closing: %x %x (type = %s)", objArr);
                this.f11016b.e();
            }
        } finally {
            super.finalize();
        }
    }
}
