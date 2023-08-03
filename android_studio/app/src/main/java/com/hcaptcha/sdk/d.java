package com.hcaptcha.sdk;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.JavascriptInterface;
import com.fasterxml.jackson.databind.ObjectMapper;
import dalvik.system.DexFile;
import edu.umd.cs.findbugs.annotations.Nullable;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import lombok.Generated;
import lombok.NonNull;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
final class d implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final String f38367b = "JSDI";

    /* renamed from: c  reason: collision with root package name */
    private static final String f38368c = "/system/bin/getprop";

    /* renamed from: d  reason: collision with root package name */
    private static final String f38369d = "UTF-8";

    /* renamed from: e  reason: collision with root package name */
    private static String f38370e = "[]";

    /* renamed from: f  reason: collision with root package name */
    private static String f38371f;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f38372a;

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public d(@NonNull Context context) {
        Objects.requireNonNull(context, "context is marked non-null but is null");
        this.f38372a = context;
    }

    public List<String> a(String str, String str2) {
        ArrayList arrayList = new ArrayList(512);
        MessageDigest messageDigest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
        MessageDigest messageDigest2 = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
        MessageDigest messageDigest3 = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
        DexFile dexFile = new DexFile(str2);
        try {
            Enumeration<String> entries = dexFile.entries();
            while (entries.hasMoreElements()) {
                String nextElement = entries.nextElement();
                if (!nextElement.startsWith("com.google.android.") && !nextElement.startsWith("android.")) {
                    if (nextElement.startsWith(str)) {
                        messageDigest2.update(nextElement.getBytes("UTF-8"));
                    } else {
                        messageDigest3.update(nextElement.getBytes("UTF-8"));
                    }
                }
                messageDigest.update(nextElement.getBytes("UTF-8"));
            }
            dexFile.close();
            arrayList.add("sys_" + String.format("%032x", new BigInteger(1, messageDigest.digest())));
            arrayList.add("deps_" + String.format("%032x", new BigInteger(1, messageDigest3.digest())));
            arrayList.add("app_" + String.format("%032x", new BigInteger(1, messageDigest2.digest())));
            arrayList.add("aver_" + Build.VERSION.RELEASE);
            arrayList.add("sdk_" + a.f38365d.replace('.', '_'));
            return arrayList;
        } catch (Throwable th) {
            dexFile.close();
            throw th;
        }
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public Context b() {
        return this.f38372a;
    }

    public Map<String, String> c() {
        HashMap hashMap = new HashMap();
        Process process = null;
        try {
            process = new ProcessBuilder(f38368c).start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    process.destroy();
                    return hashMap;
                } else if (readLine.endsWith("]")) {
                    sb.replace(0, sb.length() == 0 ? 0 : sb.length() - 1, readLine);
                    String[] split = sb.toString().split("]: \\[");
                    String substring = split[0].substring(1);
                    if (substring.startsWith("ro")) {
                        hashMap.put(substring, split[1].substring(0, split[1].length() - 2));
                    }
                } else {
                    sb.append(readLine);
                }
            }
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            Context b10 = b();
            Context b11 = ((d) obj).b();
            return b10 != null ? b10.equals(b11) : b11 == null;
        }
        return false;
    }

    @JavascriptInterface
    public String getDebugInfo() {
        String str = f38370e;
        if (str != null) {
            return str;
        }
        synchronized (this) {
            String str2 = f38370e;
            if (str2 != null) {
                return str2;
            }
            try {
                String writeValueAsString = new ObjectMapper().writeValueAsString(a(this.f38372a.getPackageName(), this.f38372a.getPackageCodePath()));
                f38370e = writeValueAsString;
                return writeValueAsString;
            } catch (IOException | NoSuchAlgorithmException unused) {
                Log.d(f38367b, "Cannot build debugInfo");
                return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            }
        }
    }

    @JavascriptInterface
    public String getSysDebug() {
        String str = f38371f;
        if (str != null) {
            return str;
        }
        synchronized (this) {
            String str2 = f38371f;
            if (str2 != null) {
                return str2;
            }
            try {
                String writeValueAsString = new ObjectMapper().writeValueAsString(c());
                f38371f = writeValueAsString;
                return writeValueAsString;
            } catch (IOException unused) {
                Log.d(f38367b, "Cannot build sysDebug");
                return "{}";
            }
        }
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public int hashCode() {
        Context b10 = b();
        return (b10 == null ? 43 : b10.hashCode()) + 59;
    }

    @edu.umd.cs.findbugs.annotations.NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String toString() {
        return "HCaptchaDebugInfo(context=" + b() + ")";
    }
}
