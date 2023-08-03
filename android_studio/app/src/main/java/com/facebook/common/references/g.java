package com.facebook.common.references;

import com.facebook.common.internal.j;
import com.facebook.common.references.a;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RefCountCloseableReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g<T> extends a<T> {
    private g(SharedReference<T> sharedReference, a.d leakHandler, @r7.h Throwable stacktrace) {
        super(sharedReference, leakHandler, stacktrace);
    }

    @Override // com.facebook.common.references.a
    /* renamed from: b */
    public a<T> clone() {
        j.o(y());
        return new g(this.f11016b, this.f11017c, this.f11018d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(T t9, h<T> resourceReleaser, a.d leakHandler, @r7.h Throwable stacktrace) {
        super(t9, resourceReleaser, leakHandler, stacktrace);
    }
}
