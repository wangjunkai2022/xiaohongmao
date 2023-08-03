package w5;

import com.tao.admin.loglib.TLogApplication;
import io.sentry.instrumentation.file.m;
import io.sentry.instrumentation.file.n;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: FileUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Object f94458a = new Object();

    public static String a() {
        m mVar;
        Throwable th;
        try {
            File file = new File(TLogApplication.getAPP().getFilesDir(), c.f94459e);
            if (file.exists()) {
                long b10 = c.c().b();
                long length = file.length();
                long j4 = length - b10;
                mVar = new m(file);
                try {
                    mVar.skip(Math.max(0L, j4));
                    char[] cArr = new char[(int) Math.min(length, b10)];
                    mVar.read(cArr);
                    String trim = new String(cArr).trim();
                    try {
                        mVar.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    return trim;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        return "";
                    } finally {
                        if (mVar != null) {
                            try {
                                mVar.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                }
            }
            return "";
        } catch (Throwable th3) {
            mVar = null;
            th = th3;
        }
    }

    public static void b(String str) {
        n nVar;
        synchronized (f94458a) {
            try {
                File file = new File(TLogApplication.getAPP().getFilesDir(), c.f94459e);
                if (file.exists()) {
                    if (file.length() > c.c().b()) {
                        nVar = new n(file, false);
                    } else {
                        nVar = new n(file, true);
                    }
                } else {
                    nVar = new n(file, false);
                }
                nVar.write(String.format("[%s] %s", new SimpleDateFormat("MM-dd HH:mm:ss").format(new Date()), str));
                nVar.write(13);
                nVar.write(10);
                nVar.flush();
                nVar.close();
            }
        }
    }
}
