package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.google.android.exoplayer2.analytics.j1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import okio.Utf8;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: UTF8StreamJsonParser.java */
/* loaded from: classes.dex */
public class j extends com.fasterxml.jackson.core.base.b {

    /* renamed from: n3  reason: collision with root package name */
    static final byte f14123n3 = 10;

    /* renamed from: o3  reason: collision with root package name */
    private static final int f14124o3 = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();

    /* renamed from: p3  reason: collision with root package name */
    private static final int f14125p3 = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();

    /* renamed from: q3  reason: collision with root package name */
    private static final int f14126q3 = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();

    /* renamed from: r3  reason: collision with root package name */
    private static final int f14127r3 = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();

    /* renamed from: s3  reason: collision with root package name */
    private static final int f14128s3 = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();

    /* renamed from: t3  reason: collision with root package name */
    private static final int f14129t3 = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();

    /* renamed from: u3  reason: collision with root package name */
    private static final int f14130u3 = JsonParser.Feature.ALLOW_COMMENTS.getMask();

    /* renamed from: v3  reason: collision with root package name */
    private static final int f14131v3 = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();

    /* renamed from: w3  reason: collision with root package name */
    private static final int[] f14132w3 = com.fasterxml.jackson.core.io.b.j();

    /* renamed from: x3  reason: collision with root package name */
    protected static final int[] f14133x3 = com.fasterxml.jackson.core.io.b.h();

    /* renamed from: c3  reason: collision with root package name */
    protected com.fasterxml.jackson.core.h f14134c3;

    /* renamed from: d3  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.sym.a f14135d3;

    /* renamed from: e3  reason: collision with root package name */
    protected int[] f14136e3;

    /* renamed from: f3  reason: collision with root package name */
    protected boolean f14137f3;

    /* renamed from: g3  reason: collision with root package name */
    private int f14138g3;

    /* renamed from: h3  reason: collision with root package name */
    protected int f14139h3;

    /* renamed from: i3  reason: collision with root package name */
    protected int f14140i3;

    /* renamed from: j3  reason: collision with root package name */
    protected int f14141j3;

    /* renamed from: k3  reason: collision with root package name */
    protected InputStream f14142k3;

    /* renamed from: l3  reason: collision with root package name */
    protected byte[] f14143l3;

    /* renamed from: m3  reason: collision with root package name */
    protected boolean f14144m3;

    @Deprecated
    public j(com.fasterxml.jackson.core.io.d dVar, int i4, InputStream inputStream, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.a aVar, byte[] bArr, int i10, int i11, boolean z9) {
        this(dVar, i4, inputStream, hVar, aVar, bArr, i10, i11, 0, z9);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String A4(int[] r17, int r18, int r19) throws com.fasterxml.jackson.core.JsonParseException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.A4(int[], int, int):java.lang.String");
    }

    private final String B4(int i4, int i10) throws JsonParseException {
        int Q3 = Q3(i4, i10);
        String A = this.f14135d3.A(Q3);
        if (A != null) {
            return A;
        }
        int[] iArr = this.f14136e3;
        iArr[0] = Q3;
        return A4(iArr, 1, i10);
    }

    private final String C4(int i4, int i10, int i11) throws JsonParseException {
        int Q3 = Q3(i10, i11);
        String B = this.f14135d3.B(i4, Q3);
        if (B != null) {
            return B;
        }
        int[] iArr = this.f14136e3;
        iArr[0] = i4;
        iArr[1] = Q3;
        return A4(iArr, 2, i11);
    }

    private final String D4(int i4, int i10, int i11, int i12) throws JsonParseException {
        int Q3 = Q3(i11, i12);
        String C = this.f14135d3.C(i4, i10, Q3);
        if (C != null) {
            return C;
        }
        int[] iArr = this.f14136e3;
        iArr[0] = i4;
        iArr[1] = i10;
        iArr[2] = Q3(Q3, i12);
        return A4(iArr, 3, i12);
    }

    private final String E4(int[] iArr, int i4, int i10, int i11) throws JsonParseException {
        if (i4 >= iArr.length) {
            iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
            this.f14136e3 = iArr;
        }
        int i12 = i4 + 1;
        iArr[i4] = Q3(i10, i11);
        String D = this.f14135d3.D(iArr, i12);
        return D == null ? A4(iArr, i12, i11) : D;
    }

