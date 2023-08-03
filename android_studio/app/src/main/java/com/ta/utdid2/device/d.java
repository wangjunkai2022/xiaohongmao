package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings;
import com.ta.utdid2.android.utils.g;
import com.ta.utdid2.android.utils.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: UTUtdid.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: i  reason: collision with root package name */
    private static final String f55897i = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    /* renamed from: k  reason: collision with root package name */
    private static d f55899k = null;

    /* renamed from: l  reason: collision with root package name */
    static final String f55900l = "dxCRMxhQkdGePGnp";

    /* renamed from: m  reason: collision with root package name */
    static final String f55901m = "mqBRboGZkQPcAkyk";

    /* renamed from: n  reason: collision with root package name */
    private static final String f55902n = ".DataStorage";

    /* renamed from: o  reason: collision with root package name */
    private static final String f55903o = "ContextData";

    /* renamed from: q  reason: collision with root package name */
    private static final String f55905q = "Alvin2";

    /* renamed from: a  reason: collision with root package name */
    private Context f55906a;

    /* renamed from: c  reason: collision with root package name */
    private f f55908c;

    /* renamed from: d  reason: collision with root package name */
    private String f55909d;

    /* renamed from: e  reason: collision with root package name */
    private String f55910e;

    /* renamed from: f  reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f55911f;

    /* renamed from: g  reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f55912g;

    /* renamed from: j  reason: collision with root package name */
    private static final Object f55898j = new Object();

    /* renamed from: p  reason: collision with root package name */
    private static final String f55904p = ".UTSystemConfig" + File.separator + "Global";

    /* renamed from: b  reason: collision with root package name */
    private String f55907b = null;

    /* renamed from: h  reason: collision with root package name */
    private Pattern f55913h = Pattern.compile("[^0-9a-zA-Z=/+]+");

    public d(Context context) {
        this.f55906a = null;
        this.f55908c = null;
        this.f55909d = "xx_utdid_key";
        this.f55910e = "xx_utdid_domain";
        this.f55911f = null;
        this.f55912g = null;
        this.f55906a = context;
        this.f55912g = new com.ta.utdid2.core.persistent.c(context, f55904p, f55905q, false, true);
        this.f55911f = new com.ta.utdid2.core.persistent.c(context, f55902n, f55903o, false, true);
        this.f55908c = new f();
        this.f55909d = String.format("K_%d", Integer.valueOf(i.b(this.f55909d)));
        this.f55910e = String.format("D_%d", Integer.valueOf(i.b(this.f55910e)));
    }

    private static String a(byte[] bArr) throws Exception {
        Mac mac = Mac.getInstance(com.alipay.security.mobile.module.commonutils.crypto.c.f7003a);
        mac.init(new SecretKeySpec(f55897i.getBytes(), mac.getAlgorithm()));
        return com.ta.utdid2.android.utils.b.f(mac.doFinal(bArr), 2);
    }

    private final byte[] b() throws Exception {
        String str;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nextInt = new Random().nextInt();
        byte[] a10 = com.ta.utdid2.android.utils.e.a(currentTimeMillis);
        byte[] a11 = com.ta.utdid2.android.utils.e.a(nextInt);
        byteArrayOutputStream.write(a10, 0, 4);
        byteArrayOutputStream.write(a11, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            str = g.a(this.f55906a);
        } catch (Exception unused) {
            str = "" + new Random().nextInt();
        }
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(str)), 0, 4);
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(a(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }

    private void c() {
        com.ta.utdid2.core.persistent.c cVar = this.f55912g;
        if (cVar != null) {
            if (i.c(cVar.l("UTDID2"))) {
                String l10 = this.f55912g.l("UTDID");
                if (!i.c(l10)) {
                    k(l10);
                }
            }
            boolean z9 = false;
            boolean z10 = true;
            if (!i.c(this.f55912g.l("DID"))) {
                this.f55912g.u("DID");
                z9 = true;
            }
            if (!i.c(this.f55912g.l("EI"))) {
                this.f55912g.u("EI");
                z9 = true;
            }
            if (i.c(this.f55912g.l("SI"))) {
                z10 = z9;
            } else {
                this.f55912g.u("SI");
            }
            if (z10) {
                this.f55912g.c();
            }
        }
    }

    private String d() {
        com.ta.utdid2.core.persistent.c cVar = this.f55912g;
        if (cVar != null) {
            String l10 = cVar.l("UTDID2");
            if (i.c(l10) || this.f55908c.d(l10) == null) {
                return null;
            }
            return l10;
        }
        return null;
    }

    public static d f(Context context) {
        if (context != null && f55899k == null) {
            synchronized (f55898j) {
                if (f55899k == null) {
                    d dVar = new d(context);
                    f55899k = dVar;
                    dVar.c();
                }
            }
        }
        return f55899k;
    }

    private boolean g(String str) {
        if (str != null) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length() && !this.f55913h.matcher(str).find()) {
                return true;
            }
        }
        return false;
    }

    private void h(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (str == null || (cVar = this.f55911f) == null || str.equals(cVar.l(this.f55909d))) {
            return;
        }
        this.f55911f.s(this.f55909d, str);
        this.f55911f.c();
    }

    private void i(String str) {
        if (this.f55906a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length()) {
                String str2 = null;
                try {
                    str2 = Settings.System.getString(this.f55906a.getContentResolver(), f55901m);
                } catch (Exception unused) {
                }
                if (g(str2)) {
                    return;
                }
                try {
                    Settings.System.putString(this.f55906a.getContentResolver(), f55901m, str);
                } catch (Exception unused2) {
                }
            }
        }
    }

    private void j(String str) {
        if (this.f55906a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") != 0 || str == null) {
            return;
        }
        l(str);
    }

    private void k(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.length() != 24 || (cVar = this.f55912g) == null) {
                return;
            }
            cVar.s("UTDID2", str);
            this.f55912g.c();
        }
    }

    private void l(String str) {
        String str2;
        try {
            str2 = Settings.System.getString(this.f55906a.getContentResolver(), f55900l);
        } catch (Exception unused) {
            str2 = null;
        }
        if (str.equals(str2)) {
            return;
        }
        try {
            Settings.System.putString(this.f55906a.getContentResolver(), f55900l, str);
        } catch (Exception unused2) {
        }
    }

    public synchronized String e() {
        String str;
        String string;
        String str2 = this.f55907b;
        if (str2 != null) {
            return str2;
        }
        try {
            string = Settings.System.getString(this.f55906a.getContentResolver(), f55901m);
        } catch (Exception unused) {
        }
        if (g(string)) {
            return string;
        }
        e eVar = new e();
        boolean z9 = false;
        try {
            str = Settings.System.getString(this.f55906a.getContentResolver(), f55900l);
        } catch (Exception unused2) {
            str = null;
        }
        if (i.c(str)) {
            z9 = true;
        } else {
            String b10 = eVar.b(str);
            if (g(b10)) {
                i(b10);
                return b10;
            }
            String a10 = eVar.a(str);
            if (g(a10)) {
                String d4 = this.f55908c.d(a10);
                if (!i.c(d4)) {
                    j(d4);
                    try {
                        str = Settings.System.getString(this.f55906a.getContentResolver(), f55900l);
                    } catch (Exception unused3) {
                    }
                }
            }
            String a11 = this.f55908c.a(str);
            if (g(a11)) {
                this.f55907b = a11;
                k(a11);
                h(str);
                i(this.f55907b);
                return this.f55907b;
            }
        }
        String d10 = d();
        if (g(d10)) {
            String d11 = this.f55908c.d(d10);
            if (z9) {
                j(d11);
            }
            i(d10);
            h(d11);
            this.f55907b = d10;
            return d10;
        }
        String l10 = this.f55911f.l(this.f55909d);
        if (!i.c(l10)) {
            String a12 = eVar.a(l10);
            if (!g(a12)) {
                a12 = this.f55908c.a(l10);
            }
            if (g(a12)) {
                String d12 = this.f55908c.d(a12);
                if (!i.c(a12)) {
                    this.f55907b = a12;
                    if (z9) {
                        j(d12);
                    }
                    k(this.f55907b);
                    return this.f55907b;
                }
            }
        }
        try {
            byte[] b11 = b();
            if (b11 != null) {
                String f10 = com.ta.utdid2.android.utils.b.f(b11, 2);
                this.f55907b = f10;
                k(f10);
                String c10 = this.f55908c.c(b11);
                if (c10 != null) {
                    if (z9) {
                        j(c10);
                    }
                    h(c10);
                }
                return this.f55907b;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return null;
    }
}
