package y2;

import android.os.Build;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@d0
/* loaded from: classes2.dex */
public final class v {
    private v() {
    }

    @u2.a
    public static boolean a() {
        return true;
    }

    @u2.a
    public static boolean b() {
        return true;
    }

    @u2.a
    public static boolean c() {
        return true;
    }

    @u2.a
    public static boolean d() {
        return true;
    }

    @u2.a
    public static boolean e() {
        return true;
    }

    @u2.a
    public static boolean f() {
        return true;
    }

    @u2.a
    public static boolean g() {
        return true;
    }

    @u2.a
    public static boolean h() {
        return true;
    }

    @u2.a
    public static boolean i() {
        return true;
    }

    @u2.a
    public static boolean j() {
        return true;
    }

    @u2.a
    public static boolean k() {
        return Build.VERSION.SDK_INT >= 22;
    }

    @u2.a
    public static boolean l() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @u2.a
    public static boolean m() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @u2.a
    public static boolean n() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @u2.a
    public static boolean o() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @u2.a
    public static boolean p() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @u2.a
    public static boolean q() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @u2.a
    public static boolean r() {
        if (Build.VERSION.SDK_INT >= 31) {
            return true;
        }
        if (q()) {
            String str = Build.VERSION.CODENAME;
            return str.length() == 1 && str.charAt(0) >= 'S' && str.charAt(0) <= 'Z';
        }
        return false;
    }

    @u2.a
    public static boolean s() {
        if (r()) {
            String str = Build.VERSION.CODENAME;
            return str.charAt(0) >= 'T' && str.charAt(0) <= 'Z';
        }
        return false;
    }
}