    private final boolean F3(int i4, com.fasterxml.jackson.core.j jVar) throws IOException {
        JsonToken V3;
        String U3 = U3(i4);
        this.K2.C(U3);
        boolean equals = U3.equals(jVar.getValue());
        this.f13813h = JsonToken.FIELD_NAME;
        int i42 = i4();
        w4();
        if (i42 == 34) {
            this.f14137f3 = true;
            this.L2 = JsonToken.VALUE_STRING;
            return equals;
        }
        if (i42 == 45) {
            V3 = V3();
        } else if (i42 == 46) {
            V3 = T3();
        } else if (i42 == 91) {
            V3 = JsonToken.START_ARRAY;
        } else if (i42 == 102) {
            J3();
            V3 = JsonToken.VALUE_FALSE;
        } else if (i42 == 110) {
            K3();
            V3 = JsonToken.VALUE_NULL;
        } else if (i42 == 116) {
            N3();
            V3 = JsonToken.VALUE_TRUE;
        } else if (i42 != 123) {
            switch (i42) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    V3 = X3(i42);
                    break;
                default:
                    V3 = E3(i42);
                    break;
            }
        } else {
            V3 = JsonToken.START_OBJECT;
        }
        this.L2 = V3;
        return equals;
    }

    private int F4() throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        return bArr[i4] & 255;
    }

    private final void G3(int i4) throws IOException {
        this.f13813h = JsonToken.FIELD_NAME;
        w4();
        if (i4 == 34) {
            this.f14137f3 = true;
            this.L2 = JsonToken.VALUE_STRING;
        } else if (i4 == 91) {
            this.L2 = JsonToken.START_ARRAY;
        } else if (i4 == 102) {
            J3();
            this.L2 = JsonToken.VALUE_FALSE;
        } else if (i4 == 110) {
            K3();
            this.L2 = JsonToken.VALUE_NULL;
        } else if (i4 == 116) {
            N3();
            this.L2 = JsonToken.VALUE_TRUE;
        } else if (i4 == 123) {
            this.L2 = JsonToken.START_OBJECT;
        } else if (i4 == 45) {
            this.L2 = V3();
        } else if (i4 != 46) {
            switch (i4) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    this.L2 = X3(i4);
                    return;
                default:
                    this.L2 = E3(i4);
                    return;
            }
        } else {
            this.L2 = T3();
        }
    }

    private final String K4(int i4, int i10, int i11) throws IOException {
        return G4(this.f14136e3, 0, i4, i10, i11);
    }

    private final String L4(int i4, int i10, int i11, int i12) throws IOException {
        int[] iArr = this.f14136e3;
        iArr[0] = i4;
        return G4(iArr, 1, i10, i11, i12);
    }

    private final void M3(String str, int i4) throws IOException {
        int i10;
        int i11;
        int length = str.length();
        do {
            if ((this.f13788x2 >= this.f13789y2 && !H3()) || this.f14143l3[this.f13788x2] != str.charAt(i4)) {
                d4(str.substring(0, i4));
            }
            i10 = this.f13788x2 + 1;
            this.f13788x2 = i10;
            i4++;
        } while (i4 < length);
        if ((i10 < this.f13789y2 || H3()) && (i11 = this.f14143l3[this.f13788x2] & 255) >= 48 && i11 != 93 && i11 != 125) {
            o3(str, i4, i11);
        }
    }

    private final String M4(int i4, int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr = this.f14136e3;
        iArr[0] = i4;
        iArr[1] = i10;
        return G4(iArr, 2, i11, i12, i13);
    }

    private final JsonToken O3() {
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        this.f13813h = jsonToken;
        return jsonToken;
    }

    private final JsonToken P3(int i4) throws IOException {
        if (i4 == 34) {
            this.f14137f3 = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this.f13813h = jsonToken;
            return jsonToken;
        } else if (i4 == 45) {
            JsonToken V3 = V3();
            this.f13813h = V3;
            return V3;
        } else if (i4 == 46) {
            JsonToken T3 = T3();
            this.f13813h = T3;
            return T3;
        } else if (i4 == 91) {
            this.K2 = this.K2.u(this.I2, this.J2);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this.f13813h = jsonToken2;
            return jsonToken2;
        } else if (i4 == 102) {
            J3();
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this.f13813h = jsonToken3;
            return jsonToken3;
        } else if (i4 == 110) {
            K3();
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this.f13813h = jsonToken4;
            return jsonToken4;
        } else if (i4 == 116) {
            N3();
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this.f13813h = jsonToken5;
            return jsonToken5;
        } else if (i4 != 123) {
            switch (i4) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    JsonToken X3 = X3(i4);
                    this.f13813h = X3;
                    return X3;
                default:
                    JsonToken E3 = E3(i4);
                    this.f13813h = E3;
                    return E3;
            }
        } else {
            this.K2 = this.K2.v(this.I2, this.J2);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this.f13813h = jsonToken6;
            return jsonToken6;
        }
    }

    private static final int Q3(int i4, int i10) {
        return i10 == 4 ? i4 : i4 | ((-1) << (i10 << 3));
    }

    private final JsonToken S3(char[] cArr, int i4, int i10, boolean z9, int i11) throws IOException {
        int i12;
        boolean z10;
        int i13 = 0;
        if (i10 == 46) {
            if (i4 >= cArr.length) {
                cArr = this.M2.s();
                i4 = 0;
            }
            cArr[i4] = (char) i10;
            i4++;
            i12 = 0;
            while (true) {
                if (this.f13788x2 >= this.f13789y2 && !H3()) {
                    z10 = true;
                    break;
                }
                byte[] bArr = this.f14143l3;
                int i14 = this.f13788x2;
                this.f13788x2 = i14 + 1;
                i10 = bArr[i14] & 255;
                if (i10 < 48 || i10 > 57) {
                    break;
                }
                i12++;
                if (i4 >= cArr.length) {
                    cArr = this.M2.s();
                    i4 = 0;
                }
                cArr[i4] = (char) i10;
                i4++;
            }
            z10 = false;
            if (i12 == 0) {
                z2(i10, "Decimal point not followed by a digit");
            }
        } else {
            i12 = 0;
            z10 = false;
        }
        if (i10 == 101 || i10 == 69) {
            if (i4 >= cArr.length) {
                cArr = this.M2.s();
                i4 = 0;
            }
            int i15 = i4 + 1;
            cArr[i4] = (char) i10;
            if (this.f13788x2 >= this.f13789y2) {
                I3();
            }
            byte[] bArr2 = this.f14143l3;
            int i16 = this.f13788x2;
            this.f13788x2 = i16 + 1;
            int i17 = bArr2[i16] & 255;
            if (i17 == 45 || i17 == 43) {
                if (i15 >= cArr.length) {
                    cArr = this.M2.s();
                    i15 = 0;
                }
                int i18 = i15 + 1;
                cArr[i15] = (char) i17;
                if (this.f13788x2 >= this.f13789y2) {
                    I3();
                }
                byte[] bArr3 = this.f14143l3;
                int i19 = this.f13788x2;
                this.f13788x2 = i19 + 1;
                i17 = bArr3[i19] & 255;
                i15 = i18;
            }
            i10 = i17;
            int i20 = 0;
            while (i10 >= 48 && i10 <= 57) {
                i20++;
                if (i15 >= cArr.length) {
                    cArr = this.M2.s();
                    i15 = 0;
                }
                int i21 = i15 + 1;
                cArr[i15] = (char) i10;
                if (this.f13788x2 >= this.f13789y2 && !H3()) {
                    i13 = i20;
                    i4 = i21;
                    z10 = true;
                    break;
                }
                byte[] bArr4 = this.f14143l3;
                int i22 = this.f13788x2;
                this.f13788x2 = i22 + 1;
                i10 = bArr4[i22] & 255;
                i15 = i21;
            }
            i13 = i20;
            i4 = i15;
            if (i13 == 0) {
                z2(i10, "Exponent indicator not followed by a digit");
            }
        }
        if (!z10) {
            this.f13788x2--;
            if (this.K2.m()) {
                z4(i10);
            }
        }
        this.M2.J(i4);
        return m3(z9, i11, i12, i13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (r3 == 46) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r3 == 101) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
        if (r3 != 69) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
        r6.f13788x2 = r10 - 1;
        r6.M2.J(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        if (r6.K2.m() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        z4(r6.f14143l3[r6.f13788x2] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
        return n3(r9, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        return S3(r1, r2, r3, r9, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.fasterxml.jackson.core.JsonToken W3(char[] r7, int r8, boolean r9, int r10) throws java.io.IOException {
        /*
            r6 = this;
            r1 = r7
            r2 = r8
            r5 = r10
        L3:
            int r7 = r6.f13788x2
            int r8 = r6.f13789y2
            if (r7 < r8) goto L19
            boolean r7 = r6.H3()
            if (r7 != 0) goto L19
            com.fasterxml.jackson.core.util.j r7 = r6.M2
            r7.J(r2)
            com.fasterxml.jackson.core.JsonToken r7 = r6.n3(r9, r5)
            return r7
        L19:
            byte[] r7 = r6.f14143l3
            int r8 = r6.f13788x2
            int r10 = r8 + 1
            r6.f13788x2 = r10
            r7 = r7[r8]
            r3 = r7 & 255(0xff, float:3.57E-43)
            r7 = 57
            if (r3 > r7) goto L42
            r7 = 48
            if (r3 >= r7) goto L2e
            goto L42
        L2e:
            int r7 = r1.length
            if (r2 < r7) goto L39
            com.fasterxml.jackson.core.util.j r7 = r6.M2
            char[] r7 = r7.s()
            r2 = 0
            r1 = r7
        L39:
            int r7 = r2 + 1
            char r8 = (char) r3
            r1[r2] = r8
            int r5 = r5 + 1
            r2 = r7
            goto L3
        L42:
            r7 = 46
            if (r3 == r7) goto L70
            r7 = 101(0x65, float:1.42E-43)
            if (r3 == r7) goto L70
            r7 = 69
            if (r3 != r7) goto L4f
            goto L70
        L4f:
            int r10 = r10 + (-1)
            r6.f13788x2 = r10
            com.fasterxml.jackson.core.util.j r7 = r6.M2
            r7.J(r2)
            com.fasterxml.jackson.core.json.d r7 = r6.K2
            boolean r7 = r7.m()
            if (r7 == 0) goto L6b
            byte[] r7 = r6.f14143l3
            int r8 = r6.f13788x2
            r7 = r7[r8]
            r7 = r7 & 255(0xff, float:3.57E-43)
            r6.z4(r7)
        L6b:
            com.fasterxml.jackson.core.JsonToken r7 = r6.n3(r9, r5)
            return r7
        L70:
            r0 = r6
            r4 = r9
            com.fasterxml.jackson.core.JsonToken r7 = r0.S3(r1, r2, r3, r4, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.W3(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
        k2(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void g4() throws java.io.IOException {
        /*
            r5 = this;
            int[] r0 = com.fasterxml.jackson.core.io.b.g()
        L4:
            int r1 = r5.f13788x2
            int r2 = r5.f13789y2
            if (r1 < r2) goto L10
            boolean r1 = r5.H3()
            if (r1 == 0) goto L43
        L10:
            byte[] r1 = r5.f14143l3
            int r2 = r5.f13788x2
            int r3 = r2 + 1
            r5.f13788x2 = r3
            r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = r0[r1]
            if (r2 == 0) goto L4
            r4 = 2
            if (r2 == r4) goto L6e
            r4 = 3
            if (r2 == r4) goto L6a
            r4 = 4
            if (r2 == r4) goto L66
            r4 = 10
            if (r2 == r4) goto L5d
            r4 = 13
            if (r2 == r4) goto L59
            r4 = 42
            if (r2 == r4) goto L39
            r5.Z3(r1)
            goto L4
        L39:
            int r1 = r5.f13789y2
            if (r3 < r1) goto L4a
            boolean r1 = r5.H3()
            if (r1 != 0) goto L4a
        L43:
            r0 = 0
            java.lang.String r1 = " in a comment"
            r5.k2(r1, r0)
            return
        L4a:
            byte[] r1 = r5.f14143l3
            int r2 = r5.f13788x2
            r1 = r1[r2]
            r3 = 47
            if (r1 != r3) goto L4
            int r2 = r2 + 1
            r5.f13788x2 = r2
            return
        L59:
            r5.h4()
            goto L4
        L5d:
            int r1 = r5.F2
            int r1 = r1 + 1
            r5.F2 = r1
            r5.G2 = r3
            goto L4
        L66:
            r5.q4(r1)
            goto L4
        L6a:
            r5.p4()
            goto L4
        L6e:
            r5.o4()
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.g4():void");
    }

    private final int i4() throws IOException {
        int i4 = this.f13788x2;
        if (i4 + 4 >= this.f13789y2) {
            return j4(false);
        }
        byte[] bArr = this.f14143l3;
        byte b10 = bArr[i4];
        if (b10 == 58) {
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            byte b11 = bArr[i10];
            if (b11 > 32) {
                if (b11 != 47 && b11 != 35) {
                    this.f13788x2 = i10 + 1;
                    return b11;
                }
                return j4(true);
            }
            if (b11 == 32 || b11 == 9) {
                int i11 = i10 + 1;
                this.f13788x2 = i11;
                byte b12 = bArr[i11];
                if (b12 > 32) {
                    if (b12 != 47 && b12 != 35) {
                        this.f13788x2 = i11 + 1;
                        return b12;
                    }
                    return j4(true);
                }
            }
            return j4(true);
        }
        if (b10 == 32 || b10 == 9) {
            int i12 = i4 + 1;
            this.f13788x2 = i12;
            b10 = bArr[i12];
        }
        if (b10 == 58) {
            int i13 = this.f13788x2 + 1;
            this.f13788x2 = i13;
            byte b13 = bArr[i13];
            if (b13 > 32) {
                if (b13 != 47 && b13 != 35) {
                    this.f13788x2 = i13 + 1;
                    return b13;
                }
                return j4(true);
            }
            if (b13 == 32 || b13 == 9) {
                int i14 = i13 + 1;
                this.f13788x2 = i14;
                byte b14 = bArr[i14];
                if (b14 > 32) {
                    if (b14 != 47 && b14 != 35) {
                        this.f13788x2 = i14 + 1;
                        return b14;
                    }
                    return j4(true);
                }
            }
            return j4(true);
        }
        return j4(false);
    }

    private final int j4(boolean z9) throws IOException {
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                k2(" within/between " + this.K2.r() + " entries", null);
                return -1;
            }
            byte[] bArr = this.f14143l3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            int i11 = bArr[i4] & 255;
            if (i11 > 32) {
                if (i11 == 47) {
                    l4();
                } else if (i11 != 35 || !v4()) {
                    if (z9) {
                        return i11;
                    }
                    if (i11 != 58) {
                        o2(i11, "was expecting a colon to separate field name and value");
                    }
                    z9 = true;
                }
            } else if (i11 != 32) {
                if (i11 == 10) {
                    this.F2++;
                    this.G2 = i10;
                } else if (i11 == 13) {
                    h4();
                } else if (i11 != 9) {
                    q2(i11);
                }
            }
        }
    }

    private final int k4(int i4) throws IOException {
        byte[] bArr = this.f14143l3;
        int i10 = i4 + 1;
        byte b10 = bArr[i4];
        if (b10 == 58) {
            int i11 = i10 + 1;
            byte b11 = bArr[i10];
            if (b11 > 32) {
                if (b11 != 47 && b11 != 35) {
                    this.f13788x2 = i11;
                    return b11;
                }
            } else if (b11 == 32 || b11 == 9) {
                int i12 = i11 + 1;
                byte b12 = bArr[i11];
                if (b12 > 32 && b12 != 47 && b12 != 35) {
                    this.f13788x2 = i12;
                    return b12;
                }
                i11 = i12;
            }
            this.f13788x2 = i11 - 1;
            return j4(true);
        }
        if (b10 == 32 || b10 == 9) {
            int i13 = i10 + 1;
            byte b13 = bArr[i10];
            i10 = i13;
            b10 = b13;
        }
        if (b10 == 58) {
            int i14 = i10 + 1;
            byte b14 = bArr[i10];
            if (b14 > 32) {
                if (b14 != 47 && b14 != 35) {
                    this.f13788x2 = i14;
                    return b14;
                }
            } else if (b14 == 32 || b14 == 9) {
                int i15 = i14 + 1;
                byte b15 = bArr[i14];
                if (b15 > 32 && b15 != 47 && b15 != 35) {
                    this.f13788x2 = i15;
                    return b15;
                }
                i14 = i15;
            }
            this.f13788x2 = i14 - 1;
            return j4(true);
        }
        this.f13788x2 = i10 - 1;
        return j4(false);
    }

    private final void l4() throws IOException {
        if ((this.f13716a & f14130u3) == 0) {
            o2(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f13788x2 >= this.f13789y2 && !H3()) {
            k2(" in a comment", null);
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        int i10 = bArr[i4] & 255;
        if (i10 == 47) {
            m4();
        } else if (i10 == 42) {
            g4();
        } else {
            o2(i10, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void m4() throws IOException {
        int[] g4 = com.fasterxml.jackson.core.io.b.g();
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                return;
            }
            byte[] bArr = this.f14143l3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            int i11 = bArr[i4] & 255;
            int i12 = g4[i11];
            if (i12 != 0) {
                if (i12 == 2) {
                    o4();
                } else if (i12 == 3) {
                    p4();
                } else if (i12 == 4) {
                    q4(i11);
                } else if (i12 == 10) {
                    this.F2++;
                    this.G2 = i10;
                    return;
                } else if (i12 == 13) {
                    h4();
                    return;
                } else if (i12 != 42 && i12 < 0) {
                    Z3(i11);
                }
            }
        }
    }

    private final void o3(String str, int i4, int i10) throws IOException {
        if (Character.isJavaIdentifierPart((char) t3(i10))) {
            d4(str.substring(0, i4));
        }
    }

    private final void o4() throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        this.f13788x2 = i10;
        byte b10 = bArr[i4];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i10);
        }
    }

    private final void p3() throws JsonParseException {
        w4();
        if (!this.K2.k()) {
            R2(93, '}');
        }
        this.K2 = this.K2.t();
    }

    private final void p4() throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        this.f13788x2 = i10;
        byte b10 = bArr[i4];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i10);
        }
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr2 = this.f14143l3;
        int i11 = this.f13788x2;
        int i12 = i11 + 1;
        this.f13788x2 = i12;
        byte b11 = bArr2[i11];
        if ((b11 & 192) != 128) {
            c4(b11 & 255, i12);
        }
    }

    private final void q3() throws JsonParseException {
        w4();
        if (!this.K2.l()) {
            R2(125, ']');
        }
        this.K2 = this.K2.t();
    }

    private final void q4(int i4) throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i10 = this.f13788x2;
        int i11 = i10 + 1;
        this.f13788x2 = i11;
        byte b10 = bArr[i10];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i11);
        }
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr2 = this.f14143l3;
        int i12 = this.f13788x2;
        int i13 = i12 + 1;
        this.f13788x2 = i13;
        byte b11 = bArr2[i12];
        if ((b11 & 192) != 128) {
            c4(b11 & 255, i13);
        }
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr3 = this.f14143l3;
        int i14 = this.f13788x2;
        int i15 = i14 + 1;
        this.f13788x2 = i15;
        byte b12 = bArr3[i14];
        if ((b12 & 192) != 128) {
            c4(b12 & 255, i15);
        }
    }

    private final JsonToken r3(int i4) throws JsonParseException {
        if (i4 == 125) {
            q3();
            JsonToken jsonToken = JsonToken.END_OBJECT;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        p3();
        JsonToken jsonToken2 = JsonToken.END_ARRAY;
        this.f13813h = jsonToken2;
        return jsonToken2;
    }

    private final int r4() throws IOException {
        while (true) {
            int i4 = this.f13788x2;
            if (i4 < this.f13789y2) {
                byte[] bArr = this.f14143l3;
                int i10 = i4 + 1;
                this.f13788x2 = i10;
                int i11 = bArr[i4] & 255;
                if (i11 > 32) {
                    if (i11 == 47 || i11 == 35) {
                        this.f13788x2 = i10 - 1;
                        return s4();
                    }
                    return i11;
                } else if (i11 != 32) {
                    if (i11 == 10) {
                        this.F2++;
                        this.G2 = i10;
                    } else if (i11 == 13) {
                        h4();
                    } else if (i11 != 9) {
                        q2(i11);
                    }
                }
            } else {
                return s4();
            }
        }
    }

    private final int s4() throws IOException {
        int i4;
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                throw k("Unexpected end-of-input within/between " + this.K2.r() + " entries");
            }
            byte[] bArr = this.f14143l3;
            int i10 = this.f13788x2;
            int i11 = i10 + 1;
            this.f13788x2 = i11;
            i4 = bArr[i10] & 255;
            if (i4 > 32) {
                if (i4 == 47) {
                    l4();
                } else if (i4 != 35 || !v4()) {
                    break;
                }
            } else if (i4 != 32) {
                if (i4 == 10) {
                    this.F2++;
                    this.G2 = i11;
                } else if (i4 == 13) {
                    h4();
                } else if (i4 != 9) {
                    q2(i4);
                }
            }
        }
        return i4;
    }

    private final int t4() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !H3()) {
            return G2();
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        this.f13788x2 = i10;
        int i11 = bArr[i4] & 255;
        if (i11 > 32) {
            if (i11 == 47 || i11 == 35) {
                this.f13788x2 = i10 - 1;
                return u4();
            }
            return i11;
        }
        if (i11 != 32) {
            if (i11 == 10) {
                this.F2++;
                this.G2 = i10;
            } else if (i11 == 13) {
                h4();
            } else if (i11 != 9) {
                q2(i11);
            }
        }
        while (true) {
            int i12 = this.f13788x2;
            if (i12 < this.f13789y2) {
                byte[] bArr2 = this.f14143l3;
                int i13 = i12 + 1;
                this.f13788x2 = i13;
                int i14 = bArr2[i12] & 255;
                if (i14 > 32) {
                    if (i14 == 47 || i14 == 35) {
                        this.f13788x2 = i13 - 1;
                        return u4();
                    }
                    return i14;
                } else if (i14 != 32) {
                    if (i14 == 10) {
                        this.F2++;
                        this.G2 = i13;
                    } else if (i14 == 13) {
                        h4();
                    } else if (i14 != 9) {
                        q2(i14);
                    }
                }
            } else {
                return u4();
            }
        }
    }

    private final int u3(int i4) throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i10 = this.f13788x2;
        int i11 = i10 + 1;
        this.f13788x2 = i11;
        byte b10 = bArr[i10];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i11);
        }
        return ((i4 & 31) << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
    }

    private final int u4() throws IOException {
        int i4;
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                return G2();
            }
            byte[] bArr = this.f14143l3;
            int i10 = this.f13788x2;
            int i11 = i10 + 1;
            this.f13788x2 = i11;
            i4 = bArr[i10] & 255;
            if (i4 > 32) {
                if (i4 == 47) {
                    l4();
                } else if (i4 != 35 || !v4()) {
                    break;
                }
            } else if (i4 != 32) {
                if (i4 == 10) {
                    this.F2++;
                    this.G2 = i11;
                } else if (i4 == 13) {
                    h4();
                } else if (i4 != 9) {
                    q2(i4);
                }
            }
        }
        return i4;
    }

    private final int v3(int i4) throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        int i10 = i4 & 15;
        byte[] bArr = this.f14143l3;
        int i11 = this.f13788x2;
        int i12 = i11 + 1;
        this.f13788x2 = i12;
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i12);
        }
        int i13 = (i10 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr2 = this.f14143l3;
        int i14 = this.f13788x2;
        int i15 = i14 + 1;
        this.f13788x2 = i15;
        byte b11 = bArr2[i14];
        if ((b11 & 192) != 128) {
            c4(b11 & 255, i15);
        }
        return (i13 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
    }

    private final boolean v4() throws IOException {
        if ((this.f13716a & f14131v3) == 0) {
            return false;
        }
        m4();
        return true;
    }

    private final int w3(int i4) throws IOException {
        int i10 = i4 & 15;
        byte[] bArr = this.f14143l3;
        int i11 = this.f13788x2;
        int i12 = i11 + 1;
        this.f13788x2 = i12;
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i12);
        }
        int i13 = (i10 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        byte[] bArr2 = this.f14143l3;
        int i14 = this.f13788x2;
        int i15 = i14 + 1;
        this.f13788x2 = i15;
        byte b11 = bArr2[i14];
        if ((b11 & 192) != 128) {
            c4(b11 & 255, i15);
        }
        return (i13 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
    }

    private final void w4() {
        this.I2 = this.F2;
        int i4 = this.f13788x2;
        this.H2 = this.E2 + i4;
        this.J2 = i4 - this.G2;
    }

    private final int x3(int i4) throws IOException {
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i10 = this.f13788x2;
        int i11 = i10 + 1;
        this.f13788x2 = i11;
        byte b10 = bArr[i10];
        if ((b10 & 192) != 128) {
            c4(b10 & 255, i11);
        }
        int i12 = ((i4 & 7) << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr2 = this.f14143l3;
        int i13 = this.f13788x2;
        int i14 = i13 + 1;
        this.f13788x2 = i14;
        byte b11 = bArr2[i13];
        if ((b11 & 192) != 128) {
            c4(b11 & 255, i14);
        }
        int i15 = (i12 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr3 = this.f14143l3;
        int i16 = this.f13788x2;
        int i17 = i16 + 1;
        this.f13788x2 = i17;
        byte b12 = bArr3[i16];
        if ((b12 & 192) != 128) {
            c4(b12 & 255, i17);
        }
        return ((i15 << 6) | (b12 & Utf8.REPLACEMENT_BYTE)) - 65536;
    }

    private final void x4() {
        this.f14140i3 = this.F2;
        int i4 = this.f13788x2;
        this.f14139h3 = i4;
        this.f14141j3 = i4 - this.G2;
    }

    private final int y4() throws IOException {
        int i4;
        if ((this.f13788x2 < this.f13789y2 || H3()) && (i4 = this.f14143l3[this.f13788x2] & 255) >= 48 && i4 <= 57) {
            if ((this.f13716a & f14125p3) == 0) {
                s2("Leading zeroes not allowed");
            }
            this.f13788x2++;
            if (i4 == 48) {
                do {
                    if (this.f13788x2 >= this.f13789y2 && !H3()) {
                        break;
                    }
                    byte[] bArr = this.f14143l3;
                    int i10 = this.f13788x2;
                    i4 = bArr[i10] & 255;
                    if (i4 < 48 || i4 > 57) {
                        return 48;
                    }
                    this.f13788x2 = i10 + 1;
                } while (i4 == 48);
            }
            return i4;
        }
        return 48;
    }

    private final void z3(char[] cArr, int i4) throws IOException {
        int[] iArr = f14132w3;
        byte[] bArr = this.f14143l3;
        while (true) {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                I3();
                i10 = this.f13788x2;
            }
            int i11 = 0;
            if (i4 >= cArr.length) {
                cArr = this.M2.s();
                i4 = 0;
            }
            int min = Math.min(this.f13789y2, (cArr.length - i4) + i10);
            while (true) {
                if (i10 < min) {
                    int i12 = i10 + 1;
                    int i13 = bArr[i10] & 255;
                    if (iArr[i13] != 0) {
                        this.f13788x2 = i12;
                        if (i13 == 34) {
                            this.M2.J(i4);
                            return;
                        }
                        int i14 = iArr[i13];
                        if (i14 == 1) {
                            i13 = F2();
                        } else if (i14 == 2) {
                            i13 = u3(i13);
                        } else if (i14 == 3) {
                            i13 = this.f13789y2 - i12 >= 2 ? w3(i13) : v3(i13);
                        } else if (i14 == 4) {
                            int x32 = x3(i13);
                            int i15 = i4 + 1;
                            cArr[i4] = (char) (55296 | (x32 >> 10));
                            if (i15 >= cArr.length) {
                                cArr = this.M2.s();
                                i4 = 0;
                            } else {
                                i4 = i15;
                            }
                            i13 = (x32 & j1.M) | 56320;
                        } else if (i13 < 32) {
                            T2(i13, "string value");
                        } else {
                            Z3(i13);
                        }
                        if (i4 >= cArr.length) {
                            cArr = this.M2.s();
                        } else {
                            i11 = i4;
                        }
                        i4 = i11 + 1;
                        cArr[i11] = (char) i13;
                    } else {
                        cArr[i4] = (char) i13;
                        i10 = i12;
                        i4++;
                    }
                } else {
                    this.f13788x2 = i10;
                    break;
                }
            }
        }
    }

    private final void z4(int i4) throws IOException {
        int i10 = this.f13788x2 + 1;
        this.f13788x2 = i10;
        if (i4 != 9) {
            if (i4 == 10) {
                this.F2++;
                this.G2 = i10;
            } else if (i4 == 13) {
                h4();
            } else if (i4 != 32) {
                n2(i4);
            }
        }
    }

    protected final String A3(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.id();
        if (id != 5) {
            if (id != 6 && id != 7 && id != 8) {
                return jsonToken.asString();
            }
            return this.M2.l();
        }
        return this.K2.b();
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void B2() throws IOException {
        if (this.f14142k3 != null) {
            if (this.f13786g2.r() || m1(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this.f14142k3.close();
            }
            this.f14142k3 = null;
        }
    }

    protected JsonToken B3() throws IOException {
        char[] n9 = this.M2.n();
        int[] iArr = f14132w3;
        byte[] bArr = this.f14143l3;
        int i4 = 0;
        while (true) {
            if (this.f13788x2 >= this.f13789y2) {
                I3();
            }
            if (i4 >= n9.length) {
                n9 = this.M2.s();
                i4 = 0;
            }
            int i10 = this.f13789y2;
            int length = this.f13788x2 + (n9.length - i4);
            if (length < i10) {
                i10 = length;
            }
            while (true) {
                int i11 = this.f13788x2;
                if (i11 < i10) {
                    int i12 = i11 + 1;
                    this.f13788x2 = i12;
                    int i13 = bArr[i11] & 255;
                    if (i13 == 39) {
                        this.M2.J(i4);
                        return JsonToken.VALUE_STRING;
                    } else if (iArr[i13] != 0 && i13 != 34) {
                        int i14 = iArr[i13];
                        if (i14 == 1) {
                            i13 = F2();
                        } else if (i14 == 2) {
                            i13 = u3(i13);
                        } else if (i14 != 3) {
                            if (i14 != 4) {
                                if (i13 < 32) {
                                    T2(i13, "string value");
                                }
                                Z3(i13);
                            } else {
                                int x32 = x3(i13);
                                int i15 = i4 + 1;
                                n9[i4] = (char) (55296 | (x32 >> 10));
                                if (i15 >= n9.length) {
                                    n9 = this.M2.s();
                                    i4 = 0;
                                } else {
                                    i4 = i15;
                                }
                                i13 = 56320 | (x32 & j1.M);
                            }
                        } else if (this.f13789y2 - i12 >= 2) {
                            i13 = w3(i13);
                        } else {
                            i13 = v3(i13);
                        }
                        if (i4 >= n9.length) {
                            n9 = this.M2.s();
                            i4 = 0;
                        }
                        n9[i4] = (char) i13;
                        i4++;
                    } else {
                        n9[i4] = (char) i13;
                        i4++;
                    }
                }
            }
        }
    }

    protected JsonToken C3(int i4, boolean z9) throws IOException {
        String str;
        while (i4 == 73) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                m2(JsonToken.VALUE_NUMBER_FLOAT);
            }
            byte[] bArr = this.f14143l3;
            int i10 = this.f13788x2;
            this.f13788x2 = i10 + 1;
            i4 = bArr[i10];
            if (i4 != 78) {
                if (i4 != 110) {
                    break;
                }
                str = z9 ? "-Infinity" : "+Infinity";
            } else {
                str = z9 ? "-INF" : "+INF";
            }
            L3(str, 3);
            if ((this.f13716a & f14126q3) != 0) {
                return l3(str, z9 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            f2("Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow", str);
        }
        z2(i4, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (this.f14137f3 && this.f13813h == JsonToken.VALUE_STRING) {
            byte[] d4 = this.f13786g2.d();
            try {
                return Y3(base64Variant, outputStream, d4);
            } finally {
                this.f13786g2.s(d4);
            }
        }
        byte[] p02 = p0(base64Variant);
        outputStream.write(p02);
        return p02.length;
    }

    protected String D3(int i4) throws IOException {
        if (i4 == 39 && (this.f13716a & f14128s3) != 0) {
            return R3();
        }
        if ((this.f13716a & f14129t3) == 0) {
            o2((char) t3(i4), "was expecting double-quote to start field name");
        }
        int[] k10 = com.fasterxml.jackson.core.io.b.k();
        if (k10[i4] != 0) {
            o2(i4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArr = this.f14136e3;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 < 4) {
                i10++;
                i12 = i4 | (i12 << 8);
            } else {
                if (i11 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14136e3 = iArr;
                }
                iArr[i11] = i12;
                i12 = i4;
                i11++;
                i10 = 1;
            }
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                k2(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this.f14143l3;
            int i13 = this.f13788x2;
            i4 = bArr[i13] & 255;
            if (k10[i4] != 0) {
                break;
            }
            this.f13788x2 = i13 + 1;
        }
        if (i10 > 0) {
            if (i11 >= iArr.length) {
                int[] f32 = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                this.f14136e3 = f32;
                iArr = f32;
            }
            iArr[i11] = i12;
            i11++;
        }
        String D = this.f14135d3.D(iArr, i11);
        return D == null ? A4(iArr, i11, i10) : D;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object E0() {
        return this.f14142k3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
        if (r4 != 44) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
        if (r3.K2.k() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
        if (r3.K2.m() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
        if ((r3.f13716a & com.fasterxml.jackson.core.json.j.f14127r3) == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
        r3.f13788x2--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken E3(int r4) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.E3(int):com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected char F2() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !H3()) {
            k2(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        byte b10 = bArr[i4];
        if (b10 == 34 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 != 98) {
            if (b10 != 102) {
                if (b10 != 110) {
                    if (b10 != 114) {
                        if (b10 != 116) {
                            if (b10 != 117) {
                                return L2((char) t3(b10));
                            }
                            int i10 = 0;
                            for (int i11 = 0; i11 < 4; i11++) {
                                if (this.f13788x2 >= this.f13789y2 && !H3()) {
                                    k2(" in character escape sequence", JsonToken.VALUE_STRING);
                                }
                                byte[] bArr2 = this.f14143l3;
                                int i12 = this.f13788x2;
                                this.f13788x2 = i12 + 1;
                                byte b11 = bArr2[i12];
                                int b12 = com.fasterxml.jackson.core.io.b.b(b11);
                                if (b12 < 0) {
                                    o2(b11 & 255, "expected a hex-digit for character escape sequence");
                                }
                                i10 = (i10 << 4) | b12;
                            }
                            return (char) i10;
                        }
                        return '\t';
                    }
                    return '\r';
                }
                return '\n';
            }
            return '\f';
        }
        return '\b';
    }

    protected final String G4(int[] iArr, int i4, int i10, int i11, int i12) throws IOException {
        int[] iArr2 = f14133x3;
        while (true) {
            if (iArr2[i11] != 0) {
                if (i11 == 34) {
                    break;
                }
                if (i11 != 92) {
                    T2(i11, "name");
                } else {
                    i11 = F2();
                }
                if (i11 > 127) {
                    int i13 = 0;
                    if (i12 >= 4) {
                        if (i4 >= iArr.length) {
                            iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                            this.f14136e3 = iArr;
                        }
                        iArr[i4] = i10;
                        i4++;
                        i10 = 0;
                        i12 = 0;
                    }
                    if (i11 < 2048) {
                        i10 = (i10 << 8) | (i11 >> 6) | 192;
                        i12++;
                    } else {
                        int i14 = (i10 << 8) | (i11 >> 12) | 224;
                        int i15 = i12 + 1;
                        if (i15 >= 4) {
                            if (i4 >= iArr.length) {
                                iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                                this.f14136e3 = iArr;
                            }
                            iArr[i4] = i14;
                            i4++;
                            i15 = 0;
                        } else {
                            i13 = i14;
                        }
                        i10 = (i13 << 8) | ((i11 >> 6) & 63) | 128;
                        i12 = i15 + 1;
                    }
                    i11 = (i11 & 63) | 128;
                }
            }
            if (i12 < 4) {
                i12++;
                i10 = (i10 << 8) | i11;
            } else {
                if (i4 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14136e3 = iArr;
                }
                iArr[i4] = i10;
                i10 = i11;
                i4++;
                i12 = 1;
            }
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                k2(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr = this.f14143l3;
            int i16 = this.f13788x2;
            this.f13788x2 = i16 + 1;
            i11 = bArr[i16] & 255;
        }
        if (i12 > 0) {
            if (i4 >= iArr.length) {
                iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                this.f14136e3 = iArr;
            }
            iArr[i4] = Q3(i10, i12);
            i4++;
        }
        String D = this.f14135d3.D(iArr, i4);
        return D == null ? A4(iArr, i4, i12) : D;
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void H2() throws IOException {
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2) {
            I3();
            i4 = this.f13788x2;
        }
        int i10 = 0;
        char[] n9 = this.M2.n();
        int[] iArr = f14132w3;
        int min = Math.min(this.f13789y2, n9.length + i4);
        byte[] bArr = this.f14143l3;
        while (true) {
            if (i4 >= min) {
                break;
            }
            int i11 = bArr[i4] & 255;
            if (iArr[i11] == 0) {
                i4++;
                n9[i10] = (char) i11;
                i10++;
            } else if (i11 == 34) {
                this.f13788x2 = i4 + 1;
                this.M2.J(i10);
                return;
            }
        }
        this.f13788x2 = i4;
        z3(n9, i10);
    }

    protected final boolean H3() throws IOException {
        byte[] bArr;
        int length;
        InputStream inputStream = this.f14142k3;
        if (inputStream == null || (length = (bArr = this.f14143l3).length) == 0) {
            return false;
        }
        int read = inputStream.read(bArr, 0, length);
        if (read > 0) {
            int i4 = this.f13789y2;
            this.E2 += i4;
            this.G2 -= i4;
            this.f14139h3 -= i4;
            this.f13788x2 = 0;
            this.f13789y2 = read;
            return true;
        }
        B2();
        if (read == 0) {
            throw new IOException("InputStream.read() returned 0 characters when trying to read " + this.f14143l3.length + " bytes");
        }
        return false;
    }

    protected final String H4(int i4, int i10, int i11) throws IOException {
        int[] iArr = this.f14136e3;
        iArr[0] = this.f14138g3;
        iArr[1] = i10;
        iArr[2] = i11;
        byte[] bArr = this.f14143l3;
        int[] iArr2 = f14133x3;
        int i12 = i4;
        int i13 = 3;
        while (true) {
            int i14 = this.f13788x2;
            if (i14 + 4 <= this.f13789y2) {
                int i15 = i14 + 1;
                this.f13788x2 = i15;
                int i16 = bArr[i14] & 255;
                if (iArr2[i16] != 0) {
                    if (i16 == 34) {
                        return E4(this.f14136e3, i13, i12, 1);
                    }
                    return G4(this.f14136e3, i13, i12, i16, 1);
                }
                int i17 = (i12 << 8) | i16;
                int i18 = i15 + 1;
                this.f13788x2 = i18;
                int i19 = bArr[i15] & 255;
                if (iArr2[i19] != 0) {
                    if (i19 == 34) {
                        return E4(this.f14136e3, i13, i17, 2);
                    }
                    return G4(this.f14136e3, i13, i17, i19, 2);
                }
                int i20 = (i17 << 8) | i19;
                int i21 = i18 + 1;
                this.f13788x2 = i21;
                int i22 = bArr[i18] & 255;
                if (iArr2[i22] != 0) {
                    if (i22 == 34) {
                        return E4(this.f14136e3, i13, i20, 3);
                    }
                    return G4(this.f14136e3, i13, i20, i22, 3);
                }
                int i23 = (i20 << 8) | i22;
                this.f13788x2 = i21 + 1;
                int i24 = bArr[i21] & 255;
                if (iArr2[i24] != 0) {
                    if (i24 == 34) {
                        return E4(this.f14136e3, i13, i23, 4);
                    }
                    return G4(this.f14136e3, i13, i23, i24, 4);
                }
                int[] iArr3 = this.f14136e3;
                if (i13 >= iArr3.length) {
                    this.f14136e3 = com.fasterxml.jackson.core.base.b.f3(iArr3, i13);
                }
                this.f14136e3[i13] = i23;
                i12 = i24;
                i13++;
            } else {
                return G4(this.f14136e3, i13, 0, i12, 0);
            }
        }
    }

    protected void I3() throws IOException {
        if (H3()) {
            return;
        }
        i2();
    }

    protected final String I4(int i4) throws IOException {
        byte[] bArr = this.f14143l3;
        int[] iArr = f14133x3;
        int i10 = this.f13788x2;
        int i11 = i10 + 1;
        this.f13788x2 = i11;
        int i12 = bArr[i10] & 255;
        if (iArr[i12] != 0) {
            if (i12 == 34) {
                return C4(this.f14138g3, i4, 1);
            }
            return L4(this.f14138g3, i4, i12, 1);
        }
        int i13 = (i4 << 8) | i12;
        int i14 = i11 + 1;
        this.f13788x2 = i14;
        int i15 = bArr[i11] & 255;
        if (iArr[i15] != 0) {
            if (i15 == 34) {
                return C4(this.f14138g3, i13, 2);
            }
            return L4(this.f14138g3, i13, i15, 2);
        }
        int i16 = (i13 << 8) | i15;
        int i17 = i14 + 1;
        this.f13788x2 = i17;
        int i18 = bArr[i14] & 255;
        if (iArr[i18] != 0) {
            if (i18 == 34) {
                return C4(this.f14138g3, i16, 3);
            }
            return L4(this.f14138g3, i16, i18, 3);
        }
        int i19 = (i16 << 8) | i18;
        this.f13788x2 = i17 + 1;
        int i20 = bArr[i17] & 255;
        if (iArr[i20] != 0) {
            if (i20 == 34) {
                return C4(this.f14138g3, i19, 4);
            }
            return L4(this.f14138g3, i19, i20, 4);
        }
        return J4(i20, i19);
    }

    protected final void J3() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 4 < this.f13789y2) {
            byte[] bArr = this.f14143l3;
            int i11 = i10 + 1;
            if (bArr[i10] == 97) {
                int i12 = i11 + 1;
                if (bArr[i11] == 108) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 115) {
                        int i14 = i13 + 1;
                        if (bArr[i13] == 101 && ((i4 = bArr[i14] & 255) < 48 || i4 == 93 || i4 == 125)) {
                            this.f13788x2 = i14;
                            return;
                        }
                    }
                }
            }
        }
        M3("false", 1);
    }

    protected final String J4(int i4, int i10) throws IOException {
        byte[] bArr = this.f14143l3;
        int[] iArr = f14133x3;
        int i11 = this.f13788x2;
        int i12 = i11 + 1;
        this.f13788x2 = i12;
        int i13 = bArr[i11] & 255;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                return D4(this.f14138g3, i10, i4, 1);
            }
            return M4(this.f14138g3, i10, i4, i13, 1);
        }
        int i14 = (i4 << 8) | i13;
        int i15 = i12 + 1;
        this.f13788x2 = i15;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            if (i16 == 34) {
                return D4(this.f14138g3, i10, i14, 2);
            }
            return M4(this.f14138g3, i10, i14, i16, 2);
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i15 + 1;
        this.f13788x2 = i18;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] != 0) {
            if (i19 == 34) {
                return D4(this.f14138g3, i10, i17, 3);
            }
            return M4(this.f14138g3, i10, i17, i19, 3);
        }
        int i20 = (i17 << 8) | i19;
        this.f13788x2 = i18 + 1;
        int i21 = bArr[i18] & 255;
        if (iArr[i21] != 0) {
            if (i21 == 34) {
                return D4(this.f14138g3, i10, i20, 4);
            }
            return M4(this.f14138g3, i10, i20, i21, 4);
        }
        return H4(i21, i10, i20);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int K1(OutputStream outputStream) throws IOException {
        int i4 = this.f13789y2;
        int i10 = this.f13788x2;
        int i11 = i4 - i10;
        if (i11 < 1) {
            return 0;
        }
        this.f13788x2 = i10 + i11;
        outputStream.write(this.f14143l3, i10, i11);
        return i11;
    }

    protected final void K3() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            byte[] bArr = this.f14143l3;
            int i11 = i10 + 1;
            if (bArr[i10] == 117) {
                int i12 = i11 + 1;
                if (bArr[i11] == 108) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 108 && ((i4 = bArr[i13] & 255) < 48 || i4 == 93 || i4 == 125)) {
                        this.f13788x2 = i13;
                        return;
                    }
                }
            }
        }
        M3("null", 1);
    }

    protected final void L3(String str, int i4) throws IOException {
        int i10;
        int length = str.length();
        if (this.f13788x2 + length >= this.f13789y2) {
            M3(str, i4);
            return;
        }
        do {
            if (this.f14143l3[this.f13788x2] != str.charAt(i4)) {
                d4(str.substring(0, i4));
            }
            i10 = this.f13788x2 + 1;
            this.f13788x2 = i10;
            i4++;
        } while (i4 < length);
        int i11 = this.f14143l3[i10] & 255;
        if (i11 < 48 || i11 == 93 || i11 == 125) {
            return;
        }
        o3(str, i4, i11);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(com.fasterxml.jackson.core.h hVar) {
        this.f14134c3 = hVar;
    }

    protected final void N3() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            byte[] bArr = this.f14143l3;
            int i11 = i10 + 1;
            if (bArr[i10] == 114) {
                int i12 = i11 + 1;
                if (bArr[i11] == 117) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 101 && ((i4 = bArr[i13] & 255) < 48 || i4 == 93 || i4 == 125)) {
                        this.f13788x2 = i13;
                        return;
                    }
                }
            }
        }
        M3("true", 1);
    }

    protected String N4() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !H3()) {
            k2(": was expecting closing '\"' for name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        int i10 = bArr[i4] & 255;
        return i10 == 34 ? "" : G4(this.f14136e3, 0, 0, i10, 0);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
        return com.fasterxml.jackson.core.base.b.f13784b3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.b
    public void Q2() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        super.Q2();
        this.f14135d3.N();
        if (!this.f14144m3 || (bArr = this.f14143l3) == null || bArr == (bArr2 = com.fasterxml.jackson.core.base.c.H)) {
            return;
        }
        this.f14143l3 = bArr2;
        this.f13786g2.v(bArr);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int R0(Writer writer) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14137f3) {
                this.f14137f3 = false;
                H2();
            }
            return this.M2.m(writer);
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            String b10 = this.K2.b();
            writer.write(b10);
            return b10.length();
        } else if (jsonToken != null) {
            if (jsonToken.isNumeric()) {
                return this.M2.m(writer);
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        } else {
            return 0;
        }
    }

    protected String R3() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !H3()) {
            k2(": was expecting closing ''' for field name", JsonToken.FIELD_NAME);
        }
        byte[] bArr = this.f14143l3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        int i10 = bArr[i4] & 255;
        if (i10 == 39) {
            return "";
        }
        int[] iArr = this.f14136e3;
        int[] iArr2 = f14133x3;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 != 39) {
            if (iArr2[i10] != 0 && i10 != 34) {
                if (i10 != 92) {
                    T2(i10, "name");
                } else {
                    i10 = F2();
                }
                if (i10 > 127) {
                    if (i11 >= 4) {
                        if (i12 >= iArr.length) {
                            iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                            this.f14136e3 = iArr;
                        }
                        iArr[i12] = i13;
                        i12++;
                        i11 = 0;
                        i13 = 0;
                    }
                    if (i10 < 2048) {
                        i13 = (i13 << 8) | (i10 >> 6) | 192;
                        i11++;
                    } else {
                        int i14 = (i13 << 8) | (i10 >> 12) | 224;
                        int i15 = i11 + 1;
                        if (i15 >= 4) {
                            if (i12 >= iArr.length) {
                                iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                                this.f14136e3 = iArr;
                            }
                            iArr[i12] = i14;
                            i12++;
                            i15 = 0;
                            i14 = 0;
                        }
                        i13 = (i14 << 8) | ((i10 >> 6) & 63) | 128;
                        i11 = i15 + 1;
                    }
                    i10 = (i10 & 63) | 128;
                }
            }
            if (i11 < 4) {
                i11++;
                i13 = i10 | (i13 << 8);
            } else {
                if (i12 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14136e3 = iArr;
                }
                iArr[i12] = i13;
                i13 = i10;
                i12++;
                i11 = 1;
            }
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                k2(" in field name", JsonToken.FIELD_NAME);
            }
            byte[] bArr2 = this.f14143l3;
            int i16 = this.f13788x2;
            this.f13788x2 = i16 + 1;
            i10 = bArr2[i16] & 255;
        }
        if (i11 > 0) {
            if (i12 >= iArr.length) {
                int[] f32 = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                this.f14136e3 = f32;
                iArr = f32;
            }
            iArr[i12] = Q3(i13, i11);
            i12++;
        }
        String D = this.f14135d3.D(iArr, i12);
        return D == null ? A4(iArr, i12, i11) : D;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String S0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14137f3) {
                this.f14137f3 = false;
                return y3();
            }
            return this.M2.l();
        }
        return A3(jsonToken);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public char[] T0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this.f13813h.asCharArray();
                    }
                } else if (this.f14137f3) {
                    this.f14137f3 = false;
                    H2();
                }
                return this.M2.x();
            }
            if (!this.O2) {
                String b10 = this.K2.b();
                int length = b10.length();
                char[] cArr = this.N2;
                if (cArr == null) {
                    this.N2 = this.f13786g2.g(length);
                } else if (cArr.length < length) {
                    this.N2 = new char[length];
                }
                b10.getChars(0, length, this.N2, 0);
                this.O2 = true;
            }
            return this.N2;
        }
        return null;
    }

    protected final JsonToken T3() throws IOException {
        if (!m1(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
            return E3(46);
        }
        return S3(this.M2.n(), 0, 46, false, 0);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this.f13813h.asCharArray().length;
                    }
                } else if (this.f14137f3) {
                    this.f14137f3 = false;
                    H2();
                }
                return this.M2.K();
            }
            return this.K2.b().length();
        }
        return 0;
    }

    protected final String U3(int i4) throws IOException {
        if (i4 != 34) {
            return D3(i4);
        }
        int i10 = this.f13788x2;
        if (i10 + 13 > this.f13789y2) {
            return N4();
        }
        byte[] bArr = this.f14143l3;
        int[] iArr = f14133x3;
        int i11 = i10 + 1;
        this.f13788x2 = i11;
        int i12 = bArr[i10] & 255;
        if (iArr[i12] != 0) {
            return i12 == 34 ? "" : K4(0, i12, 0);
        }
        int i13 = i11 + 1;
        this.f13788x2 = i13;
        int i14 = bArr[i11] & 255;
        if (iArr[i14] != 0) {
            if (i14 == 34) {
                return B4(i12, 1);
            }
            return K4(i12, i14, 1);
        }
        int i15 = (i12 << 8) | i14;
        int i16 = i13 + 1;
        this.f13788x2 = i16;
        int i17 = bArr[i13] & 255;
        if (iArr[i17] != 0) {
            if (i17 == 34) {
                return B4(i15, 2);
            }
            return K4(i15, i17, 2);
        }
        int i18 = (i15 << 8) | i17;
        int i19 = i16 + 1;
        this.f13788x2 = i19;
        int i20 = bArr[i16] & 255;
        if (iArr[i20] != 0) {
            if (i20 == 34) {
                return B4(i18, 3);
            }
            return K4(i18, i20, 3);
        }
        int i21 = (i18 << 8) | i20;
        this.f13788x2 = i19 + 1;
        int i22 = bArr[i19] & 255;
        if (iArr[i22] == 0) {
            this.f14138g3 = i21;
            return I4(i22);
        } else if (i22 == 34) {
            return B4(i21, 4);
        } else {
            return K4(i21, i22, 4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
        if (r0 != 8) goto L15;
     */
    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int V0() throws java.io.IOException {
        /*
            r3 = this;
            com.fasterxml.jackson.core.JsonToken r0 = r3.f13813h
            r1 = 0
            if (r0 == 0) goto L24
            int r0 = r0.id()
            r2 = 6
            if (r0 == r2) goto L14
            r2 = 7
            if (r0 == r2) goto L1d
            r2 = 8
            if (r0 == r2) goto L1d
            goto L24
        L14:
            boolean r0 = r3.f14137f3
            if (r0 == 0) goto L1d
            r3.f14137f3 = r1
            r3.H2()
        L1d:
            com.fasterxml.jackson.core.util.j r0 = r3.M2
            int r0 = r0.y()
            return r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.V0():int");
    }

    protected JsonToken V3() throws IOException {
        int i4;
        int i10;
        char[] n9 = this.M2.n();
        n9[0] = l.f93713d;
        if (this.f13788x2 >= this.f13789y2) {
            I3();
        }
        byte[] bArr = this.f14143l3;
        int i11 = this.f13788x2;
        this.f13788x2 = i11 + 1;
        int i12 = bArr[i11] & 255;
        if (i12 <= 48) {
            if (i12 != 48) {
                return C3(i12, true);
            }
            i12 = y4();
        } else if (i12 > 57) {
            return C3(i12, true);
        }
        int i13 = 2;
        n9[1] = (char) i12;
        int min = Math.min(this.f13789y2, (this.f13788x2 + n9.length) - 2);
        int i14 = 1;
        while (true) {
            int i15 = this.f13788x2;
            if (i15 >= min) {
                return W3(n9, i13, true, i14);
            }
            byte[] bArr2 = this.f14143l3;
            i4 = i15 + 1;
            this.f13788x2 = i4;
            i10 = bArr2[i15] & 255;
            if (i10 < 48 || i10 > 57) {
                break;
            }
            i14++;
            n9[i13] = (char) i10;
            i13++;
        }
        if (i10 != 46 && i10 != 101 && i10 != 69) {
            this.f13788x2 = i4 - 1;
            this.M2.J(i13);
            if (this.K2.m()) {
                z4(i10);
            }
            return n3(true, i14);
        }
        return S3(n9, i13, i10, true, i14);
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            return new JsonLocation(C2(), this.E2 + (this.f14139h3 - 1), -1L, this.f14140i3, this.f14141j3);
        }
        return new JsonLocation(C2(), this.H2 - 1, -1L, this.I2, this.J2);
    }

    protected JsonToken X3(int i4) throws IOException {
        int i10;
        int i11;
        char[] n9 = this.M2.n();
        if (i4 == 48) {
            i4 = y4();
        }
        n9[0] = (char) i4;
        int min = Math.min(this.f13789y2, (this.f13788x2 + n9.length) - 1);
        int i12 = 1;
        int i13 = 1;
        while (true) {
            int i14 = this.f13788x2;
            if (i14 >= min) {
                return W3(n9, i12, false, i13);
            }
            byte[] bArr = this.f14143l3;
            i10 = i14 + 1;
            this.f13788x2 = i10;
            i11 = bArr[i14] & 255;
            if (i11 < 48 || i11 > 57) {
                break;
            }
            i13++;
            n9[i12] = (char) i11;
            i12++;
        }
        if (i11 != 46 && i11 != 101 && i11 != 69) {
            this.f13788x2 = i10 - 1;
            this.M2.J(i12);
            if (this.K2.m()) {
                z4(i11);
            }
            return n3(false, i13);
        }
        return S3(n9, i12, i11, false, i13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x012e, code lost:
        r16.f14137f3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0130, code lost:
        if (r7 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0132, code lost:
        r8 = r8 + r7;
        r18.write(r19, 0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0136, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int Y3(com.fasterxml.jackson.core.Base64Variant r17, java.io.OutputStream r18, byte[] r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.Y3(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    protected void Z3(int i4) throws JsonParseException {
        if (i4 < 32) {
            q2(i4);
        }
        a4(i4);
    }

    protected void a4(int i4) throws JsonParseException {
        e2("Invalid UTF-8 start byte 0x" + Integer.toHexString(i4));
    }

    protected void b4(int i4) throws JsonParseException {
        e2("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i4));
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int c1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.d1(0);
        }
        int i4 = this.R2;
        if ((i4 & 1) == 0) {
            if (i4 == 0) {
                return M2();
            }
            if ((i4 & 1) == 0) {
                Z2();
            }
        }
        return this.S2;
    }

    protected void c4(int i4, int i10) throws JsonParseException {
        this.f13788x2 = i10;
        b4(i4);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int d1(int i4) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.d1(i4);
        }
        int i10 = this.R2;
        if ((i10 & 1) == 0) {
            if (i10 == 0) {
                return M2();
            }
            if ((i10 & 1) == 0) {
                Z2();
            }
        }
        return this.S2;
    }

    protected void d4(String str) throws IOException {
        f4(str, U2());
    }

    protected void e4(String str, int i4) throws IOException {
        this.f13788x2 = i4;
        f4(str, U2());
    }

    protected void f4(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !H3()) {
                break;
            }
            byte[] bArr = this.f14143l3;
            int i4 = this.f13788x2;
            this.f13788x2 = i4 + 1;
            char t32 = (char) t3(bArr[i4]);
            if (!Character.isJavaIdentifierPart(t32)) {
                break;
            }
            sb.append(t32);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        g2("Unrecognized token '%s': was expecting %s", sb, str2);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14137f3) {
                this.f14137f3 = false;
                return y3();
            }
            return this.M2.l();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        } else {
            return super.h1(null);
        }
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String h1(String str) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14137f3) {
                this.f14137f3 = false;
                return y3();
            }
            return this.M2.l();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        } else {
            return super.h1(str);
        }
    }

    protected final void h4() throws IOException {
        if (this.f13788x2 < this.f13789y2 || H3()) {
            byte[] bArr = this.f14143l3;
            int i4 = this.f13788x2;
            if (bArr[i4] == 10) {
                this.f13788x2 = i4 + 1;
            }
        }
        this.F2++;
        this.G2 = this.f13788x2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void l0() throws IOException {
        if (this.f14137f3) {
            this.f14137f3 = false;
            H2();
        }
    }

    protected void n4() throws IOException {
        this.f14137f3 = false;
        int[] iArr = f14132w3;
        byte[] bArr = this.f14143l3;
        while (true) {
            int i4 = this.f13788x2;
            int i10 = this.f13789y2;
            if (i4 >= i10) {
                I3();
                i4 = this.f13788x2;
                i10 = this.f13789y2;
            }
            while (true) {
                if (i4 < i10) {
                    int i11 = i4 + 1;
                    int i12 = bArr[i4] & 255;
                    if (iArr[i12] != 0) {
                        this.f13788x2 = i11;
                        if (i12 == 34) {
                            return;
                        }
                        int i13 = iArr[i12];
                        if (i13 == 1) {
                            F2();
                        } else if (i13 == 2) {
                            o4();
                        } else if (i13 == 3) {
                            p4();
                        } else if (i13 == 4) {
                            q4(i12);
                        } else if (i12 < 32) {
                            T2(i12, "string value");
                        } else {
                            Z3(i12);
                        }
                    } else {
                        i4 = i11;
                    }
                } else {
                    this.f13788x2 = i4;
                    break;
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this.Q2 == null)) {
            e2("Current token (" + this.f13813h + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this.f14137f3) {
            try {
                this.Q2 = s3(base64Variant);
                this.f14137f3 = false;
            } catch (IllegalArgumentException e4) {
                throw k("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e4.getMessage());
            }
        } else if (this.Q2 == null) {
            com.fasterxml.jackson.core.util.c I2 = I2();
            Y1(S0(), I2, base64Variant);
            this.Q2 = I2.E();
        }
        return this.Q2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.h s0() {
        return this.f14134c3;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean s1() throws IOException {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            this.O2 = false;
            JsonToken jsonToken = this.L2;
            this.L2 = null;
            this.f13813h = jsonToken;
            if (jsonToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this.K2 = this.K2.u(this.I2, this.J2);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this.K2 = this.K2.v(this.I2, this.J2);
            }
            return null;
        }
        JsonToken y12 = y1();
        if (y12 == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (y12 == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        return null;
    }

    protected final byte[] s3(Base64Variant base64Variant) throws IOException {
        com.fasterxml.jackson.core.util.c I2 = I2();
        while (true) {
            if (this.f13788x2 >= this.f13789y2) {
                I3();
            }
            byte[] bArr = this.f14143l3;
            int i4 = this.f13788x2;
            this.f13788x2 = i4 + 1;
            int i10 = bArr[i4] & 255;
            if (i10 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(i10);
                if (decodeBase64Char < 0) {
                    if (i10 == 34) {
                        return I2.E();
                    }
                    decodeBase64Char = E2(base64Variant, i10, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this.f13788x2 >= this.f13789y2) {
                    I3();
                }
                byte[] bArr2 = this.f14143l3;
                int i11 = this.f13788x2;
                this.f13788x2 = i11 + 1;
                int i12 = bArr2[i11] & 255;
                int decodeBase64Char2 = base64Variant.decodeBase64Char(i12);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = E2(base64Variant, i12, 1);
                }
                int i13 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (this.f13788x2 >= this.f13789y2) {
                    I3();
                }
                byte[] bArr3 = this.f14143l3;
                int i14 = this.f13788x2;
                this.f13788x2 = i14 + 1;
                int i15 = bArr3[i14] & 255;
                int decodeBase64Char3 = base64Variant.decodeBase64Char(i15);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (i15 == 34) {
                            I2.b(i13 >> 4);
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char3 = E2(base64Variant, i15, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this.f13788x2 >= this.f13789y2) {
                            I3();
                        }
                        byte[] bArr4 = this.f14143l3;
                        int i16 = this.f13788x2;
                        this.f13788x2 = i16 + 1;
                        int i17 = bArr4[i16] & 255;
                        if (!base64Variant.usesPaddingChar(i17) && E2(base64Variant, i17, 3) != -2) {
                            throw j3(base64Variant, i17, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        I2.b(i13 >> 4);
                    }
                }
                int i18 = (i13 << 6) | decodeBase64Char3;
                if (this.f13788x2 >= this.f13789y2) {
                    I3();
                }
                byte[] bArr5 = this.f14143l3;
                int i19 = this.f13788x2;
                this.f13788x2 = i19 + 1;
                int i20 = bArr5[i19] & 255;
                int decodeBase64Char4 = base64Variant.decodeBase64Char(i20);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (i20 == 34) {
                            I2.i(i18 >> 2);
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char4 = E2(base64Variant, i20, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        I2.i(i18 >> 2);
                    }
                }
                I2.h((i18 << 6) | decodeBase64Char4);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return new JsonLocation(C2(), this.E2 + this.f13788x2, -1L, this.F2, (this.f13788x2 - this.G2) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String t1() throws IOException {
        JsonToken V3;
        this.R2 = 0;
        JsonToken jsonToken = this.f13813h;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            O3();
            return null;
        }
        if (this.f14137f3) {
            n4();
        }
        int t42 = t4();
        if (t42 < 0) {
            close();
            this.f13813h = null;
            return null;
        }
        this.Q2 = null;
        if (t42 == 93) {
            p3();
            this.f13813h = JsonToken.END_ARRAY;
            return null;
        } else if (t42 == 125) {
            q3();
            this.f13813h = JsonToken.END_OBJECT;
            return null;
        } else {
            if (this.K2.y()) {
                if (t42 != 44) {
                    o2(t42, "was expecting comma to separate " + this.K2.r() + " entries");
                }
                t42 = r4();
                if ((this.f13716a & f14124o3) != 0 && (t42 == 93 || t42 == 125)) {
                    r3(t42);
                    return null;
                }
            }
            if (!this.K2.l()) {
                w4();
                P3(t42);
                return null;
            }
            x4();
            String U3 = U3(t42);
            this.K2.C(U3);
            this.f13813h = jsonToken2;
            int i4 = i4();
            w4();
            if (i4 == 34) {
                this.f14137f3 = true;
                this.L2 = JsonToken.VALUE_STRING;
                return U3;
            }
            if (i4 == 45) {
                V3 = V3();
            } else if (i4 == 46) {
                V3 = T3();
            } else if (i4 == 91) {
                V3 = JsonToken.START_ARRAY;
            } else if (i4 == 102) {
                J3();
                V3 = JsonToken.VALUE_FALSE;
            } else if (i4 == 110) {
                K3();
                V3 = JsonToken.VALUE_NULL;
            } else if (i4 == 116) {
                N3();
                V3 = JsonToken.VALUE_TRUE;
            } else if (i4 != 123) {
                switch (i4) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        V3 = X3(i4);
                        break;
                    default:
                        V3 = E3(i4);
                        break;
                }
            } else {
                V3 = JsonToken.START_OBJECT;
            }
            this.L2 = V3;
            return U3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int t3(int r7) throws java.io.IOException {
        /*
            r6 = this;
            r7 = r7 & 255(0xff, float:3.57E-43)
            r0 = 127(0x7f, float:1.78E-43)
            if (r7 <= r0) goto L68
            r0 = r7 & 224(0xe0, float:3.14E-43)
            r1 = 2
            r2 = 1
            r3 = 192(0xc0, float:2.69E-43)
            if (r0 != r3) goto L12
            r7 = r7 & 31
        L10:
            r0 = 1
            goto L2c
        L12:
            r0 = r7 & 240(0xf0, float:3.36E-43)
            r3 = 224(0xe0, float:3.14E-43)
            if (r0 != r3) goto L1c
            r7 = r7 & 15
            r0 = 2
            goto L2c
        L1c:
            r0 = r7 & 248(0xf8, float:3.48E-43)
            r3 = 240(0xf0, float:3.36E-43)
            if (r0 != r3) goto L26
            r7 = r7 & 7
            r0 = 3
            goto L2c
        L26:
            r0 = r7 & 255(0xff, float:3.57E-43)
            r6.a4(r0)
            goto L10
        L2c:
            int r3 = r6.F4()
            r4 = r3 & 192(0xc0, float:2.69E-43)
            r5 = 128(0x80, float:1.794E-43)
            if (r4 == r5) goto L3b
            r4 = r3 & 255(0xff, float:3.57E-43)
            r6.b4(r4)
        L3b:
            int r7 = r7 << 6
            r3 = r3 & 63
            r7 = r7 | r3
            if (r0 <= r2) goto L68
            int r2 = r6.F4()
            r3 = r2 & 192(0xc0, float:2.69E-43)
            if (r3 == r5) goto L4f
            r3 = r2 & 255(0xff, float:3.57E-43)
            r6.b4(r3)
        L4f:
            int r7 = r7 << 6
            r2 = r2 & 63
            r7 = r7 | r2
            if (r0 <= r1) goto L68
            int r0 = r6.F4()
            r1 = r0 & 192(0xc0, float:2.69E-43)
            if (r1 == r5) goto L63
            r1 = r0 & 255(0xff, float:3.57E-43)
            r6.b4(r1)
        L63:
            int r7 = r7 << 6
            r0 = r0 & 63
            r7 = r7 | r0
        L68:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.j.t3(int):int");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean u1(com.fasterxml.jackson.core.j jVar) throws IOException {
        int i4 = 0;
        this.R2 = 0;
        if (this.f13813h == JsonToken.FIELD_NAME) {
            O3();
            return false;
        }
        if (this.f14137f3) {
            n4();
        }
        int t42 = t4();
        if (t42 < 0) {
            close();
            this.f13813h = null;
            return false;
        }
        this.Q2 = null;
        if (t42 == 93) {
            p3();
            this.f13813h = JsonToken.END_ARRAY;
            return false;
        } else if (t42 == 125) {
            q3();
            this.f13813h = JsonToken.END_OBJECT;
            return false;
        } else {
            if (this.K2.y()) {
                if (t42 != 44) {
                    o2(t42, "was expecting comma to separate " + this.K2.r() + " entries");
                }
                t42 = r4();
                if ((this.f13716a & f14124o3) != 0 && (t42 == 93 || t42 == 125)) {
                    r3(t42);
                    return false;
                }
            }
            if (!this.K2.l()) {
                w4();
                P3(t42);
                return false;
            }
            x4();
            if (t42 == 34) {
                byte[] asQuotedUTF8 = jVar.asQuotedUTF8();
                int length = asQuotedUTF8.length;
                int i10 = this.f13788x2;
                if (i10 + length + 4 < this.f13789y2) {
                    int i11 = length + i10;
                    if (this.f14143l3[i11] == 34) {
                        while (i10 != i11) {
                            if (asQuotedUTF8[i4] == this.f14143l3[i10]) {
                                i4++;
                                i10++;
                            }
                        }
                        this.K2.C(jVar.getValue());
                        G3(k4(i10 + 1));
                        return true;
                    }
                }
            }
            return F3(t42, jVar);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int v1(int i4) throws IOException {
        if (this.f13813h != JsonToken.FIELD_NAME) {
            return y1() == JsonToken.VALUE_NUMBER_INT ? F0() : i4;
        }
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        this.f13813h = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return F0();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long w1(long j4) throws IOException {
        if (this.f13813h != JsonToken.FIELD_NAME) {
            return y1() == JsonToken.VALUE_NUMBER_INT ? H0() : j4;
        }
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        this.f13813h = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return H0();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        return j4;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String x1() throws IOException {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            this.O2 = false;
            JsonToken jsonToken = this.L2;
            this.L2 = null;
            this.f13813h = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (this.f14137f3) {
                    this.f14137f3 = false;
                    return y3();
                }
                return this.M2.l();
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this.K2 = this.K2.u(this.I2, this.J2);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this.K2 = this.K2.v(this.I2, this.J2);
            }
            return null;
        } else if (y1() == JsonToken.VALUE_STRING) {
            return S0();
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        JsonToken V3;
        JsonToken jsonToken = this.f13813h;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            return O3();
        }
        this.R2 = 0;
        if (this.f14137f3) {
            n4();
        }
        int t42 = t4();
        if (t42 < 0) {
            close();
            this.f13813h = null;
            return null;
        }
        this.Q2 = null;
        if (t42 == 93) {
            p3();
            JsonToken jsonToken3 = JsonToken.END_ARRAY;
            this.f13813h = jsonToken3;
            return jsonToken3;
        } else if (t42 == 125) {
            q3();
            JsonToken jsonToken4 = JsonToken.END_OBJECT;
            this.f13813h = jsonToken4;
            return jsonToken4;
        } else {
            if (this.K2.y()) {
                if (t42 != 44) {
                    o2(t42, "was expecting comma to separate " + this.K2.r() + " entries");
                }
                t42 = r4();
                if ((this.f13716a & f14124o3) != 0 && (t42 == 93 || t42 == 125)) {
                    return r3(t42);
                }
            }
            if (!this.K2.l()) {
                w4();
                return P3(t42);
            }
            x4();
            this.K2.C(U3(t42));
            this.f13813h = jsonToken2;
            int i4 = i4();
            w4();
            if (i4 == 34) {
                this.f14137f3 = true;
                this.L2 = JsonToken.VALUE_STRING;
                return this.f13813h;
            }
            if (i4 == 45) {
                V3 = V3();
            } else if (i4 == 46) {
                V3 = T3();
            } else if (i4 == 91) {
                V3 = JsonToken.START_ARRAY;
            } else if (i4 == 102) {
                J3();
                V3 = JsonToken.VALUE_FALSE;
            } else if (i4 == 110) {
                K3();
                V3 = JsonToken.VALUE_NULL;
            } else if (i4 == 116) {
                N3();
                V3 = JsonToken.VALUE_TRUE;
            } else if (i4 != 123) {
                switch (i4) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        V3 = X3(i4);
                        break;
                    default:
                        V3 = E3(i4);
                        break;
                }
            } else {
                V3 = JsonToken.START_OBJECT;
            }
            this.L2 = V3;
            return this.f13813h;
        }
    }

    protected String y3() throws IOException {
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2) {
            I3();
            i4 = this.f13788x2;
        }
        int i10 = 0;
        char[] n9 = this.M2.n();
        int[] iArr = f14132w3;
        int min = Math.min(this.f13789y2, n9.length + i4);
        byte[] bArr = this.f14143l3;
        while (true) {
            if (i4 >= min) {
                break;
            }
            int i11 = bArr[i4] & 255;
            if (iArr[i11] == 0) {
                i4++;
                n9[i10] = (char) i11;
                i10++;
            } else if (i11 == 34) {
                this.f13788x2 = i4 + 1;
                return this.M2.I(i10);
            }
        }
        this.f13788x2 = i4;
        z3(n9, i10);
        return this.M2.l();
    }

    public j(com.fasterxml.jackson.core.io.d dVar, int i4, InputStream inputStream, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.a aVar, byte[] bArr, int i10, int i11, int i12, boolean z9) {
        super(dVar, i4);
        this.f14136e3 = new int[16];
        this.f14142k3 = inputStream;
        this.f14134c3 = hVar;
        this.f14135d3 = aVar;
        this.f14143l3 = bArr;
        this.f13788x2 = i10;
        this.f13789y2 = i11;
        this.G2 = i10 - i12;
        this.E2 = (-i10) + i12;
        this.f14144m3 = z9;
    }
}
