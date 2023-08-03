package com.ta.utdid2.android.utils;

import java.io.UnsupportedEncodingException;

/* compiled from: Base64.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f55812a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f55813b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f55814c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f55815d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f55816e = 8;

    /* renamed from: f  reason: collision with root package name */
    public static final int f55817f = 16;

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f55818g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* loaded from: classes3.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f55819a;

        /* renamed from: b  reason: collision with root package name */
        public int f55820b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* renamed from: com.ta.utdid2.android.utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0474b extends a {

        /* renamed from: f  reason: collision with root package name */
        private static final int[] f55821f = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: g  reason: collision with root package name */
        private static final int[] f55822g = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: c  reason: collision with root package name */
        private int f55823c;

        /* renamed from: d  reason: collision with root package name */
        private int f55824d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f55825e;

        public C0474b(int i4, byte[] bArr) {
            this.f55819a = bArr;
            this.f55825e = (i4 & 8) == 0 ? f55821f : f55822g;
            this.f55823c = 0;
            this.f55824d = 0;
        }

        public boolean a(byte[] bArr, int i4, int i10, boolean z9) {
            int i11 = this.f55823c;
            if (i11 == 6) {
                return false;
            }
            int i12 = i10 + i4;
            int i13 = this.f55824d;
            byte[] bArr2 = this.f55819a;
            int[] iArr = this.f55825e;
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
                                this.f55823c = 6;
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
                                this.f55823c = 6;
                                return false;
                            }
                        }
                        i20 |= i14 << 6;
                    } else if (i16 != 3) {
                        if (i16 != 4) {
                            if (i16 == 5 && i20 != -1) {
                                this.f55823c = 6;
                                return false;
                            }
                        } else if (i20 == -2) {
                            i16++;
                        } else if (i20 != -1) {
                            this.f55823c = 6;
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
                        this.f55823c = 6;
                        return false;
                    }
                    i16++;
                    i14 = i20;
                } else {
                    if (i20 < 0) {
                        if (i20 != -1) {
                            this.f55823c = 6;
                            return false;
                        }
                    }
                    i16++;
                    i14 = i20;
                }
                i17 = i19;
            }
            if (!z9) {
                this.f55823c = i16;
                this.f55824d = i14;
                this.f55820b = i15;
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
                    this.f55823c = 6;
                    return false;
                }
                this.f55823c = i16;
                this.f55820b = i15;
                return true;
            } else {
                this.f55823c = 6;
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Base64.java */
    /* loaded from: classes3.dex */
    public static class c extends a {

        /* renamed from: j  reason: collision with root package name */
        private static final byte[] f55826j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* renamed from: k  reason: collision with root package name */
        private static final byte[] f55827k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        /* renamed from: l  reason: collision with root package name */
        static final /* synthetic */ boolean f55828l = false;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f55829c;

        /* renamed from: d  reason: collision with root package name */
        int f55830d;

        /* renamed from: e  reason: collision with root package name */
        private int f55831e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f55832f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f55833g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f55834h;

        /* renamed from: i  reason: collision with root package name */
        private final byte[] f55835i;

        public c(int i4, byte[] bArr) {
            this.f55819a = bArr;
            this.f55832f = (i4 & 1) == 0;
            boolean z9 = (i4 & 2) == 0;
            this.f55833g = z9;
            this.f55834h = (i4 & 4) != 0;
            this.f55835i = (i4 & 8) == 0 ? f55826j : f55827k;
            this.f55829c = new byte[2];
            this.f55830d = 0;
            this.f55831e = z9 ? 19 : -1;
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean a(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 477
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.android.utils.b.c.a(byte[], int, int, boolean):boolean");
        }
    }

    private b() {
    }

    public static byte[] a(String str, int i4) {
        return b(str.getBytes(), i4);
    }

    public static byte[] b(byte[] bArr, int i4) {
        return c(bArr, 0, bArr.length, i4);
    }

    public static byte[] c(byte[] bArr, int i4, int i10, int i11) {
        C0474b c0474b = new C0474b(i11, new byte[(i10 * 3) / 4]);
        if (c0474b.a(bArr, i4, i10, true)) {
            int i12 = c0474b.f55820b;
            byte[] bArr2 = c0474b.f55819a;
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
        if (cVar.f55832f) {
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
        if (cVar.f55833g && i10 > 0) {
            i12 += (((i10 - 1) / 57) + 1) * (cVar.f55834h ? 2 : 1);
        }
        cVar.f55819a = new byte[i12];
        cVar.a(bArr, i4, i10, true);
        return cVar.f55819a;
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
