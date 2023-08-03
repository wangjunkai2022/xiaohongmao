package io.sentry.vendor;

import java.io.UnsupportedEncodingException;

/* compiled from: Base64.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f84102a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f84103b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f84104c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f84105d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f84106e = 8;

    /* renamed from: f  reason: collision with root package name */
    public static final int f84107f = 16;

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f84108g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* renamed from: io.sentry.vendor.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC0717a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f84109a;

        /* renamed from: b  reason: collision with root package name */
        public int f84110b;

        AbstractC0717a() {
        }

        public abstract int a(int i4);

        public abstract boolean b(byte[] bArr, int i4, int i10, boolean z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* loaded from: classes4.dex */
    public static class b extends AbstractC0717a {

        /* renamed from: f  reason: collision with root package name */
        private static final int[] f84111f = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: g  reason: collision with root package name */
        private static final int[] f84112g = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: h  reason: collision with root package name */
        private static final int f84113h = -1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f84114i = -2;

        /* renamed from: c  reason: collision with root package name */
        private int f84115c;

        /* renamed from: d  reason: collision with root package name */
        private int f84116d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f84117e;

        public b(int i4, byte[] bArr) {
            this.f84109a = bArr;
            this.f84117e = (i4 & 8) == 0 ? f84111f : f84112g;
            this.f84115c = 0;
            this.f84116d = 0;
        }

        @Override // io.sentry.vendor.a.AbstractC0717a
        public int a(int i4) {
            return ((i4 * 3) / 4) + 10;
        }

        @Override // io.sentry.vendor.a.AbstractC0717a
        public boolean b(byte[] bArr, int i4, int i10, boolean z9) {
            int i11 = this.f84115c;
            if (i11 == 6) {
                return false;
            }
            int i12 = i10 + i4;
            int i13 = this.f84116d;
            byte[] bArr2 = this.f84109a;
            int[] iArr = this.f84117e;
            int i14 = i13;
            int i15 = 0;
            int i16 = i11;
            int i17 = i4;
            while (i17 < i12) {
                if (i16 == 0) {
                    while (true) {
                        int i18 = i17 + 4;
                        if (i18 > i12 || (i14 = (iArr[bArr[i17] & 255] << 18) | (iArr[bArr[i17 + 1] & 255] << 12) | (iArr[bArr[i17 + 2] & 255] << 6) | iArr[bArr[i17 + 3] & 255]) < 0) {
                            break;
                        }
                        bArr2[i15 + 2] = (byte) i14;
                        bArr2[i15 + 1] = (byte) (i14 >> 8);
                        bArr2[i15] = (byte) (i14 >> 16);
                        i15 += 3;
                        i17 = i18;
                    }
                    if (i17 >= i12) {
                        break;
                    }
                }
                int i19 = i17 + 1;
                int i20 = iArr[bArr[i17] & 255];
                if (i16 != 0) {
                    if (i16 == 1) {
                        if (i20 < 0) {
                            if (i20 != -1) {
                                this.f84115c = 6;
                                return false;
                            }
                        }
                        i20 |= i14 << 6;
                    } else if (i16 == 2) {
                        if (i20 < 0) {
                            if (i20 == -2) {
                                bArr2[i15] = (byte) (i14 >> 4);
                                i15++;
                                i16 = 4;
                            } else if (i20 != -1) {
                                this.f84115c = 6;
                                return false;
                            }
                        }
                        i20 |= i14 << 6;
                    } else if (i16 != 3) {
                        if (i16 != 4) {
                            if (i16 == 5 && i20 != -1) {
                                this.f84115c = 6;
                                return false;
                            }
                        } else if (i20 == -2) {
                            i16++;
                        } else if (i20 != -1) {
                            this.f84115c = 6;
                            return false;
                        }
                    } else if (i20 >= 0) {
                        int i21 = i20 | (i14 << 6);
                        bArr2[i15 + 2] = (byte) i21;
                        bArr2[i15 + 1] = (byte) (i21 >> 8);
                        bArr2[i15] = (byte) (i21 >> 16);
                        i15 += 3;
                        i14 = i21;
                        i16 = 0;
                    } else if (i20 == -2) {
                        bArr2[i15 + 1] = (byte) (i14 >> 2);
                        bArr2[i15] = (byte) (i14 >> 10);
                        i15 += 2;
                        i16 = 5;
                    } else if (i20 != -1) {
                        this.f84115c = 6;
                        return false;
                    }
                    i16++;
                    i14 = i20;
                } else {
                    if (i20 < 0) {
                        if (i20 != -1) {
                            this.f84115c = 6;
                            return false;
                        }
                    }
                    i16++;
                    i14 = i20;
                }
                i17 = i19;
            }
            if (!z9) {
                this.f84115c = i16;
                this.f84116d = i14;
                this.f84110b = i15;
                return true;
            } else if (i16 != 1) {
                if (i16 == 2) {
                    bArr2[i15] = (byte) (i14 >> 4);
                    i15++;
                } else if (i16 == 3) {
                    int i22 = i15 + 1;
                    bArr2[i15] = (byte) (i14 >> 10);
                    i15 = i22 + 1;
                    bArr2[i22] = (byte) (i14 >> 2);
                } else if (i16 == 4) {
                    this.f84115c = 6;
                    return false;
                }
                this.f84115c = i16;
                this.f84110b = i15;
                return true;
            } else {
                this.f84115c = 6;
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* loaded from: classes4.dex */
    public static class c extends AbstractC0717a {

        /* renamed from: j  reason: collision with root package name */
        public static final int f84118j = 19;

        /* renamed from: k  reason: collision with root package name */
        private static final byte[] f84119k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* renamed from: l  reason: collision with root package name */
        private static final byte[] f84120l = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        /* renamed from: m  reason: collision with root package name */
        static final /* synthetic */ boolean f84121m = false;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f84122c;

        /* renamed from: d  reason: collision with root package name */
        int f84123d;

        /* renamed from: e  reason: collision with root package name */
        private int f84124e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f84125f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f84126g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f84127h;

        /* renamed from: i  reason: collision with root package name */
        private final byte[] f84128i;

        public c(int i4, byte[] bArr) {
            this.f84109a = bArr;
            this.f84125f = (i4 & 1) == 0;
            boolean z9 = (i4 & 2) == 0;
            this.f84126g = z9;
            this.f84127h = (i4 & 4) != 0;
            this.f84128i = (i4 & 8) == 0 ? f84119k : f84120l;
            this.f84122c = new byte[2];
            this.f84123d = 0;
            this.f84124e = z9 ? 19 : -1;
        }

        @Override // io.sentry.vendor.a.AbstractC0717a
        public int a(int i4) {
            return ((i4 * 8) / 5) + 10;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x00e6 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00dd -> B:22:0x008a). Please submit an issue!!! */
        @Override // io.sentry.vendor.a.AbstractC0717a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean b(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 477
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.a.c.b(byte[], int, int, boolean):boolean");
        }
    }

    private a() {
    }

    public static byte[] a(String str, int i4) {
        return b(str.getBytes(), i4);
    }

    public static byte[] b(byte[] bArr, int i4) {
        return c(bArr, 0, bArr.length, i4);
    }

    public static byte[] c(byte[] bArr, int i4, int i10, int i11) {
        b bVar = new b(i11, new byte[(i10 * 3) / 4]);
        if (bVar.b(bArr, i4, i10, true)) {
            int i12 = bVar.f84110b;
            byte[] bArr2 = bVar.f84109a;
            if (i12 == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i12];
            System.arraycopy(bArr2, 0, bArr3, 0, i12);
            return bArr3;
        }
        throw new IllegalArgumentException("bad base-64");
    }

    public static byte[] d(byte[] bArr, int i4) {
        return e(bArr, 0, bArr.length, i4);
    }

    public static byte[] e(byte[] bArr, int i4, int i10, int i11) {
        c cVar = new c(i11, null);
        int i12 = (i10 / 3) * 4;
        if (cVar.f84125f) {
            if (i10 % 3 > 0) {
                i12 += 4;
            }
        } else {
            int i13 = i10 % 3;
            if (i13 == 1) {
                i12 += 2;
            } else if (i13 == 2) {
                i12 += 3;
            }
        }
        if (cVar.f84126g && i10 > 0) {
            i12 += (((i10 - 1) / 57) + 1) * (cVar.f84127h ? 2 : 1);
        }
        cVar.f84109a = new byte[i12];
        cVar.b(bArr, i4, i10, true);
        return cVar.f84109a;
    }

    public static String f(byte[] bArr, int i4) {
        try {
            return new String(d(bArr, i4), "US-ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }

    public static String g(byte[] bArr, int i4, int i10, int i11) {
        try {
            return new String(e(bArr, i4, i10, i11), "US-ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }
}
