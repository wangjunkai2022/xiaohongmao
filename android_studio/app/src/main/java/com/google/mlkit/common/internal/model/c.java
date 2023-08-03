package com.google.mlkit.common.internal.model;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
@WorkerThread
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35729a = new com.google.android.gms.common.internal.k("ModelUtils", "");

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        @u2.a
        public abstract String a();

        @NonNull
        @u2.a
        public abstract String b();

        @NonNull
        @u2.a
        public abstract String c();
    }

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static abstract class b {
        static b d(long j4, @Nullable String str, boolean z9) {
            return new com.google.mlkit.common.internal.model.b(j4, com.google.android.gms.internal.mlkit_common.e.b(str), z9);
        }

        @NonNull
        @u2.a
        public abstract String a();

        @u2.a
        public abstract long b();

        @u2.a
        public abstract boolean c();
    }

    private c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v2 */
    @androidx.annotation.Nullable
    @u2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.mlkit.common.internal.model.c.b a(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.NonNull com.google.mlkit.common.model.c r12) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.internal.model.c.a(android.content.Context, com.google.mlkit.common.model.c):com.google.mlkit.common.internal.model.c$b");
    }

    @Nullable
    @u2.a
    public static String b(@NonNull File file) {
        try {
            FileInputStream a10 = h.b.a(new FileInputStream(file), file);
            String f10 = f(a10);
            a10.close();
            return f10;
        } catch (IOException e4) {
            f35729a.e("ModelUtils", "Failed to create FileInputStream for model: ".concat(e4.toString()));
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (new java.io.File(r5).exists() == false) goto L5;
     */
    @androidx.annotation.Nullable
    @u2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.mlkit.common.internal.model.c.a c(@androidx.annotation.NonNull java.lang.String r5, boolean r6, @androidx.annotation.NonNull android.content.Context r7) {
        /*
            com.google.android.gms.common.internal.k r0 = com.google.mlkit.common.internal.model.c.f35729a
            java.lang.String r1 = java.lang.String.valueOf(r5)
            java.lang.String r2 = "Manifest file path: "
            java.lang.String r1 = r2.concat(r1)
            java.lang.String r2 = "ModelUtils"
            r0.c(r2, r1)
            r1 = 0
            if (r6 == 0) goto L22
            android.content.res.AssetManager r3 = r7.getAssets()     // Catch: java.io.IOException -> L2d
            java.io.InputStream r3 = r3.open(r5)     // Catch: java.io.IOException -> L2d
            if (r3 == 0) goto L35
            r3.close()     // Catch: java.io.IOException -> L2d
            goto L35
        L22:
            java.io.File r3 = new java.io.File
            r3.<init>(r5)
            boolean r3 = r3.exists()
            if (r3 != 0) goto L35
        L2d:
            com.google.android.gms.common.internal.k r5 = com.google.mlkit.common.internal.model.c.f35729a
            java.lang.String r6 = "Manifest file does not exist."
            r5.e(r2, r6)
            return r1
        L35:
            boolean r3 = r5.isEmpty()     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r4 = 0
            if (r3 == 0) goto L3f
            byte[] r5 = new byte[r4]     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            goto L65
        L3f:
            if (r6 == 0) goto L4a
            android.content.res.AssetManager r6 = r7.getAssets()     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.io.InputStream r5 = r6.open(r5)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            goto L58
        L4a:
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.io.File r7 = new java.io.File     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r7.<init>(r5)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r6.<init>(r7)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.io.FileInputStream r5 = io.sentry.instrumentation.file.h.b.a(r6, r7)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
        L58:
            int r6 = r5.available()     // Catch: java.lang.Throwable -> L9d
            byte[] r7 = new byte[r6]     // Catch: java.lang.Throwable -> L9d
            r5.read(r7, r4, r6)     // Catch: java.lang.Throwable -> L9d
            r5.close()     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r5 = r7
        L65:
            java.lang.String r6 = new java.lang.String     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r7 = "UTF-8"
            r6.<init>(r5, r7)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r5.<init>()     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r7 = "Json string from the manifest file: "
            r5.append(r7)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r5.append(r6)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r5 = r5.toString()     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r0.c(r2, r5)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r5.<init>(r6)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r6 = "modelType"
            java.lang.String r6 = r5.getString(r6)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r7 = "modelFile"
            java.lang.String r7 = r5.getString(r7)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            java.lang.String r0 = "labelsFile"
            java.lang.String r5 = r5.getString(r0)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            com.google.mlkit.common.internal.model.a r0 = new com.google.mlkit.common.internal.model.a     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            r0.<init>(r6, r7, r5)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
            return r0
        L9d:
            r6 = move-exception
            if (r5 == 0) goto La8
            r5.close()     // Catch: java.lang.Throwable -> La4
            goto La8
        La4:
            r5 = move-exception
            com.google.mlkit.common.internal.model.k.a(r6, r5)     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
        La8:
            throw r6     // Catch: java.io.IOException -> La9 org.json.JSONException -> Lab
        La9:
            r5 = move-exception
            goto Lac
        Lab:
            r5 = move-exception
        Lac:
            com.google.android.gms.common.internal.k r6 = com.google.mlkit.common.internal.model.c.f35729a
            java.lang.String r7 = "Error parsing the manifest file."
            r6.f(r2, r7, r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.internal.model.c.c(java.lang.String, boolean, android.content.Context):com.google.mlkit.common.internal.model.c$a");
    }

    public static boolean d(@NonNull File file, @NonNull String str) {
        String b10 = b(file);
        f35729a.c("ModelUtils", "Calculated hash value is: ".concat(String.valueOf(b10)));
        return str.equals(b10);
    }

    @Nullable
    private static String e(Context context, String str, boolean z9) {
        a c10 = c(str, z9, context);
        if (c10 == null) {
            f35729a.e("ModelUtils", "Failed to parse manifest file.");
            return null;
        }
        return new File(new File(str).getParent(), c10.b()).toString();
    }

    @Nullable
    private static String f(InputStream inputStream) {
        int i4;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] bArr = new byte[1048576];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b10 : digest) {
                String hexString = Integer.toHexString(b10 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (IOException unused) {
            f35729a.e("ModelUtils", "Failed to read model file");
            return null;
        } catch (NoSuchAlgorithmException unused2) {
            f35729a.e("ModelUtils", "Do not have SHA-256 algorithm");
            return null;
        }
    }
}
