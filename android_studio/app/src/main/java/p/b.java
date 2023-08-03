package p;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f93063b;

    /* renamed from: a  reason: collision with root package name */
    public Context f93064a;

    private b() {
    }

    private static String a(String[] strArr) {
        Process process;
        String str = "";
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(strArr);
            processBuilder.redirectErrorStream(false);
            process = processBuilder.start();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(process.getOutputStream());
                str = new DataInputStream(process.getInputStream()).readLine();
                dataOutputStream.writeBytes("exit\n");
                dataOutputStream.flush();
                process.waitFor();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            process = null;
        }
        try {
            process.destroy();
        } catch (Exception unused3) {
            return str;
        }
    }

    public static b b() {
        if (f93063b == null) {
            f93063b = new b();
        }
        return f93063b;
    }

    public static boolean d() {
        String[] strArr = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i4 = 0; i4 < 5; i4++) {
            try {
                String str = strArr[i4] + "su";
                if (new File(str).exists()) {
                    String a10 = a(new String[]{"ls", "-l", str});
                    if (!TextUtils.isEmpty(a10)) {
                        if (a10.indexOf("root") != a10.lastIndexOf("root")) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private Context f() {
        return this.f93064a;
    }

    private static c g() {
        return c.a();
    }

    public final void c(Context context) {
        this.f93064a = context.getApplicationContext();
    }

    public final String e() {
        try {
            return com.ta.utdid2.device.c.a(this.f93064a);
        } catch (Throwable unused) {
            return "";
        }
    }
}
