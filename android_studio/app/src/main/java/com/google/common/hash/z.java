package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Murmur3_32HashFunction.java */
@Immutable
/* loaded from: classes2.dex */
public final class z extends c implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    static final m f34374b = new z(0);

    /* renamed from: c  reason: collision with root package name */
    static final m f34375c = new z(o.f34322a);

    /* renamed from: d  reason: collision with root package name */
    private static final int f34376d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f34377e = -862048943;

    /* renamed from: f  reason: collision with root package name */
    private static final int f34378f = 461845907;

    /* renamed from: g  reason: collision with root package name */
    private static final long f34379g = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f34380a;

    /* compiled from: Murmur3_32HashFunction.java */
    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    private static final class a extends d {

        /* renamed from: a  reason: collision with root package name */
        private int f34381a;

        /* renamed from: b  reason: collision with root package name */
        private long f34382b;

        /* renamed from: c  reason: collision with root package name */
        private int f34383c;

        /* renamed from: d  reason: collision with root package name */
        private int f34384d = 0;

        /* renamed from: e  reason: collision with root package name */
        private boolean f34385e = false;

        a(int i4) {
            this.f34381a = i4;
        }

        private void j(int i4, long j4) {
            long j10 = this.f34382b;
            int i10 = this.f34383c;
            long j11 = ((j4 & 4294967295L) << i10) | j10;
            this.f34382b = j11;
            int i11 = i10 + (i4 * 8);
            this.f34383c = i11;
            this.f34384d += i4;
            if (i11 >= 32) {
                this.f34381a = z.z(this.f34381a, z.A((int) j11));
                this.f34382b >>>= 32;
                this.f34383c -= 32;
            }
        }

        @Override // com.google.common.hash.n
        public l i() {
            com.google.common.base.a0.g0(!this.f34385e);
            this.f34385e = true;
            int A = this.f34381a ^ z.A((int) this.f34382b);
            this.f34381a = A;
            return z.x(A, this.f34384d);
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n b(char c10) {
            j(2, c10);
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n c(byte b10) {
            j(1, b10 & 255);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n e(byte[] bArr, int i4, int i10) {
            com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
            int i11 = 0;
            while (true) {
                int i12 = i11 + 4;
                if (i12 > i10) {
                    break;
                }
                j(4, z.y(bArr, i11 + i4));
                i11 = i12;
            }
            while (i11 < i10) {
                c(bArr[i4 + i11]);
                i11++;
            }
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n f(ByteBuffer byteBuffer) {
            ByteOrder order = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                putInt(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                c(byteBuffer.get());
            }
            byteBuffer.order(order);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n g(CharSequence charSequence, Charset charset) {
            if (com.google.common.base.e.f32190c.equals(charset)) {
                int length = charSequence.length();
                int i4 = 0;
                while (true) {
                    int i10 = i4 + 4;
                    if (i10 > length) {
                        break;
                    }
                    char charAt = charSequence.charAt(i4);
                    char charAt2 = charSequence.charAt(i4 + 1);
                    char charAt3 = charSequence.charAt(i4 + 2);
                    char charAt4 = charSequence.charAt(i4 + 3);
                    if (charAt >= 128 || charAt2 >= 128 || charAt3 >= 128 || charAt4 >= 128) {
                        break;
                    }
                    j(4, (charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24));
                    i4 = i10;
                }
                while (i4 < length) {
                    char charAt5 = charSequence.charAt(i4);
                    if (charAt5 < 128) {
                        j(1, charAt5);
                    } else if (charAt5 < 2048) {
                        j(2, z.v(charAt5));
                    } else if (charAt5 >= 55296 && charAt5 <= 57343) {
                        int codePointAt = Character.codePointAt(charSequence, i4);
                        if (codePointAt == charAt5) {
                            a(charSequence.subSequence(i4, length).toString().getBytes(charset));
                            return this;
                        }
                        i4++;
                        j(4, z.w(codePointAt));
                    } else {
                        j(3, z.u(charAt5));
                    }
                    i4++;
                }
                return this;
            }
            return super.g(charSequence, charset);
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n putInt(int i4) {
            j(4, i4);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n putLong(long j4) {
            j(4, (int) j4);
            j(4, j4 >>> 32);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(int i4) {
        this.f34380a = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int A(int i4) {
        return Integer.rotateLeft(i4 * f34377e, 15) * f34378f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long u(char c10) {
        return (((c10 & '?') | 128) << 16) | (((c10 >>> '\f') | 480) & 255) | ((((c10 >>> 6) & 63) | 128) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long v(char c10) {
        return (((c10 & '?') | 128) << 8) | (((c10 >>> 6) | 960) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long w(int i4) {
        return (((i4 >>> 18) | 240) & 255) | ((((i4 >>> 12) & 63) | 128) << 8) | ((((i4 >>> 6) & 63) | 128) << 16) | (((i4 & 63) | 128) << 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static l x(int i4, int i10) {
        int i11 = i4 ^ i10;
        int i12 = (i11 ^ (i11 >>> 16)) * (-2048144789);
        int i13 = (i12 ^ (i12 >>> 13)) * (-1028477387);
        return l.k(i13 ^ (i13 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int y(byte[] bArr, int i4) {
        return com.google.common.primitives.f.k(bArr[i4 + 3], bArr[i4 + 2], bArr[i4 + 1], bArr[i4]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int z(int i4, int i10) {
        return (Integer.rotateLeft(i4 ^ i10, 13) * 5) - 430675100;
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l a(CharSequence charSequence, Charset charset) {
        if (com.google.common.base.e.f32190c.equals(charset)) {
            int length = charSequence.length();
            int i4 = this.f34380a;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int i13 = i11 + 4;
                if (i13 > length) {
                    break;
                }
                char charAt = charSequence.charAt(i11);
                char charAt2 = charSequence.charAt(i11 + 1);
                char charAt3 = charSequence.charAt(i11 + 2);
                char charAt4 = charSequence.charAt(i11 + 3);
                if (charAt >= 128 || charAt2 >= 128 || charAt3 >= 128 || charAt4 >= 128) {
                    break;
                }
                i4 = z(i4, A((charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24)));
                i12 += 4;
                i11 = i13;
            }
            long j4 = 0;
            while (i11 < length) {
                char charAt5 = charSequence.charAt(i11);
                if (charAt5 < 128) {
                    j4 |= charAt5 << i10;
                    i10 += 8;
                    i12++;
                } else if (charAt5 < 2048) {
                    j4 |= v(charAt5) << i10;
                    i10 += 16;
                    i12 += 2;
                } else if (charAt5 >= 55296 && charAt5 <= 57343) {
                    int codePointAt = Character.codePointAt(charSequence, i11);
                    if (codePointAt == charAt5) {
                        return e(charSequence.toString().getBytes(charset));
                    }
                    i11++;
                    j4 |= w(codePointAt) << i10;
                    i12 += 4;
                } else {
                    j4 |= u(charAt5) << i10;
                    i10 += 24;
                    i12 += 3;
                }
                if (i10 >= 32) {
                    i4 = z(i4, A((int) j4));
                    j4 >>>= 32;
                    i10 -= 32;
                }
                i11++;
            }
            return x(A((int) j4) ^ i4, i12);
        }
        return e(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l b(CharSequence charSequence) {
        int i4 = this.f34380a;
        for (int i10 = 1; i10 < charSequence.length(); i10 += 2) {
            i4 = z(i4, A(charSequence.charAt(i10 - 1) | (charSequence.charAt(i10) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            i4 ^= A(charSequence.charAt(charSequence.length() - 1));
        }
        return x(i4, charSequence.length() * 2);
    }

    @Override // com.google.common.hash.m
    public int c() {
        return 32;
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof z) && this.f34380a == ((z) obj).f34380a;
    }

    @Override // com.google.common.hash.m
    public n h() {
        return new a(this.f34380a);
    }

    public int hashCode() {
        return z.class.hashCode() ^ this.f34380a;
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l i(int i4) {
        return x(z(this.f34380a, A(i4)), 4);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l l(long j4) {
        int i4 = (int) (j4 >>> 32);
        return x(z(z(this.f34380a, A((int) j4)), A(i4)), 8);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l m(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        int i11 = this.f34380a;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i13 + 4;
            if (i14 > i10) {
                break;
            }
            i11 = z(i11, A(y(bArr, i13 + i4)));
            i13 = i14;
        }
        int i15 = i13;
        int i16 = 0;
        while (i15 < i10) {
            i12 ^= com.google.common.primitives.l.p(bArr[i4 + i15]) << i16;
            i15++;
            i16 += 8;
        }
        return x(A(i12) ^ i11, i10);
    }

    public String toString() {
        return "Hashing.murmur3_32(" + this.f34380a + ")";
    }
}
