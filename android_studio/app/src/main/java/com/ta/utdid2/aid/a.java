package com.ta.utdid2.aid;

import android.content.Context;
import android.util.Log;
import com.ta.utdid2.android.utils.f;
import com.ta.utdid2.android.utils.i;
import com.ta.utdid2.android.utils.k;

/* compiled from: AidManager.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f55768b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final String f55769c = "com.ta.utdid2.aid.a";

    /* renamed from: d  reason: collision with root package name */
    private static final int f55770d = 1;

    /* renamed from: a  reason: collision with root package name */
    private Context f55771a;

    private a(Context context) {
        this.f55771a = context;
    }

    private synchronized String a(String str, String str2, String str3) {
        Context context = this.f55771a;
        if (context == null) {
            Log.e(f55769c, "no context!");
            return "";
        }
        String h4 = f.f(context) ? b.f(this.f55771a).h(str, str2, str3, c.b(this.f55771a, str, str2)) : "";
        c.d(this.f55771a, str, h4, str2);
        return h4;
    }

    public static synchronized a b(Context context) {
        a aVar;
        synchronized (a.class) {
            if (f55768b == null) {
                f55768b = new a(context);
            }
            aVar = f55768b;
        }
        return aVar;
    }

    public String c(String str, String str2, String str3) {
        if (this.f55771a != null && !i.c(str) && !i.c(str2)) {
            String b10 = c.b(this.f55771a, str, str2);
            return ((i.c(b10) || !k.a(c.a(this.f55771a, str, str2), 1)) && f.f(this.f55771a)) ? a(str, str2, str3) : b10;
        }
        String str4 = f55769c;
        StringBuilder sb = new StringBuilder();
        sb.append("mContext:");
        sb.append(this.f55771a);
        sb.append("; has appName:");
        sb.append(!i.c(str));
        sb.append("; has token:");
        sb.append(!i.c(str2));
        Log.e(str4, sb.toString());
        return "";
    }

    public void d(String str, String str2, String str3, y5.a aVar) {
        if (aVar == null) {
            Log.e(f55769c, "callback is null!");
        } else if (this.f55771a != null && !i.c(str) && !i.c(str2)) {
            String b10 = c.b(this.f55771a, str, str2);
            if (!i.c(b10) && k.a(c.a(this.f55771a, str, str2), 1)) {
                aVar.a(1001, b10);
            } else if (f.f(this.f55771a)) {
                b.f(this.f55771a).i(str, str2, str3, b10, aVar);
            } else {
                aVar.a(1003, b10);
            }
        } else {
            String str4 = f55769c;
            StringBuilder sb = new StringBuilder();
            sb.append("mContext:");
            sb.append(this.f55771a);
            sb.append("; callback:");
            sb.append(aVar);
            sb.append("; has appName:");
            sb.append(!i.c(str));
            sb.append("; has token:");
            sb.append(!i.c(str2));
            Log.e(str4, sb.toString());
            aVar.a(1002, "");
        }
    }
}
