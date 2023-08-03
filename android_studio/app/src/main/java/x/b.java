package x;

import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public class b {
    public static boolean a() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null || externalStorageState.length() <= 0) {
            return false;
        }
        return (externalStorageState.equals("mounted") || externalStorageState.equals("mounted_ro")) && Environment.getExternalStorageDirectory() != null;
    }

    public static String b(String str) {
        try {
            if (a()) {
                File file = new File(Environment.getExternalStorageDirectory(), str);
                if (file.exists()) {
                    return y.a.b(file.getAbsolutePath());
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void c(String str, String str2) {
        try {
            if (a()) {
                File file = new File(Environment.getExternalStorageDirectory(), str);
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                }
                y.a.c(file.getAbsolutePath(), str2);
            }
        } catch (Exception unused) {
        }
    }
}
