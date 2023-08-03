package x;

/* loaded from: classes.dex */
public class d {
    public static String a(String str) {
        return System.getProperty(str);
    }

    public static void b(String str, String str2) {
        if (y.a.a(str2)) {
            return;
        }
        System.setProperty(str, str2);
    }
}
