package com.google.android.play.core.assetpacks;

import android.util.Base64;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class a3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[8192];
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            FileInputStream a10 = h.b.a(new FileInputStream(file), file);
            do {
                try {
                    read = a10.read(bArr);
                    if (read > 0) {
                        messageDigest.update(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    try {
                        a10.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } while (read != -1);
            a10.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }
}
