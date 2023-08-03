package org.bouncycastle.crypto.prng;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class VMPCRandomGenerator implements RandomGenerator {

    /* renamed from: n  reason: collision with root package name */
    private byte f91348n = 0;
    private byte[] P = {a.f13999j, 44, 98, Byte.MAX_VALUE, -75, -86, -44, c.f32108o, -127, -2, -78, -126, -53, -96, -95, 8, c.B, 113, 86, -24, 73, 2, 16, -60, -34, 53, -91, -20, Byte.MIN_VALUE, c.f32114u, -72, 105, -38, 47, 117, -52, -94, 9, 54, 3, 97, 45, -3, -32, -35, 5, 67, -112, -83, -56, -31, -81, 87, -101, 76, -40, 81, -82, 80, -123, 60, 10, -28, -13, -100, 38, 35, 83, -55, -125, -105, 70, -79, -103, 100, 49, 119, -43, c.G, -42, 120, -67, 94, -80, -118, 34, 56, -8, 104, 43, 42, -59, -45, -9, PSSSigner.TRAILER_IMPLICIT, 111, -33, 4, -27, -107, 62, 37, -122, -90, c.f32106m, -113, -15, 36, c.f32109p, -41, k.f34876a, -77, -49, 126, 6, c.f32118y, -102, 77, c.F, -93, -37, 50, -110, 88, 17, 39, -12, 89, -48, 78, 106, c.A, 91, -84, -1, 7, -64, 101, 121, -4, -57, -51, 118, 66, 93, -25, 58, 52, 122, 48, 40, c.f32110q, 115, 1, -7, -47, -46, c.C, -23, -111, -71, 90, -19, 65, 109, -76, -61, -98, a.f14000k, 99, -6, c.I, 51, 96, 71, -119, -16, -106, c.D, 95, -109, 61, 55, 75, -39, -88, -63, c.E, -10, 57, -117, -73, c.f32107n, 32, -50, -120, 110, -74, 116, -114, -115, c.f32119z, 41, -14, -121, -11, -21, 112, -29, -5, 85, -97, -58, 68, 74, 69, 125, -30, 107, 92, 108, 102, -87, -116, -18, -124, 19, -89, c.H, -99, -36, 103, 72, -70, 46, -26, -92, -85, 124, -108, 0, 33, a.f13998i, -22, -66, -54, 114, 79, 82, -104, Utf8.REPLACEMENT_BYTE, -62, c.f32117x, 123, 59, 84};

    /* renamed from: s  reason: collision with root package name */
    private byte f91349s = -66;

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j4) {
        addSeedMaterial(Pack.longToBigEndian(j4));
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        for (byte b10 : bArr) {
            byte[] bArr2 = this.P;
            byte b11 = this.f91349s;
            byte b12 = this.f91348n;
            byte b13 = bArr2[(b11 + bArr2[b12 & 255] + b10) & 255];
            this.f91349s = b13;
            byte b14 = bArr2[b12 & 255];
            bArr2[b12 & 255] = bArr2[b13 & 255];
            bArr2[b13 & 255] = b14;
            this.f91348n = (byte) ((b12 + 1) & 255);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i4, int i10) {
        synchronized (this.P) {
            int i11 = i10 + i4;
            while (i4 != i11) {
                byte[] bArr2 = this.P;
                byte b10 = this.f91349s;
                byte b11 = this.f91348n;
                byte b12 = bArr2[(b10 + bArr2[b11 & 255]) & 255];
                this.f91349s = b12;
                bArr[i4] = bArr2[(bArr2[bArr2[b12 & 255] & 255] + 1) & 255];
                byte b13 = bArr2[b11 & 255];
                bArr2[b11 & 255] = bArr2[b12 & 255];
                bArr2[b12 & 255] = b13;
                this.f91348n = (byte) ((b11 + 1) & 255);
                i4++;
            }
        }
    }
}
