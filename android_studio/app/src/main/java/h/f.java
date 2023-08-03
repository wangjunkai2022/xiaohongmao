package h;

import android.content.Context;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static String f67996a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f67997b = "";

    public static synchronized String a() {
        String str;
        synchronized (f.class) {
            str = f67996a;
        }
        return str;
    }

    public static synchronized void b(b bVar) {
        synchronized (f.class) {
            if (bVar != null) {
                f67996a = bVar.a();
                f67997b = bVar.c();
                t.b.b("Update Token Storage. apdid = " + f67996a + ", token = " + f67997b);
            }
        }
    }

    public static synchronized boolean c(Context context) {
        synchronized (f.class) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                long c10 = e.c(context);
                t.b.b("[*]validTime=" + c10);
                t.b.b("[*]Now      =" + currentTimeMillis);
                if (Math.abs(currentTimeMillis - c10) < 86400000) {
                    return true;
                }
            } finally {
                return false;
            }
            return false;
        }
    }

    public static synchronized String d() {
        String str;
        synchronized (f.class) {
            str = f67997b;
        }
        return str;
    }
}
