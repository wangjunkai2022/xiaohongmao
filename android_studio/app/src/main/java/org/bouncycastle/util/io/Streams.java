package org.bouncycastle.util.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public final class Streams {
    private static int BUFFER_SIZE = 4096;

    public static void drain(InputStream inputStream) throws IOException {
        int i4 = BUFFER_SIZE;
        do {
        } while (inputStream.read(new byte[i4], 0, i4) >= 0);
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream) throws IOException {
        pipeAll(inputStream, outputStream, BUFFER_SIZE);
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream, int i4) throws IOException {
        byte[] bArr = new byte[i4];
        while (true) {
            int read = inputStream.read(bArr, 0, i4);
            if (read < 0) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static long pipeAllLimited(InputStream inputStream, long j4, OutputStream outputStream) throws IOException {
        int i4 = BUFFER_SIZE;
        byte[] bArr = new byte[i4];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, i4);
            if (read < 0) {
                return j10;
            }
            long j11 = read;
            if (j4 - j10 < j11) {
                throw new StreamOverflowException("Data Overflow");
            }
            j10 += j11;
            outputStream.write(bArr, 0, read);
        }
    }

    public static byte[] readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAll(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAllLimited(InputStream inputStream, int i4) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAllLimited(inputStream, i4, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i4, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int read = inputStream.read(bArr, i4 + i11, i10 - i11);
            if (read < 0) {
                break;
            }
            i11 += read;
        }
        return i11;
    }

    public static void writeBufTo(ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream) throws IOException {
        byteArrayOutputStream.writeTo(outputStream);
    }
}
