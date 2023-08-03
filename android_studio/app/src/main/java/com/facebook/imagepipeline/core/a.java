package com.facebook.imagepipeline.core;

import com.facebook.common.references.SharedReference;
import com.facebook.common.references.a;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.PrintWriter;
import java.io.StringWriter;

/* compiled from: CloseableReferenceFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final a.d f12214a;

    /* compiled from: CloseableReferenceFactory.java */
    /* renamed from: com.facebook.imagepipeline.core.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0100a implements a.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m1.a f12215a;

        C0100a(final m1.a val$closeableReferenceLeakTracker) {
            this.f12215a = val$closeableReferenceLeakTracker;
        }

        @Override // com.facebook.common.references.a.d
        public void a(SharedReference<Object> reference, @r7.h Throwable stacktrace) {
            this.f12215a.a(reference, stacktrace);
            Object h4 = reference.h();
            p0.a.q0("Fresco", "Finalized without closing: %x %x (type = %s).\nStack:\n%s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(reference)), h4 != null ? h4.getClass().getName() : "<value is null>", a.d(stacktrace));
        }

        @Override // com.facebook.common.references.a.d
        public boolean b() {
            return this.f12215a.c();
        }
    }

    public a(final m1.a closeableReferenceLeakTracker) {
        this.f12214a = new C0100a(closeableReferenceLeakTracker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(@r7.h Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        tr.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public <U extends Closeable> com.facebook.common.references.a<U> b(U u9) {
        return com.facebook.common.references.a.E(u9, this.f12214a);
    }

    public <T> com.facebook.common.references.a<T> c(T t9, com.facebook.common.references.h<T> resourceReleaser) {
        return com.facebook.common.references.a.H(t9, resourceReleaser, this.f12214a);
    }
}
