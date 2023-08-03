package w5;

import android.util.Log;

/* compiled from: Logger.java */
/* loaded from: classes3.dex */
public class d {
    public static void a(String str) {
        b(null, str);
    }

    public static void b(String str, String str2) {
        String c10 = c(str, str2);
        if (c.c().d()) {
            Log.e(c.c().f(), c10);
        }
        if (c.c().e()) {
            b.b(c10);
        }
    }

    public static String c(String str, String str2) {
        if (str == null) {
            return str2 == null ? "" : str2;
        }
        Object[] objArr = new Object[2];
        objArr[0] = str;
        if (str2 == null) {
            str2 = "";
        }
        objArr[1] = str2;
        return String.format("[%s]: %s", objArr);
    }

    public static void d(String str) {
        e(null, str);
    }

    public static void e(String str, String str2) {
        String c10 = c(str, str2);
        if (c.c().d()) {
            Log.i(c.c().f(), c10);
        }
        if (c.c().e()) {
            b.b(c10);
        }
    }

    public static void f(String str) {
        g(null, str);
    }

    public static void g(String str, String str2) {
        String c10 = c(str, str2);
        if (c.c().d()) {
            Log.w(c.c().f(), c10);
        }
        if (c.c().e()) {
            b.b(c10);
        }
    }
}
