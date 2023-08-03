package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Files.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f {
    private f() {
    }

    static byte[] a(InputStream in, long expectedSize) throws IOException {
        if (expectedSize <= 2147483647L) {
            if (expectedSize == 0) {
                return b.d(in);
            }
            return b.e(in, (int) expectedSize);
        }
        throw new OutOfMemoryError("file is too large to fit in a byte array: " + expectedSize + " bytes");
    }

    public static byte[] b(File file) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = h.b.a(new FileInputStream(file), file);
            byte[] a10 = a(fileInputStream, fileInputStream.getChannel().size());
            fileInputStream.close();
            return a10;
        } catch (Throwable th) {
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }
}
