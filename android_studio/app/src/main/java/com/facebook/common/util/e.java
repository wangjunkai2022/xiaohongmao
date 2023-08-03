package com.facebook.common.util;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamUtil.java */
    /* loaded from: classes.dex */
    public static class a extends ByteArrayOutputStream {
        a(int x02) {
            super(x02);
        }

        @Override // java.io.ByteArrayOutputStream
        public byte[] toByteArray() {
            int i4 = ((ByteArrayOutputStream) this).count;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            return i4 == bArr.length ? bArr : super.toByteArray();
        }
    }

    public static byte[] a(final InputStream is) throws IOException {
        return b(is, is.available());
    }

    public static byte[] b(InputStream inputStream, int hint) throws IOException {
        a aVar = new a(hint);
        com.facebook.common.internal.b.a(inputStream, aVar);
        return aVar.toByteArray();
    }

    public static long c(final InputStream inputStream, final long bytesCount) throws IOException {
        j.i(inputStream);
        j.d(Boolean.valueOf(bytesCount >= 0));
        long j4 = bytesCount;
        while (j4 > 0) {
            long skip = inputStream.skip(j4);
            if (skip <= 0) {
                if (inputStream.read() == -1) {
                    return bytesCount - j4;
                }
                skip = 1;
            }
            j4 -= skip;
        }
        return bytesCount;
    }
}
