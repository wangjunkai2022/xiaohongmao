package com.bumptech.glide.integration.webp.decoder;

import android.util.Log;
import io.sentry.protocol.y;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8402a = "Utils";

    h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i4, int i10, int i11, int i12) {
        int min = Math.min(i10 / i12, i4 / i11);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable(f8402a, 2) && max > 1) {
            Log.v(f8402a, "Downsampling WEBP, sampleSize: " + max + ", target dimens: [" + i11 + y.b.f83919g + i12 + "], actual dimens: [" + i4 + y.b.f83919g + i10 + "]");
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e4) {
            if (Log.isLoggable(f8402a, 5)) {
                Log.w(f8402a, "Error reading data from stream", e4);
                return null;
            }
            return null;
        }
    }
}
