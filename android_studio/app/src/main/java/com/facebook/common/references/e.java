package com.facebook.common.references;

import com.facebook.common.references.a;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NoOpCloseableReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e<T> extends a<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(T t9, h<T> resourceReleaser, a.d leakHandler, @r7.h Throwable stacktrace) {
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
}
