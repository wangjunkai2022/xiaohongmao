package x;

import java.io.File;

/* loaded from: classes.dex */
public class a {
    public static String a(String str) {
        String str2;
        try {
            str2 = d.a(str);
        } catch (Throwable unused) {
            str2 = "";
        }
        if (y.a.a(str2)) {
            return b.b(".SystemConfig" + File.separator + str);
        }
        return str2;
    }

    public static void b(String str, String str2) {
        try {
            d.b(str, str2);
        } catch (Throwable unused) {
        }
        if (b.a()) {
            b.c(".SystemConfig" + File.separator + str, str2);
        }
    }
}
