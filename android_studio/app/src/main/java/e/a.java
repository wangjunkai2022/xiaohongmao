package e;

import android.content.Context;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {
    public static synchronized String a() {
        synchronized (a.class) {
            String d4 = d();
            if (t.a.e(d4)) {
                return null;
            }
            String[] split = d4.split("`");
            if (split != null && split.length >= 2) {
                return split[0];
            }
            return null;
        }
    }

    public static synchronized String b(Context context) {
        String a10;
        synchronized (a.class) {
            a10 = a();
            if (t.a.e(a10)) {
                a10 = e(context);
            }
        }
        return a10;
    }

    public static synchronized void c(h.b bVar) {
        synchronized (a.class) {
            if (t.a.e(bVar.a())) {
                return;
            }
            if (bVar.a().equals(a())) {
                return;
            }
            String str = bVar.a() + "`" + bVar.d();
            if (str != null) {
                try {
                    String c10 = i.c(i.e(), str);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("device", c10);
                    x.a.b("deviceid_v2", jSONObject.toString());
                } catch (Exception unused) {
                }
            }
        }
    }

    private static String d() {
        try {
            return i.b(i.e(), new JSONObject(x.a.a("deviceid_v2")).getString("device"));
        } catch (Exception unused) {
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:19:0x003e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static synchronized java.lang.String e(android.content.Context r5) {
        /*
            java.lang.Class<e.a> r0 = e.a.class
            monitor-enter(r0)
            java.lang.String r1 = ""
            java.lang.String r2 = "profiles"
            java.lang.String r3 = "deviceid"
            java.lang.String r4 = ""
            java.lang.String r5 = x.c.a(r5, r2, r3, r4)     // Catch: java.lang.Throwable -> L3c
            boolean r2 = t.a.e(r5)     // Catch: java.lang.Throwable -> L3c
            r3 = 0
            if (r2 == 0) goto L18
            r5 = r3
            goto L20
        L18:
            java.lang.String r2 = com.alipay.security.mobile.module.commonutils.crypto.i.e()     // Catch: java.lang.Throwable -> L3c
            java.lang.String r5 = com.alipay.security.mobile.module.commonutils.crypto.i.b(r2, r5)     // Catch: java.lang.Throwable -> L3c
        L20:
            boolean r2 = t.a.e(r5)     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L28
            monitor-exit(r0)
            return r3
        L28:
            e.b r2 = new e.b     // Catch: java.lang.Throwable -> L3c
            r2.<init>()     // Catch: java.lang.Throwable -> L3c
            java.util.Map r5 = e.b.a(r5)     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L3c
            java.lang.String r2 = "deviceId"
            java.lang.Object r5 = r5.get(r2)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L3c
            r1 = r5
        L3c:
            monitor-exit(r0)
            return r1
        L3e:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.e(android.content.Context):java.lang.String");
    }
}
