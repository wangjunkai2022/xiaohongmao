package com.alipay.sdk.app.statistic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class c {
    public static final String A = "out_trade_no";
    public static final String B = "trade_no";

    /* renamed from: k  reason: collision with root package name */
    public static final String f6779k = "net";

    /* renamed from: l  reason: collision with root package name */
    public static final String f6780l = "biz";

    /* renamed from: m  reason: collision with root package name */
    public static final String f6781m = "cp";

    /* renamed from: n  reason: collision with root package name */
    public static final String f6782n = "H5PayNetworkError";

    /* renamed from: o  reason: collision with root package name */
    public static final String f6783o = "H5AuthNetworkError";

    /* renamed from: p  reason: collision with root package name */
    public static final String f6784p = "SSLError";

    /* renamed from: q  reason: collision with root package name */
    public static final String f6785q = "H5PayDataAnalysisError";

    /* renamed from: r  reason: collision with root package name */
    public static final String f6786r = "H5AuthDataAnalysisError";

    /* renamed from: s  reason: collision with root package name */
    public static final String f6787s = "ClientSignError";

    /* renamed from: t  reason: collision with root package name */
    public static final String f6788t = "ClientBindFailed";

    /* renamed from: u  reason: collision with root package name */
    public static final String f6789u = "TriDesEncryptError";

    /* renamed from: v  reason: collision with root package name */
    public static final String f6790v = "TriDesDecryptError";

    /* renamed from: w  reason: collision with root package name */
    public static final String f6791w = "ClientBindException";

    /* renamed from: x  reason: collision with root package name */
    public static final String f6792x = "SaveTradeTokenError";

    /* renamed from: y  reason: collision with root package name */
    public static final String f6793y = "ClientBindServiceFailed";

    /* renamed from: z  reason: collision with root package name */
    public static final String f6794z = "partner";

    /* renamed from: b  reason: collision with root package name */
    String f6796b;

    /* renamed from: c  reason: collision with root package name */
    String f6797c;

    /* renamed from: f  reason: collision with root package name */
    String f6800f;

    /* renamed from: i  reason: collision with root package name */
    String f6803i = "";

    /* renamed from: a  reason: collision with root package name */
    String f6795a = String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));

    /* renamed from: d  reason: collision with root package name */
    String f6798d = String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b(m.a.f86906e), b(m.a.f86907f));

    /* renamed from: e  reason: collision with root package name */
    String f6799e = String.format("%s,%s,-,-,-", b(com.alipay.sdk.tid.b.a().f6925a), b(p.b.b().e()));

    /* renamed from: g  reason: collision with root package name */
    String f6801g = "-";

    /* renamed from: h  reason: collision with root package name */
    String f6802h = "-";

    /* renamed from: j  reason: collision with root package name */
    String f6804j = "-";

    public c(Context context) {
        this.f6797c = a(context);
        this.f6800f = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), "android", b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).f6950p), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private static String a(Context context) {
        String str;
        String str2;
        String str3 = "-";
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                str = applicationContext.getPackageName();
                try {
                    str3 = applicationContext.getPackageManager().getPackageInfo(str, 0).versionName;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                str = "-";
            }
            str2 = str3;
            str3 = str;
        } else {
            str2 = "-";
        }
        return String.format("%s,%s,-,-,-", str3, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replace("[", "【").replace("]", "】").replace("(", "（").replace(")", "）").replace(",", "，").replace("-", "=").replace("^", "~");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Throwable th) {
        if (th == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append(th.getClass().getName());
            stringBuffer.append(":");
            stringBuffer.append(th.getMessage());
            stringBuffer.append(" 》 ");
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                for (int i4 = 0; i4 < stackTrace.length; i4++) {
                    stringBuffer.append(stackTrace[i4].toString() + " 》 ");
                }
            }
        } catch (Throwable unused) {
        }
        return stringBuffer.toString();
    }

    private void g(String str, String str2, Throwable th, String str3) {
        e(str, str2, c(th), str3);
    }

    private boolean h() {
        return TextUtils.isEmpty(this.f6803i);
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String i() {
        return String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));
    }

    private static String j(Context context) {
        return String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), "android", b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).f6950p), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private String k(String str) {
        String str2;
        if (TextUtils.isEmpty(this.f6803i)) {
            return "";
        }
        String[] split = str.split(p.a.f93050d);
        String str3 = null;
        if (split != null) {
            String str4 = null;
            for (String str5 : split) {
                String[] split2 = str5.split("=");
                if (split2 != null && split2.length == 2) {
                    if (split2[0].equalsIgnoreCase(f6794z)) {
                        split2[1].replace("\"", "");
                    } else if (split2[0].equalsIgnoreCase(A)) {
                        str3 = split2[1].replace("\"", "");
                    } else if (split2[0].equalsIgnoreCase(B)) {
                        str4 = split2[1].replace("\"", "");
                    }
                }
            }
            str2 = str3;
            str3 = str4;
        } else {
            str2 = null;
        }
        String b10 = b(str3);
        String b11 = b(str2);
        String format = String.format("%s,%s,-,%s,-,-,-", b10, b11, b(b11));
        this.f6796b = format;
        return String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", this.f6795a, format, this.f6797c, this.f6798d, this.f6799e, this.f6800f, this.f6801g, this.f6802h, this.f6803i, this.f6804j);
    }

    private static String l() {
        return String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b(m.a.f86906e), b(m.a.f86907f));
    }

    private static String m(String str) {
        String str2;
        String[] split = str.split(p.a.f93050d);
        String str3 = null;
        if (split != null) {
            String str4 = null;
            for (String str5 : split) {
                String[] split2 = str5.split("=");
                if (split2 != null && split2.length == 2) {
                    if (split2[0].equalsIgnoreCase(f6794z)) {
                        split2[1].replace("\"", "");
                    } else if (split2[0].equalsIgnoreCase(A)) {
                        str3 = split2[1].replace("\"", "");
                    } else if (split2[0].equalsIgnoreCase(B)) {
                        str4 = split2[1].replace("\"", "");
                    }
                }
            }
            str2 = str3;
            str3 = str4;
        } else {
            str2 = null;
        }
        String b10 = b(str3);
        String b11 = b(str2);
        return String.format("%s,%s,-,%s,-,-,-", b10, b11, b(b11));
    }

    private static String n() {
        return String.format("%s,%s,-,-,-", b(com.alipay.sdk.tid.b.a().f6925a), b(p.b.b().e()));
    }

    public final void d(String str, String str2, String str3) {
        e(str, str2, str3, "-");
    }

    public final void e(String str, String str2, String str3, String str4) {
        String str5 = "";
        if (!TextUtils.isEmpty(this.f6803i)) {
            str5 = "^";
        }
        this.f6803i += (str5 + String.format("%s,%s,%s,%s", str, str2, b(str3), str4));
    }

    public final void f(String str, String str2, Throwable th) {
        d(str, str2, c(th));
    }
}
