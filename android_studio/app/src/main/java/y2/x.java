package y2;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.io.BufferedReader;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class x {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private static String f94728a;

    /* renamed from: b  reason: collision with root package name */
    private static int f94729b;

    private x() {
    }

    @Nullable
    @u2.a
    public static String a() {
        BufferedReader bufferedReader;
        String sb;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        if (f94728a == null) {
            int i4 = f94729b;
            if (i4 == 0) {
                i4 = Process.myPid();
                f94729b = i4;
            }
            String str = null;
            str = null;
            str = null;
            BufferedReader bufferedReader2 = null;
            if (i4 > 0) {
                try {
                    StringBuilder sb2 = new StringBuilder(25);
                    sb2.append("/proc/");
                    sb2.append(i4);
                    sb2.append("/cmdline");
                    sb = sb2.toString();
                    allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                } catch (IOException unused) {
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    bufferedReader = new BufferedReader(new io.sentry.instrumentation.file.m(sb));
                    try {
                        String readLine = bufferedReader.readLine();
                        com.google.android.gms.common.internal.u.k(readLine);
                        str = readLine.trim();
                    } catch (IOException unused2) {
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader2 = bufferedReader;
                        q.b(bufferedReader2);
                        throw th;
                    }
                    q.b(bufferedReader);
                } finally {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
            f94728a = str;
        }
        return f94728a;
    }
}
