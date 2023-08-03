package com.google.android.exoplayer2.upstream.crypto;

import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AesFlushingCipher.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Cipher f27215a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27216b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27217c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f27218d;

    /* renamed from: e  reason: collision with root package name */
    private int f27219e;

    public c(int i4, byte[] bArr, long j4, long j10) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.f27215a = cipher;
            int blockSize = cipher.getBlockSize();
            this.f27216b = blockSize;
            this.f27217c = new byte[blockSize];
            this.f27218d = new byte[blockSize];
            int i10 = (int) (j10 % blockSize);
            cipher.init(i4, new SecretKeySpec(bArr, z0.m1(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(a(j4, j10 / blockSize)));
            if (i10 != 0) {
                d(new byte[i10], 0, i10);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e4) {
            throw new RuntimeException(e4);
        }
    }

    private byte[] a(long j4, long j10) {
        return ByteBuffer.allocate(16).putLong(j4).putLong(j10).array();
    }

    private int b(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        try {
            return this.f27215a.update(bArr, i4, i10, bArr2, i11);
        } catch (ShortBufferException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void c(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        int i12 = i4;
        do {
            int i13 = this.f27219e;
            if (i13 > 0) {
                bArr2[i11] = (byte) (bArr[i12] ^ this.f27218d[this.f27216b - i13]);
                i11++;
                i12++;
                this.f27219e = i13 - 1;
                i10--;
            } else {
                int b10 = b(bArr, i12, i10, bArr2, i11);
                if (i10 == b10) {
                    return;
                }
                int i14 = i10 - b10;
                int i15 = 0;
                com.google.android.exoplayer2.util.a.i(i14 < this.f27216b);
                int i16 = i11 + b10;
                int i17 = this.f27216b - i14;
                this.f27219e = i17;
                com.google.android.exoplayer2.util.a.i(b(this.f27217c, 0, i17, this.f27218d, 0) == this.f27216b);
                while (i15 < i14) {
                    bArr2[i16] = this.f27218d[i15];
                    i15++;
                    i16++;
                }
                return;
            }
        } while (i10 != 0);
    }

    public void d(byte[] bArr, int i4, int i10) {
        c(bArr, i4, i10, bArr, i4);
    }
}
