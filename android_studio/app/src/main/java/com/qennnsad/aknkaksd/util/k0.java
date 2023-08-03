package com.qennnsad.aknkaksd.util;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import okhttp3.ResponseBody;

/* compiled from: FileUtils.java */
/* loaded from: classes3.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f54779a = "k0";

    /* renamed from: b  reason: collision with root package name */
    private static final String f54780b = Environment.getExternalStorageDirectory() + "/mypic_data/";

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Integer> f54781c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    private static f5.e f54782d;

    public static void d(String str, String str2) {
        if (s(new File(str))) {
            try {
                FileInputStream d4 = h.b.d(new FileInputStream(str), str);
                FileOutputStream d10 = l.b.d(new FileOutputStream(str2), str2);
                byte[] bArr = new byte[1444];
                int i4 = 0;
                while (true) {
                    int read = d4.read(bArr);
                    if (read != -1) {
                        i4 += read;
                        d10.write(bArr, 0, read);
                    } else {
                        d10.close();
                        d4.close();
                        String str3 = f54779a;
                        o0.a(str3, "拷贝文件成功,文件总大小为：" + i4 + "字节");
                        return;
                    }
                }
            } catch (IOException e4) {
                String str4 = f54779a;
                o0.c(str4, "拷贝文件出错：" + e4.toString());
                e4.printStackTrace();
            }
        } else {
            o0.n(f54779a, "拷贝文件出错：源文件不存在！");
        }
    }

    public static void e(String str, String str2) {
        File file;
        try {
            new File(str2).mkdirs();
            String[] list = new File(str).list();
            for (int i4 = 0; i4 < list.length; i4++) {
                String str3 = File.separator;
                if (str.endsWith(str3)) {
                    file = new File(str + list[i4]);
                } else {
                    file = new File(str + str3 + list[i4]);
                }
                if (file.isFile()) {
                    FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                    String str4 = str2 + "/" + file.getName().toString();
                    FileOutputStream d4 = l.b.d(new FileOutputStream(str4), str4);
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int read = a10.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        d4.write(bArr, 0, read);
                    }
                    d4.flush();
                    d4.close();
                    a10.close();
                }
                if (file.isDirectory()) {
                    e(str + "/" + list[i4], str2 + "/" + list[i4]);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static File f(String str) {
        File file = new File(str);
        if (!s(file)) {
            file.mkdirs();
        }
        return file;
    }

    public static File g(String str, String str2) {
        File file = new File(f(str), str2);
        if (!s(file)) {
            try {
                file.createNewFile();
            } catch (IOException e4) {
                String str3 = f54779a;
                o0.c(str3, "创建文件出错：" + e4.toString());
                e4.printStackTrace();
            }
        }
        return file;
    }

    public static boolean h(String str) {
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            boolean z9 = true;
            for (int i4 = 0; i4 < listFiles.length; i4++) {
                if (listFiles[i4].isFile()) {
                    z9 = i(listFiles[i4].getAbsolutePath());
                    if (!z9) {
                        break;
                    }
                } else {
                    z9 = h(listFiles[i4].getAbsolutePath());
                    if (!z9) {
                        break;
                    }
                }
            }
            if (z9) {
                return file.delete();
            }
            return false;
        }
        return false;
    }

    public static boolean i(String str) {
        File file = new File(str);
        if (file.isFile() && s(file)) {
            return file.delete();
        }
        return false;
    }

    public static boolean j(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                return i(str);
            }
            return h(str);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r8 != null) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String k(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) throws java.lang.SecurityException {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r8 == 0) goto L29
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L43
            if (r9 == 0) goto L29
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L43
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L43
            r8.close()
            return r9
        L27:
            r9 = move-exception
            goto L33
        L29:
            if (r8 == 0) goto L41
        L2b:
            r8.close()
            goto L41
        L2f:
            r9 = move-exception
            goto L45
        L31:
            r9 = move-exception
            r8 = r7
        L33:
            com.qennnsad.aknkaksd.analytics.error.b r10 = com.qennnsad.aknkaksd.analytics.error.a.a()     // Catch: java.lang.Throwable -> L43
            r10.b(r9)     // Catch: java.lang.Throwable -> L43
            boolean r10 = r9 instanceof java.lang.SecurityException     // Catch: java.lang.Throwable -> L43
            if (r10 != 0) goto L42
            if (r8 == 0) goto L41
            goto L2b
        L41:
            return r7
        L42:
            throw r9     // Catch: java.lang.Throwable -> L43
        L43:
            r9 = move-exception
            r7 = r8
        L45:
            if (r7 == 0) goto L4a
            r7.close()
        L4a:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.k0.k(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static int l(String str) {
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int i4 = 0;
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    i4++;
                }
            }
            return i4;
        }
        return 0;
    }

    public static String m(String str) {
        return str.indexOf("/") != -1 ? str.substring(str.lastIndexOf("/")).replace("/", "") : str;
    }

    public static String n(Context context, Uri uri) throws SecurityException {
        Uri uri2 = null;
        if (uri == null) {
            return null;
        }
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (t(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
            } else if (r(uri)) {
                return k(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(DocumentsContract.getDocumentId(uri))), null, null);
            } else {
                if (u(uri)) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return k(context, uri2, "_id=?", new String[]{split2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            return k(context, uri, null, null);
        } else {
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static File o(Context context, String str) {
        try {
            for (String str2 : context.fileList()) {
                if (str2.equals(str)) {
                    return context.getFileStreamPath(str);
                }
            }
            return null;
        } catch (Exception e4) {
            o0.d(f54779a, "Error getting svga from cache " + str, e4);
            return null;
        }
    }

    public static String p(int i4) {
        return Uri.parse("android.resource://com.didi.live.spring/" + i4).toString();
    }

    public static boolean q(Context context, String str) {
        o0.a(f54779a, "Check cache for svga " + str);
        try {
            for (String str2 : context.fileList()) {
                if (str2.equals(str)) {
                    o0.a(f54779a, "Cache svga exists!");
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        o0.a(f54779a, "Cache does not exists :(");
        return false;
    }

    public static boolean r(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean s(File file) {
        return file.exists();
    }

    public static boolean t(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean u(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(String str, Function1 function1, String str2, io.reactivex.disposables.c cVar) throws Exception {
        Map<String, Integer> map = f54781c;
        Integer num = map.get(str);
        if (num == null) {
            num = 0;
        }
        Integer valueOf = Integer.valueOf(num.intValue() + 1);
        map.put(str, valueOf);
        function1.invoke(0);
        if (valueOf.intValue() > 1) {
            cVar.dispose();
            return;
        }
        o0.a(f54779a, "Loading svga from " + str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer w(Context context, String str, String str2, ResponseBody responseBody) throws Exception {
        try {
            byte[] bytes = responseBody.bytes();
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(bytes);
            openFileOutput.close();
        } catch (IOException e4) {
            String str3 = f54779a;
            o0.d(str3, "Error loading svga from " + str2, e4);
        }
        return f54781c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(Function1 function1, Integer num) throws Exception {
        String str = (String) function1.invoke(num);
        String str2 = f54779a;
        o0.a(str2, "Pending svgas load completed. Count:" + num + "; Svga:" + str);
        f54781c.put(str, null);
    }

    @SuppressLint({"CheckResult"})
    public static void y(final Context context, String str, final String str2, @m8.g final Function1<Integer, String> function1) {
        if (f54782d == null) {
            f54782d = ((f5.d) dagger.hilt.c.a(context.getApplicationContext(), f5.d.class)).c();
        }
        final String i4 = f54782d.g().i(str);
        com.qennnsad.aknkaksd.data.repository.o.a().a(i4).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).doOnSubscribe(new n7.g() { // from class: com.qennnsad.aknkaksd.util.h0
            @Override // n7.g
            public final void accept(Object obj) {
                k0.v(str2, function1, i4, (io.reactivex.disposables.c) obj);
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.util.j0
            @Override // n7.o
            public final Object apply(Object obj) {
                Integer w9;
                w9 = k0.w(context, str2, i4, (ResponseBody) obj);
                return w9;
            }
        }).subscribe(new n7.g() { // from class: com.qennnsad.aknkaksd.util.i0
            @Override // n7.g
            public final void accept(Object obj) {
                k0.x(Function1.this, (Integer) obj);
            }
        });
    }

    public static void z(Bitmap bitmap, String str) throws IOException {
        String str2 = f54780b;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(str2 + str);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(l.b.a(new FileOutputStream(file2), file2));
        if (bitmap != null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream);
        }
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }
}
