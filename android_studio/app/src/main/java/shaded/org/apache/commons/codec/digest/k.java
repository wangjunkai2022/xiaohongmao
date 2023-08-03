package shaded.org.apache.commons.codec.digest;

import java.util.zip.Checksum;

/* compiled from: XXHash32.java */
/* loaded from: classes5.dex */
public class k implements Checksum {

    /* renamed from: g  reason: collision with root package name */
    private static final int f93547g = 16;

    /* renamed from: h  reason: collision with root package name */
    private static final int f93548h = 13;

    /* renamed from: i  reason: collision with root package name */
    private static final int f93549i = -1640531535;

    /* renamed from: j  reason: collision with root package name */
    private static final int f93550j = -2048144777;

    /* renamed from: k  reason: collision with root package name */
    private static final int f93551k = -1028477379;

    /* renamed from: l  reason: collision with root package name */
    private static final int f93552l = 668265263;

    /* renamed from: m  reason: collision with root package name */
    private static final int f93553m = 374761393;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f93554a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f93555b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f93556c;

    /* renamed from: d  reason: collision with root package name */
    private final int f93557d;

    /* renamed from: e  reason: collision with root package name */
    private int f93558e;

    /* renamed from: f  reason: collision with root package name */
    private int f93559f;

    public k() {
        this(0);
    }

    private static long a(byte[] bArr, int i4, int i10) {
        if (i10 <= 8) {
            long j4 = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                j4 |= (bArr[i4 + i11] & 255) << (i11 * 8);
            }
            return j4;
        }
        throw new IllegalArgumentException("can't read more than eight bytes into a long value");
    }

    private static int b(byte[] bArr, int i4) {
        return (int) (a(bArr, i4, 4) & 4294967295L);
    }

    private void c() {
        int[] iArr = this.f93555b;
        int i4 = this.f93557d;
        iArr[0] = i4 + f93549i + f93550j;
        iArr[1] = f93550j + i4;
        iArr[2] = i4;
        iArr[3] = i4 - f93549i;
    }

    private void d(byte[] bArr, int i4) {
        int[] iArr = this.f93555b;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int rotateLeft = Integer.rotateLeft(i10 + (b(bArr, i4) * f93550j), 13) * f93549i;
        int rotateLeft2 = Integer.rotateLeft(i11 + (b(bArr, i4 + 4) * f93550j), 13) * f93549i;
        int rotateLeft3 = Integer.rotateLeft(i12 + (b(bArr, i4 + 8) * f93550j), 13) * f93549i;
        int rotateLeft4 = Integer.rotateLeft(i13 + (b(bArr, i4 + 12) * f93550j), 13) * f93549i;
        int[] iArr2 = this.f93555b;
        iArr2[0] = rotateLeft;
        iArr2[1] = rotateLeft2;
        iArr2[2] = rotateLeft3;
        iArr2[3] = rotateLeft4;
        this.f93559f = 0;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        int i4;
        int i10 = 0;
        if (this.f93558e > 16) {
            i4 = Integer.rotateLeft(this.f93555b[0], 1) + Integer.rotateLeft(this.f93555b[1], 7) + Integer.rotateLeft(this.f93555b[2], 12) + Integer.rotateLeft(this.f93555b[3], 18);
        } else {
            i4 = this.f93555b[2] + f93553m;
        }
        int i11 = i4 + this.f93558e;
        int i12 = this.f93559f - 4;
        while (i10 <= i12) {
            i11 = Integer.rotateLeft(i11 + (b(this.f93556c, i10) * f93551k), 17) * f93552l;
            i10 += 4;
        }
        while (i10 < this.f93559f) {
            i11 = Integer.rotateLeft(i11 + ((this.f93556c[i10] & 255) * f93553m), 11) * f93549i;
            i10++;
        }
        int i13 = (i11 ^ (i11 >>> 15)) * f93550j;
        int i14 = (i13 ^ (i13 >>> 13)) * f93551k;
        return (i14 ^ (i14 >>> 16)) & 4294967295L;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        c();
        this.f93558e = 0;
        this.f93559f = 0;
    }

    @Override // java.util.zip.Checksum
    public void update(int i4) {
        byte[] bArr = this.f93554a;
        bArr[0] = (byte) (i4 & 255);
        update(bArr, 0, 1);
    }

    public k(int i4) {
        this.f93554a = new byte[1];
        this.f93555b = new int[4];
        this.f93556c = new byte[16];
        this.f93557d = i4;
        c();
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i4, int i10) {
        if (i10 <= 0) {
            return;
        }
        this.f93558e += i10;
        int i11 = i4 + i10;
        int i12 = this.f93559f;
        if (i12 + i10 < 16) {
            System.arraycopy(bArr, i4, this.f93556c, i12, i10);
            this.f93559f += i10;
            return;
        }
        if (i12 > 0) {
            int i13 = 16 - i12;
            System.arraycopy(bArr, i4, this.f93556c, i12, i13);
            d(this.f93556c, 0);
            i4 += i13;
        }
        int i14 = i11 - 16;
        while (i4 <= i14) {
            d(bArr, i4);
            i4 += 16;
        }
        if (i4 < i11) {
            int i15 = i11 - i4;
            this.f93559f = i15;
            System.arraycopy(bArr, i4, this.f93556c, 0, i15);
        }
    }
}
