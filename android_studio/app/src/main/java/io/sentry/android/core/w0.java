package io.sentry.android.core;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.UUID;

/* compiled from: Installation.java */
/* loaded from: classes4.dex */
final class w0 {
    @m8.h
    @m8.k

    /* renamed from: a  reason: collision with root package name */
    static String f82608a = null;
    @m8.k

    /* renamed from: b  reason: collision with root package name */
    static final String f82609b = "INSTALLATION";

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f82610c = Charset.forName("UTF-8");

    private w0() {
    }

    public static synchronized String a(@m8.g Context context) throws RuntimeException {
        synchronized (w0.class) {
            if (f82608a == null) {
                File file = new File(context.getFilesDir(), f82609b);
                if (!file.exists()) {
                    String c10 = c(file);
                    f82608a = c10;
                    return c10;
                }
                f82608a = b(file);
            }
            return f82608a;
        }
    }

    @m8.g
    @m8.k
    static String b(@m8.g File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            byte[] bArr = new byte[(int) randomAccessFile.length()];
            randomAccessFile.readFully(bArr);
            String str = new String(bArr, f82610c);
            randomAccessFile.close();
            return str;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @m8.g
    @m8.k
    static String c(@m8.g File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            String uuid = UUID.randomUUID().toString();
            fileOutputStream.write(uuid.getBytes(f82610c));
            fileOutputStream.flush();
            fileOutputStream.close();
            return uuid;
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
