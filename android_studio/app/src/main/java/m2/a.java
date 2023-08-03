package m2;

import android.util.Log;

/* compiled from: Logging.java */
/* loaded from: classes2.dex */
public final class a {
    private a() {
    }

    public static void a(String str, String str2) {
        Log.d(f(str), str2);
    }

    public static void b(String str, String str2, Object obj) {
        Log.d(f(str), String.format(str2, obj));
    }

    public static void c(String str, String str2, Object obj, Object obj2) {
        Log.d(f(str), String.format(str2, obj, obj2));
    }

    public static void d(String str, String str2, Object... objArr) {
        Log.d(f(str), String.format(str2, objArr));
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(f(str), str2, th);
    }

    private static String f(String str) {
        return "TransportRuntime." + str;
    }

    public static void g(String str, String str2) {
        Log.i(f(str), str2);
    }

    public static void h(String str, String str2, Object obj) {
        Log.w(f(str), String.format(str2, obj));
    }
}
