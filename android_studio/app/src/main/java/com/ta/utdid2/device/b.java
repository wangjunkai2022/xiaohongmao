package com.ta.utdid2.device;

import android.content.Context;
import com.ta.utdid2.android.utils.g;
import com.ta.utdid2.android.utils.i;
import java.util.zip.Adler32;

/* compiled from: DeviceInfo.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static a f55893a = null;

    /* renamed from: b  reason: collision with root package name */
    static String f55894b = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    /* renamed from: c  reason: collision with root package name */
    static final Object f55895c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final byte f55896d = 1;

    private static a a(Context context) {
        if (context != null) {
            new a();
            synchronized (f55895c) {
                String e4 = d.f(context).e();
                if (i.c(e4)) {
                    return null;
                }
                if (e4.endsWith("\n")) {
                    e4 = e4.substring(0, e4.length() - 1);
                }
                a aVar = new a();
                long currentTimeMillis = System.currentTimeMillis();
                String a10 = g.a(context);
                String b10 = g.b(context);
                aVar.i(a10);
                aVar.j(a10);
                aVar.h(currentTimeMillis);
                aVar.k(b10);
                aVar.l(e4);
                aVar.g(c(aVar));
                return aVar;
            }
        }
        return null;
    }

    public static synchronized a b(Context context) {
        synchronized (b.class) {
            a aVar = f55893a;
            if (aVar != null) {
                return aVar;
            }
            if (context != null) {
                a a10 = a(context);
                f55893a = a10;
                return a10;
            }
            return null;
        }
    }

    static long c(a aVar) {
        if (aVar != null) {
            String format = String.format("%s%s%s%s%s", aVar.f(), aVar.c(), Long.valueOf(aVar.b()), aVar.e(), aVar.d());
            if (i.c(format)) {
                return 0L;
            }
            Adler32 adler32 = new Adler32();
            adler32.reset();
            adler32.update(format.getBytes());
            return adler32.getValue();
        }
        return 0L;
    }
}
