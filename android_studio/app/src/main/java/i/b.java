package i;

import android.content.Context;
import com.alipay.security.mobile.module.commonutils.crypto.d;
import java.util.UUID;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f69076a = "";

    public static synchronized String a(Context context) {
        String str;
        synchronized (b.class) {
            if (t.a.e(f69076a)) {
                String a10 = x.c.a(context, "alipay_vkey_random", "random", "");
                f69076a = a10;
                if (t.a.e(a10)) {
                    String d4 = d.d(UUID.randomUUID().toString());
                    f69076a = d4;
                    x.c.b(context, "alipay_vkey_random", "random", d4);
                }
            }
            str = f69076a;
        }
        return str;
    }
}
