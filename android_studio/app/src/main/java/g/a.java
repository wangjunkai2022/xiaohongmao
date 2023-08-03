package g;

import android.content.Context;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f67793a = "";

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f67794b = false;

    /* renamed from: c  reason: collision with root package name */
    private static Context f67795c;

    /* renamed from: d  reason: collision with root package name */
    private static a f67796d;

    private a() {
    }

    public static a a(Context context) {
        if (f67796d == null) {
            synchronized (a.class) {
                if (f67796d == null) {
                    f67796d = new a();
                    f67795c = context;
                }
            }
        }
        return f67796d;
    }

    public static String b() {
        t.a.e(f67793a);
        return f67793a;
    }

    public static String c() {
        return f67793a;
    }
}
