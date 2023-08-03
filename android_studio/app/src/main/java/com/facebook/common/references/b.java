package com.facebook.common.references;

import com.facebook.common.internal.j;
import com.facebook.common.references.a;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultCloseableReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b<T> extends a<T> {

    /* renamed from: m  reason: collision with root package name */
    private static final String f11019m = "DefaultCloseableReference";

    private b(SharedReference<T> sharedReference, a.d leakHandler, @r7.h Throwable stacktrace) {
        super(sharedReference, leakHandler, stacktrace);
    }

    @Override // com.facebook.common.references.a
    /* renamed from: b */
    public a<T> clone() {
        j.o(y());
        return new b(this.f11016b, this.f11017c, this.f11018d != null ? new Throwable(this.f11018d) : null);
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
                p0.a.q0(f11019m, "Finalized without closing: %x %x (type = %s)", objArr);
                this.f11017c.a(this.f11016b, this.f11018d);
                close();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(T t9, h<T> resourceReleaser, a.d leakHandler, @r7.h Throwable stacktrace) {
        super(t9, resourceReleaser, leakHandler, stacktrace);
    }
}
