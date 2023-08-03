package org.aspectj.lang;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes4.dex */
public class SoftException extends RuntimeException {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f91002b;

    /* renamed from: a  reason: collision with root package name */
    Throwable f91003a;

    static {
        boolean z9;
        try {
            Class.forName("java.nio.Buffer");
            z9 = true;
        } catch (Throwable unused) {
            z9 = false;
        }
        f91002b = z9;
    }

    public SoftException(Throwable th) {
        this.f91003a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f91003a;
    }

    public Throwable getWrappedThrowable() {
        return this.f91003a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        Throwable th = this.f91003a;
        if (f91002b || th == null) {
            return;
        }
        printStream.print("Caused by: ");
        th.printStackTrace(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        Throwable th = this.f91003a;
        if (f91002b || th == null) {
            return;
        }
        printWriter.print("Caused by: ");
        th.printStackTrace(printWriter);
    }
}
