package y1;

import java.io.IOException;

/* compiled from: NativeLoader.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static b f94683a;

    private a() {
    }

    public static String a(String str) throws IOException {
        b bVar;
        synchronized (a.class) {
            bVar = f94683a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.b(str);
    }

    public static int b() {
        b bVar;
        synchronized (a.class) {
            bVar = f94683a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.a();
    }

    public static synchronized void c(b bVar) {
        synchronized (a.class) {
            if (f94683a == null) {
                f94683a = bVar;
            } else {
                throw new IllegalStateException("Cannot re-initialize NativeLoader.");
            }
        }
    }

    public static synchronized void d(b bVar) {
        synchronized (a.class) {
            if (!e()) {
                c(bVar);
            }
        }
    }

    public static synchronized boolean e() {
        boolean z9;
        synchronized (a.class) {
            z9 = f94683a != null;
        }
        return z9;
    }

    public static boolean f(String str) {
        return g(str, 0);
    }

    public static boolean g(String str, int i4) {
        b bVar;
        synchronized (a.class) {
            bVar = f94683a;
            if (bVar == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return bVar.c(str, i4);
    }
}
