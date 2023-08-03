package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* compiled from: ByteStreams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f10974a = 4096;

    /* compiled from: ByteStreams.java */
    /* renamed from: com.facebook.common.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0082b extends ByteArrayOutputStream {
        private C0082b() {
        }

        void a(byte[] b10, int off) {
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, b10, off, ((ByteArrayOutputStream) this).count);
        }
    }

    private b() {
    }

    public static long a(InputStream from, OutputStream to) throws IOException {
        j.i(from);
        j.i(to);
        byte[] bArr = new byte[4096];
        long j4 = 0;
        while (true) {
            int read = from.read(bArr);
            if (read == -1) {
                return j4;
            }
            to.write(bArr, 0, read);
            j4 += read;
        }
    }

    public static int b(InputStream in, byte[] b10, int off, int len) throws IOException {
        j.i(in);
        j.i(b10);
        if (len >= 0) {
            int i4 = 0;
            while (i4 < len) {
                int read = in.read(b10, off + i4, len - i4);
                if (read == -1) {
                    break;
                }
                i4 += read;
            }
            return i4;
        }
        throw new IndexOutOfBoundsException("len is negative");
    }

    public static void c(InputStream in, byte[] b10, int off, int len) throws IOException {
        int b11 = b(in, b10, off, len);
        if (b11 == len) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + b11 + " bytes; " + len + " bytes expected");
    }

    public static byte[] d(InputStream in) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(in, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] e(InputStream in, int expectedSize) throws IOException {
        byte[] bArr = new byte[expectedSize];
        int i4 = expectedSize;
        while (i4 > 0) {
            int i10 = expectedSize - i4;
            int read = in.read(bArr, i10, i4);
            if (read == -1) {
                return Arrays.copyOf(bArr, i10);
            }
            i4 -= read;
        }
        int read2 = in.read();
        if (read2 == -1) {
            return bArr;
        }
        C0082b c0082b = new C0082b();
        c0082b.write(read2);
        a(in, c0082b);
        byte[] bArr2 = new byte[c0082b.size() + expectedSize];
        System.arraycopy(bArr, 0, bArr2, 0, expectedSize);
        c0082b.a(bArr2, expectedSize);
        return bArr2;
    }
}
