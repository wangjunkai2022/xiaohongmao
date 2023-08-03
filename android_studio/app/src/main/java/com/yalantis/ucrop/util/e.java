package com.yalantis.ucrop.util;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;

/* compiled from: FileUtils.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61120a = "FileUtils";

    private e() {
    }

    public static void a(@NonNull Context context, @NonNull Uri uri, @NonNull Uri uri2) throws IOException {
        OutputStream outputStream;
        InputStream openInputStream;
        if (uri.equals(uri2)) {
            return;
        }
        InputStream inputStream = null;
        try {
            openInputStream = context.getContentResolver().openInputStream(uri);
        } catch (Throwable th) {
            th = th;
            outputStream = null;
        }
        try {
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri2);
            if ((openInputStream instanceof FileInputStream) && (openOutputStream instanceof FileOutputStream)) {
                FileChannel channel = ((FileInputStream) openInputStream).getChannel();
                channel.transferTo(0L, channel.size(), ((FileOutputStream) openOutputStream).getChannel());
                if (openInputStream != null) {
                    openInputStream.close();
                }
                if (openOutputStream != null) {
                    openOutputStream.close();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("The input or output URI don't represent a file. uCrop requires then to represent files in order to work properly.");
        } catch (Throwable th2) {
            th = th2;
            inputStream = openInputStream;
            outputStream = null;
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    public static void b(@NonNull String str, @NonNull String str2) throws IOException {
        FileChannel fileChannel;
        FileChannel channel;
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel fileChannel2 = null;
        try {
            File file = new File(str);
            channel = h.b.a(new FileInputStream(file), file).getChannel();
        } catch (Throwable th) {
            th = th;
            fileChannel = null;
        }
        try {
            File file2 = new File(str2);
            fileChannel2 = l.b.a(new FileOutputStream(file2), file2).getChannel();
            channel.transferTo(0L, channel.size(), fileChannel2);
            channel.close();
            if (fileChannel2 != null) {
                fileChannel2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            FileChannel fileChannel3 = fileChannel2;
            fileChannel2 = channel;
            fileChannel = fileChannel3;
            if (fileChannel2 != null) {
                fileChannel2.close();
            }
            if (fileChannel != null) {
                fileChannel.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r8 != null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        if (r8 == null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String c(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2f java.lang.IllegalArgumentException -> L31
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2f java.lang.IllegalArgumentException -> L31
            if (r8 == 0) goto L29
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.IllegalArgumentException -> L27 java.lang.Throwable -> L50
            if (r9 == 0) goto L29
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.IllegalArgumentException -> L27 java.lang.Throwable -> L50
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.IllegalArgumentException -> L27 java.lang.Throwable -> L50
            r8.close()
            return r9
        L27:
            r9 = move-exception
            goto L33
        L29:
            if (r8 == 0) goto L4f
        L2b:
            r8.close()
            goto L4f
        L2f:
            r9 = move-exception
            goto L52
        L31:
            r9 = move-exception
            r8 = r7
        L33:
            java.lang.String r10 = "FileUtils"
            java.util.Locale r11 = java.util.Locale.getDefault()     // Catch: java.lang.Throwable -> L50
            java.lang.String r0 = "getDataColumn: _data - [%s]"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L50
            r2 = 0
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L50
            r1[r2] = r9     // Catch: java.lang.Throwable -> L50
            java.lang.String r9 = java.lang.String.format(r11, r0, r1)     // Catch: java.lang.Throwable -> L50
            android.util.Log.i(r10, r9)     // Catch: java.lang.Throwable -> L50
            if (r8 == 0) goto L4f
            goto L2b
        L4f:
            return r7
        L50:
            r9 = move-exception
            r7 = r8
        L52:
            if (r7 == 0) goto L57
            r7.close()
        L57:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.util.e.c(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    @SuppressLint({"NewApi"})
    public static String d(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (f(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
            } else if (e(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                if (!TextUtils.isEmpty(documentId)) {
                    try {
                        return c(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(documentId).longValue()), null, null);
                    } catch (NumberFormatException e4) {
                        Log.i(f61120a, e4.getMessage());
                        return null;
                    }
                }
            } else if (h(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                String str = split2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return c(context, uri2, "_id=?", new String[]{split2[1]});
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if (g(uri)) {
                return uri.getLastPathSegment();
            }
            return c(context, uri, null, null);
        } else if ("file".equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    public static boolean e(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean f(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean g(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean h(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
