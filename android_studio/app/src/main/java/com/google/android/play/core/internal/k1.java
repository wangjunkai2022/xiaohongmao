package com.google.android.play.core.internal;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class k1 {
    public static long a(l1 l1Var, InputStream inputStream, OutputStream outputStream, long j4) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new zzck(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read != 4) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Unexpected version=");
            sb.append(read);
            throw new zzck(sb.toString());
        }
        long j10 = 0;
        while (true) {
            long j11 = j4 - j10;
            try {
                int read2 = dataInputStream.read();
                if (read2 == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (read2 == 0) {
                    return j10;
                }
                switch (read2) {
                    case 247:
                        read2 = dataInputStream.readUnsignedShort();
                        c(bArr, dataInputStream, outputStream, read2, j11);
                        break;
                    case 248:
                        read2 = dataInputStream.readInt();
                        c(bArr, dataInputStream, outputStream, read2, j11);
                        break;
                    case 249:
                        long readUnsignedShort = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.read();
                        if (read2 != -1) {
                            b(bArr, l1Var, outputStream, readUnsignedShort, read2, j11);
                            break;
                        } else {
                            throw new IOException("Unexpected end of patch");
                        }
                    case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                        read2 = dataInputStream.readUnsignedShort();
                        b(bArr, l1Var, outputStream, dataInputStream.readUnsignedShort(), read2, j11);
                        break;
                    case 251:
                        read2 = dataInputStream.readInt();
                        b(bArr, l1Var, outputStream, dataInputStream.readUnsignedShort(), read2, j11);
                        break;
                    case 252:
                        long readInt2 = dataInputStream.readInt();
                        read2 = dataInputStream.read();
                        if (read2 != -1) {
                            b(bArr, l1Var, outputStream, readInt2, read2, j11);
                            break;
                        } else {
                            throw new IOException("Unexpected end of patch");
                        }
                    case 253:
                        read2 = dataInputStream.readUnsignedShort();
                        b(bArr, l1Var, outputStream, dataInputStream.readInt(), read2, j11);
                        break;
                    case 254:
                        read2 = dataInputStream.readInt();
                        b(bArr, l1Var, outputStream, dataInputStream.readInt(), read2, j11);
                        break;
                    case 255:
                        long readLong = dataInputStream.readLong();
                        read2 = dataInputStream.readInt();
                        b(bArr, l1Var, outputStream, readLong, read2, j11);
                        break;
                    default:
                        c(bArr, dataInputStream, outputStream, read2, j11);
                        break;
                }
                j10 += read2;
            } finally {
                outputStream.flush();
            }
        }
    }

    private static void b(byte[] bArr, l1 l1Var, OutputStream outputStream, long j4, int i4, long j10) throws IOException {
        int i10 = i4;
        if (i10 < 0) {
            throw new IOException("copyLength negative");
        }
        if (j4 < 0) {
            throw new IOException("inputOffset negative");
        }
        long j11 = i10;
        if (j11 <= j10) {
            try {
                InputStream d4 = new m1(l1Var, j4, j11).d();
                while (i10 > 0) {
                    int min = Math.min(i10, 16384);
                    int i11 = 0;
                    while (i11 < min) {
                        int read = d4.read(bArr, i11, min - i11);
                        if (read == -1) {
                            throw new IOException("truncated input stream");
                        }
                        i11 += read;
                    }
                    outputStream.write(bArr, 0, min);
                    i10 -= min;
                }
                d4.close();
                return;
            } catch (EOFException e4) {
                throw new IOException("patch underrun", e4);
            }
        }
        throw new IOException("Output length overrun");
    }

    private static void c(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i4, long j4) throws IOException {
        if (i4 < 0) {
            throw new IOException("copyLength negative");
        }
        if (i4 > j4) {
            throw new IOException("Output length overrun");
        }
        while (i4 > 0) {
            try {
                int min = Math.min(i4, 16384);
                dataInputStream.readFully(bArr, 0, min);
                outputStream.write(bArr, 0, min);
                i4 -= min;
            } catch (EOFException unused) {
                throw new IOException("patch underrun");
            }
        }
    }
}
