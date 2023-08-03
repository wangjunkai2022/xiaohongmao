package g;

import android.content.Context;
import y5.c;

/* loaded from: classes.dex */
public final class b {
    public static String a(Context context) {
        try {
            return (String) c.class.getMethod("getUtdid", Context.class).invoke(null, context);
        } catch (Exception unused) {
            return "";
        }
    }
}
