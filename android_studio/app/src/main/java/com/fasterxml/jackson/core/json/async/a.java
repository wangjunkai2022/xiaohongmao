package com.fasterxml.jackson.core.json.async;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.base.c;
import com.fasterxml.jackson.core.io.d;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.util.j;
import com.fasterxml.jackson.core.util.l;
import com.google.android.exoplayer2.analytics.j1;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: NonBlockingJsonParser.java */
/* loaded from: classes.dex */
public class a extends b implements b2.a {

    /* renamed from: q4  reason: collision with root package name */
    protected byte[] f14017q4;

    /* renamed from: r4  reason: collision with root package name */
    protected int f14018r4;

    /* renamed from: s4  reason: collision with root package name */
    private static final int f14009s4 = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();

    /* renamed from: t4  reason: collision with root package name */
    private static final int f14010t4 = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();

    /* renamed from: u4  reason: collision with root package name */
    private static final int f14011u4 = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();

    /* renamed from: v4  reason: collision with root package name */
    private static final int f14012v4 = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();

    /* renamed from: w4  reason: collision with root package name */
    private static final int f14013w4 = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();

    /* renamed from: x4  reason: collision with root package name */
    private static final int f14014x4 = JsonParser.Feature.ALLOW_COMMENTS.getMask();

    /* renamed from: y4  reason: collision with root package name */
    private static final int f14015y4 = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();

    /* renamed from: z4  reason: collision with root package name */
    private static final int[] f14016z4 = com.fasterxml.jackson.core.io.b.j();
    protected static final int[] A4 = com.fasterxml.jackson.core.io.b.h();

    public a(d dVar, int i4, com.fasterxml.jackson.core.sym.a aVar) {
        super(dVar, i4, aVar);
        this.f14017q4 = c.H;
    }

    private final JsonToken B4(int i4) throws IOException {
        String T3;
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 4;
            return this.f13813h;
        }
        F3();
        if (i4 != 34) {
            if (i4 == 125) {
                return q3();
            }
            return r4(i4);
        } else if (this.f13788x2 + 13 <= this.f13789y2 && (T3 = T3()) != null) {
            return s3(T3);
        } else {
            return s4(0, 0, 0);
        }
    }

    private final JsonToken C4(int i4) throws IOException {
        String T3;
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 5;
            return this.f13813h;
        }
        if (i4 != 44) {
            if (i4 == 125) {
                return q3();
            }
            if (i4 == 35) {
                return e4(5);
            }
            if (i4 == 47) {
                return J4(5);
            }
            o2(i4, "was expecting comma to separate " + this.K2.r() + " entries");
        }
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14047m3 = 4;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        int i11 = this.f14017q4[i10];
        this.f13788x2 = i10 + 1;
        if (i11 <= 32 && (i11 = w4(i11)) <= 0) {
            this.f14047m3 = 4;
            return this.f13813h;
        }
        F3();
        if (i11 != 34) {
            if (i11 == 125 && (this.f13716a & f14009s4) != 0) {
                return q3();
            }
            return r4(i11);
        } else if (this.f13788x2 + 13 <= this.f13789y2 && (T3 = T3()) != null) {
            return s3(T3);
        } else {
            return s4(0, 0, 0);
        }
    }

    private final JsonToken J4(int i4) throws IOException {
        if ((this.f13716a & f14014x4) == 0) {
            o2(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14041g3 = i4;
            this.f14047m3 = 51;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this.f14017q4;
        this.f13788x2 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 == 42) {
            return X3(i4, false);
        }
        if (b10 == 47) {
            return Y3(i4);
        }
        o2(b10 & 255, "was expecting either '*' or '/' for a comment");
        return null;
    }

    private final int K3() throws IOException {
        if (this.f13789y2 - this.f13788x2 < 5) {
            return M3(0, -1);
        }
        return L3();
    }

    private final int L3() throws IOException {
        byte[] bArr = this.f14017q4;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        this.f13788x2 = i10;
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
                                return L2((char) b10);
                            }
                            this.f13788x2 = i10 + 1;
                            byte b11 = bArr[i10];
                            int b12 = com.fasterxml.jackson.core.io.b.b(b11);
                            if (b12 >= 0) {
                                byte[] bArr2 = this.f14017q4;
                                int i11 = this.f13788x2;
                                this.f13788x2 = i11 + 1;
                                b11 = bArr2[i11];
                                int b13 = com.fasterxml.jackson.core.io.b.b(b11);
                                if (b13 >= 0) {
                                    int i12 = (b12 << 4) | b13;
                                    byte[] bArr3 = this.f14017q4;
                                    int i13 = this.f13788x2;
                                    this.f13788x2 = i13 + 1;
                                    byte b14 = bArr3[i13];
                                    int b15 = com.fasterxml.jackson.core.io.b.b(b14);
                                    if (b15 >= 0) {
                                        int i14 = (i12 << 4) | b15;
                                        byte[] bArr4 = this.f14017q4;
                                        int i15 = this.f13788x2;
                                        this.f13788x2 = i15 + 1;
                                        b14 = bArr4[i15];
                                        int b16 = com.fasterxml.jackson.core.io.b.b(b14);
                                        if (b16 >= 0) {
                                            return (i14 << 4) | b16;
                                        }
                                    }
                                    b11 = b14;
                                }
                            }
                            o2(b11 & 255, "expected a hex-digit for character escape sequence");
                            return -1;
                        }
                        return 9;
                    }
                    return 13;
                }
                return 10;
            }
            return 12;
        }
        return 8;
    }

    private int M3(int i4, int i10) throws IOException {
        int i11 = this.f13788x2;
        int i12 = this.f13789y2;
        if (i11 >= i12) {
            this.f14043i3 = i4;
            this.f14044j3 = i10;
            return -1;
        }
        byte[] bArr = this.f14017q4;
        int i13 = i11 + 1;
        this.f13788x2 = i13;
        byte b10 = bArr[i11];
        if (i10 == -1) {
            if (b10 == 34 || b10 == 47 || b10 == 92) {
                return b10;
            }
            if (b10 == 98) {
                return 8;
            }
            if (b10 == 102) {
                return 12;
            }
            if (b10 == 110) {
                return 10;
            }
            if (b10 == 114) {
                return 13;
            }
            if (b10 == 116) {
                return 9;
            }
            if (b10 != 117) {
                return L2((char) b10);
            }
            if (i13 >= i12) {
                this.f14044j3 = 0;
                this.f14043i3 = 0;
                return -1;
            }
            this.f13788x2 = i13 + 1;
            b10 = bArr[i13];
            i10 = 0;
        }
        while (true) {
            int i14 = b10 & 255;
            int b11 = com.fasterxml.jackson.core.io.b.b(i14);
            if (b11 < 0) {
                o2(i14 & 255, "expected a hex-digit for character escape sequence");
            }
            i4 = (i4 << 4) | b11;
            i10++;
            if (i10 == 4) {
                return i4;
            }
            int i15 = this.f13788x2;
            if (i15 >= this.f13789y2) {
                this.f14044j3 = i10;
                this.f14043i3 = i4;
                return -1;
            }
            byte[] bArr2 = this.f14017q4;
            this.f13788x2 = i15 + 1;
            b10 = bArr2[i15];
        }
    }

    private final boolean N3(int i4, int i10, boolean z9) throws IOException {
        if (i10 == 1) {
            int M3 = M3(0, -1);
            if (M3 < 0) {
                this.f14047m3 = 41;
                return false;
            }
            this.M2.a((char) M3);
            return true;
        } else if (i10 == 2) {
            if (z9) {
                byte[] bArr = this.f14017q4;
                int i11 = this.f13788x2;
                this.f13788x2 = i11 + 1;
                this.M2.a((char) Q3(i4, bArr[i11]));
                return true;
            }
            this.f14047m3 = 42;
            this.f14041g3 = i4;
            return false;
        } else if (i10 == 3) {
            int i12 = i4 & 15;
            if (z9) {
                byte[] bArr2 = this.f14017q4;
                int i13 = this.f13788x2;
                this.f13788x2 = i13 + 1;
                return O3(i12, 1, bArr2[i13]);
            }
            this.f14047m3 = 43;
            this.f14041g3 = i12;
            this.f14042h3 = 1;
            return false;
        } else if (i10 != 4) {
            if (i4 < 32) {
                T2(i4, "string value");
            } else {
                z3(i4);
            }
            this.M2.a((char) i4);
            return true;
        } else {
            int i14 = i4 & 7;
            if (z9) {
                byte[] bArr3 = this.f14017q4;
                int i15 = this.f13788x2;
                this.f13788x2 = i15 + 1;
                return P3(i14, 1, bArr3[i15]);
            }
            this.f14041g3 = i14;
            this.f14042h3 = 1;
            this.f14047m3 = 44;
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final JsonToken N4(int i4) throws IOException {
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 12;
            return this.f13813h;
        }
        F3();
        this.K2.y();
        if (i4 == 34) {
            return K4();
        }
        if (i4 != 35) {
            if (i4 != 91) {
                if (i4 != 93) {
                    if (i4 != 102) {
                        if (i4 != 110) {
                            if (i4 != 116) {
                                if (i4 != 123) {
                                    if (i4 != 125) {
                                        switch (i4) {
                                            case 45:
                                                return F4();
                                            case 46:
                                                if (m1(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
                                                    return E4();
                                                }
                                                break;
                                            case 47:
                                                return J4(12);
                                            case 48:
                                                return H4();
                                            case 49:
                                            case 50:
                                            case 51:
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                            case 56:
                                            case 57:
                                                return I4(i4);
                                        }
                                        return M4(false, i4);
                                    }
                                    return q3();
                                }
                                return E3();
                            }
                            return L4();
                        }
                        return G4();
                    }
                    return A4();
                }
                return p3();
            }
            return D3();
        }
        return e4(12);
    }

    private final boolean O3(int i4, int i10, int i11) throws IOException {
        if (i10 == 1) {
            if ((i11 & 192) != 128) {
                C3(i11 & 255, this.f13788x2);
            }
            i4 = (i4 << 6) | (i11 & 63);
            int i12 = this.f13788x2;
            if (i12 >= this.f13789y2) {
                this.f14047m3 = 43;
                this.f14041g3 = i4;
                this.f14042h3 = 2;
                return false;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i12 + 1;
            i11 = bArr[i12];
        }
        if ((i11 & 192) != 128) {
            C3(i11 & 255, this.f13788x2);
        }
        this.M2.a((char) ((i4 << 6) | (i11 & 63)));
        return true;
    }

    private final JsonToken O4(int i4) throws IOException {
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 15;
            return this.f13813h;
        }
        F3();
        if (i4 == 34) {
            return K4();
        }
        if (i4 != 35) {
            if (i4 != 45) {
                if (i4 != 91) {
                    if (i4 != 93) {
                        if (i4 == 102) {
                            return A4();
                        }
                        if (i4 == 110) {
                            return G4();
                        }
                        if (i4 == 116) {
                            return L4();
                        }
                        if (i4 == 123) {
                            return E3();
                        }
                        if (i4 != 125) {
                            switch (i4) {
                                case 47:
                                    return J4(15);
                                case 48:
                                    return H4();
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                    return I4(i4);
                            }
                        } else if ((this.f13716a & f14009s4) != 0) {
                            return q3();
                        }
                    } else if ((this.f13716a & f14009s4) != 0) {
                        return p3();
                    }
                    return M4(true, i4);
                }
                return D3();
            }
            return F4();
        }
        return e4(15);
    }

    private final boolean P3(int i4, int i10, int i11) throws IOException {
        if (i10 == 1) {
            if ((i11 & 192) != 128) {
                C3(i11 & 255, this.f13788x2);
            }
            i4 = (i4 << 6) | (i11 & 63);
            int i12 = this.f13788x2;
            if (i12 >= this.f13789y2) {
                this.f14047m3 = 44;
                this.f14041g3 = i4;
                this.f14042h3 = 2;
                return false;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i12 + 1;
            i11 = bArr[i12];
            i10 = 2;
        }
        if (i10 == 2) {
            if ((i11 & 192) != 128) {
                C3(i11 & 255, this.f13788x2);
            }
            i4 = (i4 << 6) | (i11 & 63);
            int i13 = this.f13788x2;
            if (i13 >= this.f13789y2) {
                this.f14047m3 = 44;
                this.f14041g3 = i4;
                this.f14042h3 = 3;
                return false;
            }
            byte[] bArr2 = this.f14017q4;
            this.f13788x2 = i13 + 1;
            i11 = bArr2[i13];
        }
        if ((i11 & 192) != 128) {
            C3(i11 & 255, this.f13788x2);
        }
        int i14 = ((i4 << 6) | (i11 & 63)) - 65536;
        this.M2.a((char) (55296 | (i14 >> 10)));
        this.M2.a((char) ((i14 & j1.M) | 56320));
        return true;
    }

    private final JsonToken P4(int i4) throws IOException {
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 14;
            return this.f13813h;
        }
        if (i4 != 58) {
            if (i4 == 47) {
                return J4(14);
            }
            if (i4 == 35) {
                return e4(14);
            }
            o2(i4, "was expecting a colon to separate field name and value");
        }
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14047m3 = 12;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        int i11 = this.f14017q4[i10];
        this.f13788x2 = i10 + 1;
        if (i11 <= 32 && (i11 = w4(i11)) <= 0) {
            this.f14047m3 = 12;
            return this.f13813h;
        }
        F3();
        if (i11 == 34) {
            return K4();
        }
        if (i11 != 35) {
            if (i11 != 45) {
                if (i11 != 91) {
                    if (i11 != 102) {
                        if (i11 != 110) {
                            if (i11 != 116) {
                                if (i11 != 123) {
                                    switch (i11) {
                                        case 47:
                                            return J4(12);
                                        case 48:
                                            return H4();
                                        case 49:
                                        case 50:
                                        case 51:
                                        case 52:
                                        case 53:
                                        case 54:
                                        case 55:
                                        case 56:
                                        case 57:
                                            return I4(i11);
                                        default:
                                            return M4(false, i11);
                                    }
                                }
                                return E3();
                            }
                            return L4();
                        }
                        return G4();
                    }
                    return A4();
                }
                return D3();
            }
            return F4();
        }
        return e4(12);
    }

    private final int Q3(int i4, int i10) throws IOException {
        if ((i10 & 192) != 128) {
            C3(i10 & 255, this.f13788x2);
        }
        return ((i4 & 31) << 6) | (i10 & 63);
    }

    private final JsonToken Q4(int i4) throws IOException {
        if (i4 <= 32 && (i4 = w4(i4)) <= 0) {
            this.f14047m3 = 13;
            return this.f13813h;
        }
        if (i4 != 44) {
            if (i4 == 93) {
                return p3();
            }
            if (i4 == 125) {
                return q3();
            }
            if (i4 == 47) {
                return J4(13);
            }
            if (i4 == 35) {
                return e4(13);
            }
            o2(i4, "was expecting comma to separate " + this.K2.r() + " entries");
        }
        this.K2.y();
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14047m3 = 15;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        int i11 = this.f14017q4[i10];
        this.f13788x2 = i10 + 1;
        if (i11 <= 32 && (i11 = w4(i11)) <= 0) {
            this.f14047m3 = 15;
            return this.f13813h;
        }
        F3();
        if (i11 == 34) {
            return K4();
        }
        if (i11 != 35) {
            if (i11 != 45) {
                if (i11 != 91) {
                    if (i11 != 93) {
                        if (i11 == 102) {
                            return A4();
                        }
                        if (i11 == 110) {
                            return G4();
                        }
                        if (i11 == 116) {
                            return L4();
                        }
                        if (i11 == 123) {
                            return E3();
                        }
                        if (i11 != 125) {
                            switch (i11) {
                                case 47:
                                    return J4(15);
                                case 48:
                                    return H4();
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                    return I4(i11);
                            }
                        } else if ((this.f13716a & f14009s4) != 0) {
                            return q3();
                        }
                    } else if ((this.f13716a & f14009s4) != 0) {
                        return p3();
                    }
                    return M4(true, i11);
                }
                return D3();
            }
            return F4();
        }
        return e4(15);
    }

    private final int R3(int i4, int i10, int i11) throws IOException {
        int i12 = i4 & 15;
        if ((i10 & 192) != 128) {
            C3(i10 & 255, this.f13788x2);
        }
        int i13 = (i12 << 6) | (i10 & 63);
        if ((i11 & 192) != 128) {
            C3(i11 & 255, this.f13788x2);
        }
        return (i13 << 6) | (i11 & 63);
    }

    private final int S3(int i4, int i10, int i11, int i12) throws IOException {
        if ((i10 & 192) != 128) {
            C3(i10 & 255, this.f13788x2);
        }
        int i13 = ((i4 & 7) << 6) | (i10 & 63);
        if ((i11 & 192) != 128) {
            C3(i11 & 255, this.f13788x2);
        }
        int i14 = (i13 << 6) | (i11 & 63);
        if ((i12 & 192) != 128) {
            C3(i12 & 255, this.f13788x2);
        }
        return ((i14 << 6) | (i12 & 63)) - 65536;
    }

    private final String T3() throws IOException {
        byte[] bArr = this.f14017q4;
        int[] iArr = A4;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        int i11 = bArr[i4] & 255;
        if (iArr[i11] != 0) {
            if (i11 == 34) {
                this.f13788x2 = i10;
                return "";
            }
            return null;
        }
        int i12 = i10 + 1;
        int i13 = bArr[i10] & 255;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                this.f13788x2 = i12;
                return t3(i11, 1);
            }
            return null;
        }
        int i14 = (i11 << 8) | i13;
        int i15 = i12 + 1;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            if (i16 == 34) {
                this.f13788x2 = i15;
                return t3(i14, 2);
            }
            return null;
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i15 + 1;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] != 0) {
            if (i19 == 34) {
                this.f13788x2 = i18;
                return t3(i17, 3);
            }
            return null;
        }
        int i20 = (i17 << 8) | i19;
        int i21 = i18 + 1;
        int i22 = bArr[i18] & 255;
        if (iArr[i22] == 0) {
            this.f14040f3 = i20;
            return t4(i21, i22);
        } else if (i22 == 34) {
            this.f13788x2 = i21;
            return t3(i20, 4);
        } else {
            return null;
        }
    }

    private JsonToken U3(int i4, int i10, int i11) throws IOException {
        int[] iArr = this.f14038d3;
        int[] iArr2 = A4;
        while (true) {
            int i12 = this.f13788x2;
            if (i12 >= this.f13789y2) {
                this.f14039e3 = i4;
                this.f14041g3 = i10;
                this.f14042h3 = i11;
                this.f14047m3 = 9;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i12 + 1;
            int i13 = bArr[i12] & 255;
            if (i13 == 39) {
                if (i11 > 0) {
                    if (i4 >= iArr.length) {
                        iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                        this.f14038d3 = iArr;
                    }
                    iArr[i4] = b.y3(i10, i11);
                    i4++;
                } else if (i4 == 0) {
                    return s3("");
                }
                String D = this.f14037c3.D(iArr, i4);
                if (D == null) {
                    D = o3(iArr, i4, i11);
                }
                return s3(D);
            }
            if (i13 != 34 && iArr2[i13] != 0) {
                if (i13 != 92) {
                    T2(i13, "name");
                } else {
                    i13 = K3();
                    if (i13 < 0) {
                        this.f14047m3 = 8;
                        this.f14048n3 = 9;
                        this.f14039e3 = i4;
                        this.f14041g3 = i10;
                        this.f14042h3 = i11;
                        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                        this.f13813h = jsonToken2;
                        return jsonToken2;
                    }
                }
                if (i13 > 127) {
                    int i14 = 0;
                    if (i11 >= 4) {
                        if (i4 >= iArr.length) {
                            int[] f32 = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                            this.f14038d3 = f32;
                            iArr = f32;
                        }
                        iArr[i4] = i10;
                        i4++;
                        i10 = 0;
                        i11 = 0;
                    }
                    if (i13 < 2048) {
                        i10 = (i10 << 8) | (i13 >> 6) | 192;
                        i11++;
                    } else {
                        int i15 = (i10 << 8) | (i13 >> 12) | 224;
                        int i16 = i11 + 1;
                        if (i16 >= 4) {
                            if (i4 >= iArr.length) {
                                int[] f33 = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                                this.f14038d3 = f33;
                                iArr = f33;
                            }
                            iArr[i4] = i15;
                            i4++;
                            i16 = 0;
                        } else {
                            i14 = i15;
                        }
                        i10 = (i14 << 8) | ((i13 >> 6) & 63) | 128;
                        i11 = i16 + 1;
                    }
                    i13 = (i13 & 63) | 128;
                }
            }
            if (i11 < 4) {
                i11++;
                i10 = (i10 << 8) | i13;
            } else {
                if (i4 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14038d3 = iArr;
                }
                iArr[i4] = i10;
                i4++;
                i10 = i13;
                i11 = 1;
            }
        }
    }

    private final JsonToken V3() throws IOException {
        int i4;
        int[] iArr = f14016z4;
        byte[] bArr = this.f14017q4;
        char[] u9 = this.M2.u();
        int w9 = this.M2.w();
        int i10 = this.f13788x2;
        int i11 = this.f13789y2 - 5;
        while (i10 < this.f13789y2) {
            int i12 = 0;
            if (w9 >= u9.length) {
                u9 = this.M2.s();
                w9 = 0;
            }
            int min = Math.min(this.f13789y2, (u9.length - w9) + i10);
            while (true) {
                if (i10 < min) {
                    int i13 = i10 + 1;
                    int i14 = bArr[i10] & 255;
                    if (iArr[i14] == 0 || i14 == 34) {
                        if (i14 == 39) {
                            this.f13788x2 = i13;
                            this.M2.J(w9);
                            return G3(JsonToken.VALUE_STRING);
                        }
                        u9[w9] = (char) i14;
                        i10 = i13;
                        w9++;
                    } else if (i13 >= i11) {
                        this.f13788x2 = i13;
                        this.M2.J(w9);
                        if (!N3(i14, iArr[i14], i13 < this.f13789y2)) {
                            this.f14048n3 = 45;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this.f13813h = jsonToken;
                            return jsonToken;
                        }
                        u9 = this.M2.u();
                        w9 = this.M2.w();
                        i10 = this.f13788x2;
                    } else {
                        int i15 = iArr[i14];
                        if (i15 == 1) {
                            this.f13788x2 = i13;
                            i14 = L3();
                            i4 = this.f13788x2;
                        } else if (i15 == 2) {
                            i14 = Q3(i14, this.f14017q4[i13]);
                            i4 = i13 + 1;
                        } else if (i15 == 3) {
                            byte[] bArr2 = this.f14017q4;
                            int i16 = i13 + 1;
                            i14 = R3(i14, bArr2[i13], bArr2[i16]);
                            i4 = i16 + 1;
                        } else if (i15 != 4) {
                            if (i14 < 32) {
                                T2(i14, "string value");
                            } else {
                                z3(i14);
                            }
                            i4 = i13;
                        } else {
                            byte[] bArr3 = this.f14017q4;
                            int i17 = i13 + 1;
                            int i18 = i17 + 1;
                            int i19 = i18 + 1;
                            int S3 = S3(i14, bArr3[i13], bArr3[i17], bArr3[i18]);
                            int i20 = w9 + 1;
                            u9[w9] = (char) (55296 | (S3 >> 10));
                            if (i20 >= u9.length) {
                                u9 = this.M2.s();
                                w9 = 0;
                            } else {
                                w9 = i20;
                            }
                            i14 = (S3 & j1.M) | 56320;
                            i4 = i19;
                        }
                        if (w9 >= u9.length) {
                            u9 = this.M2.s();
                        } else {
                            i12 = w9;
                        }
                        w9 = i12 + 1;
                        u9[i12] = (char) i14;
                        i10 = i4;
                    }
                }
            }
        }
        this.f13788x2 = i10;
        this.f14047m3 = 45;
        this.M2.J(w9);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this.f13813h = jsonToken2;
        return jsonToken2;
    }

    private final JsonToken W3(int i4) throws IOException {
        while (true) {
            int i10 = this.f13788x2;
            if (i10 < this.f13789y2) {
                byte[] bArr = this.f14017q4;
                this.f13788x2 = i10 + 1;
                int i11 = bArr[i10] & 255;
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            this.E2 -= 3;
                            return z4(i11);
                        }
                    } else if (i11 != 191) {
                        f2("Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM", Integer.valueOf(i11));
                    }
                } else if (i11 != 187) {
                    f2("Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM", Integer.valueOf(i11));
                }
                i4++;
            } else {
                this.f14041g3 = i4;
                this.f14047m3 = 1;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
        }
    }

    private final JsonToken X3(int i4, boolean z9) throws IOException {
        while (true) {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14047m3 = z9 ? 52 : 53;
                this.f14041g3 = i4;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            this.f13788x2 = i11;
            int i12 = bArr[i10] & 255;
            if (i12 < 32) {
                if (i12 == 10) {
                    this.F2++;
                    this.G2 = i11;
                } else if (i12 == 13) {
                    this.f14052r3++;
                    this.G2 = i11;
                } else if (i12 != 9) {
                    q2(i12);
                }
            } else if (i12 == 42) {
                z9 = true;
            } else if (i12 == 47 && z9) {
                return x4(i4);
            }
            z9 = false;
        }
    }

    private final JsonToken Y3(int i4) throws IOException {
        while (true) {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14047m3 = 54;
                this.f14041g3 = i4;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            this.f13788x2 = i11;
            int i12 = bArr[i10] & 255;
            if (i12 < 32) {
                if (i12 == 10) {
                    this.F2++;
                    this.G2 = i11;
                    break;
                } else if (i12 == 13) {
                    this.f14052r3++;
                    this.G2 = i11;
                    break;
                } else if (i12 != 9) {
                    q2(i12);
                }
            }
        }
        return x4(i4);
    }

    private final JsonToken e4(int i4) throws IOException {
        if ((this.f13716a & f14015y4) == 0) {
            o2(35, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_YAML_COMMENTS' not enabled for parser)");
        }
        while (true) {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14047m3 = 55;
                this.f14041g3 = i4;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            this.f13788x2 = i11;
            int i12 = bArr[i10] & 255;
            if (i12 < 32) {
                if (i12 == 10) {
                    this.F2++;
                    this.G2 = i11;
                    break;
                } else if (i12 == 13) {
                    this.f14052r3++;
                    this.G2 = i11;
                    break;
                } else if (i12 != 9) {
                    q2(i12);
                }
            }
        }
        return x4(i4);
    }

    private final JsonToken n4() throws IOException {
        int i4;
        int[] iArr = f14016z4;
        byte[] bArr = this.f14017q4;
        char[] u9 = this.M2.u();
        int w9 = this.M2.w();
        int i10 = this.f13788x2;
        int i11 = this.f13789y2 - 5;
        while (i10 < this.f13789y2) {
            int i12 = 0;
            if (w9 >= u9.length) {
                u9 = this.M2.s();
                w9 = 0;
            }
            int min = Math.min(this.f13789y2, (u9.length - w9) + i10);
            while (true) {
                if (i10 < min) {
                    int i13 = i10 + 1;
                    int i14 = bArr[i10] & 255;
                    if (iArr[i14] == 0) {
                        u9[w9] = (char) i14;
                        i10 = i13;
                        w9++;
                    } else if (i14 == 34) {
                        this.f13788x2 = i13;
                        this.M2.J(w9);
                        return G3(JsonToken.VALUE_STRING);
                    } else if (i13 >= i11) {
                        this.f13788x2 = i13;
                        this.M2.J(w9);
                        if (!N3(i14, iArr[i14], i13 < this.f13789y2)) {
                            this.f14048n3 = 40;
                            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                            this.f13813h = jsonToken;
                            return jsonToken;
                        }
                        u9 = this.M2.u();
                        w9 = this.M2.w();
                        i10 = this.f13788x2;
                    } else {
                        int i15 = iArr[i14];
                        if (i15 == 1) {
                            this.f13788x2 = i13;
                            i14 = L3();
                            i4 = this.f13788x2;
                        } else if (i15 == 2) {
                            i14 = Q3(i14, this.f14017q4[i13]);
                            i4 = i13 + 1;
                        } else if (i15 == 3) {
                            byte[] bArr2 = this.f14017q4;
                            int i16 = i13 + 1;
                            i14 = R3(i14, bArr2[i13], bArr2[i16]);
                            i4 = i16 + 1;
                        } else if (i15 != 4) {
                            if (i14 < 32) {
                                T2(i14, "string value");
                            } else {
                                z3(i14);
                            }
                            i4 = i13;
                        } else {
                            byte[] bArr3 = this.f14017q4;
                            int i17 = i13 + 1;
                            int i18 = i17 + 1;
                            int i19 = i18 + 1;
                            int S3 = S3(i14, bArr3[i13], bArr3[i17], bArr3[i18]);
                            int i20 = w9 + 1;
                            u9[w9] = (char) (55296 | (S3 >> 10));
                            if (i20 >= u9.length) {
                                u9 = this.M2.s();
                                w9 = 0;
                            } else {
                                w9 = i20;
                            }
                            i14 = (S3 & j1.M) | 56320;
                            i4 = i19;
                        }
                        if (w9 >= u9.length) {
                            u9 = this.M2.s();
                        } else {
                            i12 = w9;
                        }
                        w9 = i12 + 1;
                        u9[i12] = (char) i14;
                        i10 = i4;
                    }
                }
            }
        }
        this.f13788x2 = i10;
        this.f14047m3 = 40;
        this.M2.J(w9);
        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
        this.f13813h = jsonToken2;
        return jsonToken2;
    }

    private JsonToken q4(int i4, int i10, int i11) throws IOException {
        int[] iArr = this.f14038d3;
        int[] k10 = com.fasterxml.jackson.core.io.b.k();
        while (true) {
            int i12 = this.f13788x2;
            if (i12 >= this.f13789y2) {
                this.f14039e3 = i4;
                this.f14041g3 = i10;
                this.f14042h3 = i11;
                this.f14047m3 = 10;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            int i13 = this.f14017q4[i12] & 255;
            if (k10[i13] != 0) {
                if (i11 > 0) {
                    if (i4 >= iArr.length) {
                        iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                        this.f14038d3 = iArr;
                    }
                    iArr[i4] = i10;
                    i4++;
                }
                String D = this.f14037c3.D(iArr, i4);
                if (D == null) {
                    D = o3(iArr, i4, i11);
                }
                return s3(D);
            }
            this.f13788x2 = i12 + 1;
            if (i11 < 4) {
                i11++;
                i10 = (i10 << 8) | i13;
            } else {
                if (i4 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14038d3 = iArr;
                }
                iArr[i4] = i10;
                i4++;
                i10 = i13;
                i11 = 1;
            }
        }
    }

    private JsonToken r4(int i4) throws IOException {
        if (i4 != 35) {
            if (i4 != 39) {
                if (i4 == 47) {
                    return J4(4);
                }
                if (i4 == 93) {
                    return p3();
                }
            } else if ((this.f13716a & f14012v4) != 0) {
                return U3(0, 0, 0);
            }
        } else if ((this.f13716a & f14015y4) != 0) {
            return e4(4);
        }
        if ((this.f13716a & f14013w4) == 0) {
            o2((char) i4, "was expecting double-quote to start field name");
        }
        if (com.fasterxml.jackson.core.io.b.k()[i4] != 0) {
            o2(i4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        return q4(0, i4, 1);
    }

    private final JsonToken s4(int i4, int i10, int i11) throws IOException {
        int i12;
        int[] iArr = this.f14038d3;
        int[] iArr2 = A4;
        while (true) {
            int i13 = this.f13788x2;
            if (i13 >= this.f13789y2) {
                this.f14039e3 = i4;
                this.f14041g3 = i10;
                this.f14042h3 = i11;
                this.f14047m3 = 7;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i13 + 1;
            int i14 = bArr[i13] & 255;
            if (iArr2[i14] == 0) {
                if (i11 < 4) {
                    i11++;
                    i10 = (i10 << 8) | i14;
                } else {
                    if (i4 >= iArr.length) {
                        int[] f32 = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                        this.f14038d3 = f32;
                        iArr = f32;
                    }
                    i12 = i4 + 1;
                    iArr[i4] = i10;
                    i4 = i12;
                    i10 = i14;
                    i11 = 1;
                }
            } else if (i14 == 34) {
                if (i11 > 0) {
                    if (i4 >= iArr.length) {
                        iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                        this.f14038d3 = iArr;
                    }
                    iArr[i4] = b.y3(i10, i11);
                    i4++;
                } else if (i4 == 0) {
                    return s3("");
                }
                String D = this.f14037c3.D(iArr, i4);
                if (D == null) {
                    D = o3(iArr, i4, i11);
                }
                return s3(D);
            } else {
                if (i14 != 92) {
                    T2(i14, "name");
                } else {
                    i14 = K3();
                    if (i14 < 0) {
                        this.f14047m3 = 8;
                        this.f14048n3 = 7;
                        this.f14039e3 = i4;
                        this.f14041g3 = i10;
                        this.f14042h3 = i11;
                        JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                        this.f13813h = jsonToken2;
                        return jsonToken2;
                    }
                }
                if (i4 >= iArr.length) {
                    iArr = com.fasterxml.jackson.core.base.b.f3(iArr, iArr.length);
                    this.f14038d3 = iArr;
                }
                if (i14 > 127) {
                    int i15 = 0;
                    if (i11 >= 4) {
                        iArr[i4] = i10;
                        i4++;
                        i10 = 0;
                        i11 = 0;
                    }
                    if (i14 < 2048) {
                        i10 = (i10 << 8) | (i14 >> 6) | 192;
                        i11++;
                    } else {
                        int i16 = (i10 << 8) | (i14 >> 12) | 224;
                        int i17 = i11 + 1;
                        if (i17 >= 4) {
                            iArr[i4] = i16;
                            i4++;
                            i17 = 0;
                        } else {
                            i15 = i16;
                        }
                        i10 = (i15 << 8) | ((i14 >> 6) & 63) | 128;
                        i11 = i17 + 1;
                    }
                    i14 = (i14 & 63) | 128;
                }
                if (i11 < 4) {
                    i11++;
                    i10 = (i10 << 8) | i14;
                } else {
                    i12 = i4 + 1;
                    iArr[i4] = i10;
                    i4 = i12;
                    i10 = i14;
                    i11 = 1;
                }
            }
        }
    }

    private final String t4(int i4, int i10) throws IOException {
        byte[] bArr = this.f14017q4;
        int[] iArr = A4;
        int i11 = i4 + 1;
        int i12 = bArr[i4] & 255;
        if (iArr[i12] != 0) {
            if (i12 == 34) {
                this.f13788x2 = i11;
                return u3(this.f14040f3, i10, 1);
            }
            return null;
        }
        int i13 = i12 | (i10 << 8);
        int i14 = i11 + 1;
        int i15 = bArr[i11] & 255;
        if (iArr[i15] != 0) {
            if (i15 == 34) {
                this.f13788x2 = i14;
                return u3(this.f14040f3, i13, 2);
            }
            return null;
        }
        int i16 = (i13 << 8) | i15;
        int i17 = i14 + 1;
        int i18 = bArr[i14] & 255;
        if (iArr[i18] != 0) {
            if (i18 == 34) {
                this.f13788x2 = i17;
                return u3(this.f14040f3, i16, 3);
            }
            return null;
        }
        int i19 = (i16 << 8) | i18;
        int i20 = i17 + 1;
        int i21 = bArr[i17] & 255;
        if (iArr[i21] == 0) {
            return u4(i20, i21, i19);
        }
        if (i21 == 34) {
            this.f13788x2 = i20;
            return u3(this.f14040f3, i19, 4);
        }
        return null;
    }

    private final String u4(int i4, int i10, int i11) throws IOException {
        byte[] bArr = this.f14017q4;
        int[] iArr = A4;
        int i12 = i4 + 1;
        int i13 = bArr[i4] & 255;
        if (iArr[i13] != 0) {
            if (i13 == 34) {
                this.f13788x2 = i12;
                return v3(this.f14040f3, i11, i10, 1);
            }
            return null;
        }
        int i14 = i13 | (i10 << 8);
        int i15 = i12 + 1;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            if (i16 == 34) {
                this.f13788x2 = i15;
                return v3(this.f14040f3, i11, i14, 2);
            }
            return null;
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i15 + 1;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] != 0) {
            if (i19 == 34) {
                this.f13788x2 = i18;
                return v3(this.f14040f3, i11, i17, 3);
            }
            return null;
        }
        int i20 = (i17 << 8) | i19;
        int i21 = i18 + 1;
        if ((bArr[i18] & 255) == 34) {
            this.f13788x2 = i21;
            return v3(this.f14040f3, i11, i20, 4);
        }
        return null;
    }

    private final int w4(int i4) throws IOException {
        do {
            if (i4 != 32) {
                if (i4 == 10) {
                    this.F2++;
                    this.G2 = this.f13788x2;
                } else if (i4 == 13) {
                    this.f14052r3++;
                    this.G2 = this.f13788x2;
                } else if (i4 != 9) {
                    q2(i4);
                }
            }
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f13813h = JsonToken.NOT_AVAILABLE;
                return 0;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i10 + 1;
            i4 = bArr[i10] & 255;
        } while (i4 <= 32);
        return i4;
    }

    private final JsonToken x4(int i4) throws IOException {
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14047m3 = i4;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this.f14017q4;
        this.f13788x2 = i10 + 1;
        int i11 = bArr[i10] & 255;
        if (i4 != 4) {
            if (i4 != 5) {
                switch (i4) {
                    case 12:
                        return N4(i11);
                    case 13:
                        return Q4(i11);
                    case 14:
                        return P4(i11);
                    case 15:
                        return O4(i11);
                    default:
                        l.f();
                        return null;
                }
            }
            return C4(i11);
        }
        return B4(i11);
    }

    private final JsonToken z4(int i4) throws IOException {
        int i10 = i4 & 255;
        if (i10 == 239 && this.f14047m3 != 1) {
            return W3(1);
        }
        while (i10 <= 32) {
            if (i10 != 32) {
                if (i10 == 10) {
                    this.F2++;
                    this.G2 = this.f13788x2;
                } else if (i10 == 13) {
                    this.f14052r3++;
                    this.G2 = this.f13788x2;
                } else if (i10 != 9) {
                    q2(i10);
                }
            }
            int i11 = this.f13788x2;
            if (i11 >= this.f13789y2) {
                this.f14047m3 = 3;
                if (this.f13787p2) {
                    return null;
                }
                if (this.f14049o3) {
                    return r3();
                }
                return JsonToken.NOT_AVAILABLE;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i11 + 1;
            i10 = bArr[i11] & 255;
        }
        return N4(i10);
    }

    protected JsonToken A4() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 4 < this.f13789y2) {
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            if (bArr[i10] == 97) {
                int i12 = i11 + 1;
                if (bArr[i11] == 108) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 115) {
                        int i14 = i13 + 1;
                        if (bArr[i13] == 101 && ((i4 = bArr[i14] & 255) < 48 || i4 == 93 || i4 == 125)) {
                            this.f13788x2 = i14;
                            return G3(JsonToken.VALUE_FALSE);
                        }
                    }
                }
            }
        }
        this.f14047m3 = 18;
        return f4("false", 1, JsonToken.VALUE_FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        r2 = r2 & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
        if (r9 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        z2(r2, "Decimal point not followed by a digit");
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00ec -> B:47:0x00c3). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken D4(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.a.D4(char[], int, int):com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken E4() throws IOException {
        this.X2 = false;
        this.Y2 = 0;
        return D4(this.M2.n(), 0, 46);
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected char F2() throws IOException {
        l.f();
        return ' ';
    }

    protected JsonToken F4() throws IOException {
        this.X2 = true;
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2) {
            this.f14047m3 = 23;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        byte[] bArr = this.f14017q4;
        this.f13788x2 = i4 + 1;
        int i10 = bArr[i4] & 255;
        int i11 = 2;
        if (i10 <= 48) {
            if (i10 == 48) {
                return k4();
            }
            z2(i10, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i10 > 57) {
            if (i10 == 73) {
                return h4(3, 2);
            }
            z2(i10, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] n9 = this.M2.n();
        n9[0] = shaded.org.apache.commons.codec.language.l.f93713d;
        n9[1] = (char) i10;
        int i12 = this.f13788x2;
        if (i12 >= this.f13789y2) {
            this.f14047m3 = 26;
            this.M2.J(2);
            this.Y2 = 1;
            JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken2;
            return jsonToken2;
        }
        int i13 = this.f14017q4[i12];
        while (true) {
            if (i13 < 48) {
                if (i13 == 46) {
                    this.Y2 = i11 - 1;
                    this.f13788x2++;
                    return D4(n9, i11, i13);
                }
            } else if (i13 <= 57) {
                if (i11 >= n9.length) {
                    n9 = this.M2.q();
                }
                int i14 = i11 + 1;
                n9[i11] = (char) i13;
                int i15 = this.f13788x2 + 1;
                this.f13788x2 = i15;
                if (i15 >= this.f13789y2) {
                    this.f14047m3 = 26;
                    this.M2.J(i14);
                    JsonToken jsonToken3 = JsonToken.NOT_AVAILABLE;
                    this.f13813h = jsonToken3;
                    return jsonToken3;
                }
                i13 = this.f14017q4[i15] & 255;
                i11 = i14;
            } else if (i13 == 101 || i13 == 69) {
                this.Y2 = i11 - 1;
                this.f13788x2++;
                return D4(n9, i11, i13);
            }
        }
        this.Y2 = i11 - 1;
        this.M2.J(i11);
        return G3(JsonToken.VALUE_NUMBER_INT);
    }

    protected JsonToken G4() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            if (bArr[i10] == 117) {
                int i12 = i11 + 1;
                if (bArr[i11] == 108) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 108 && ((i4 = bArr[i13] & 255) < 48 || i4 == 93 || i4 == 125)) {
                        this.f13788x2 = i13;
                        return G3(JsonToken.VALUE_NULL);
                    }
                }
            }
        }
        this.f14047m3 = 16;
        return f4("null", 1, JsonToken.VALUE_NULL);
    }

    protected JsonToken H4() throws IOException {
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2) {
            this.f14047m3 = 24;
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        int i10 = i4 + 1;
        int i11 = this.f14017q4[i4] & 255;
        if (i11 < 48) {
            if (i11 == 46) {
                this.f13788x2 = i10;
                this.Y2 = 1;
                char[] n9 = this.M2.n();
                n9[0] = '0';
                return D4(n9, 1, i11);
            }
        } else if (i11 <= 57) {
            return l4();
        } else {
            if (i11 == 101 || i11 == 69) {
                this.f13788x2 = i10;
                this.Y2 = 1;
                char[] n10 = this.M2.n();
                n10[0] = '0';
                return D4(n10, 1, i11);
            } else if (i11 != 93 && i11 != 125) {
                z2(i11, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
            }
        }
        return H3(0, "0");
    }

    protected JsonToken I4(int i4) throws IOException {
        this.X2 = false;
        char[] n9 = this.M2.n();
        n9[0] = (char) i4;
        int i10 = this.f13788x2;
        if (i10 >= this.f13789y2) {
            this.f14047m3 = 26;
            this.M2.J(1);
            JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
            this.f13813h = jsonToken;
            return jsonToken;
        }
        int i11 = this.f14017q4[i10] & 255;
        int i12 = 1;
        while (true) {
            if (i11 < 48) {
                if (i11 == 46) {
                    this.Y2 = i12;
                    this.f13788x2++;
                    return D4(n9, i12, i11);
                }
            } else if (i11 <= 57) {
                if (i12 >= n9.length) {
                    n9 = this.M2.q();
                }
                int i13 = i12 + 1;
                n9[i12] = (char) i11;
                int i14 = this.f13788x2 + 1;
                this.f13788x2 = i14;
                if (i14 >= this.f13789y2) {
                    this.f14047m3 = 26;
                    this.M2.J(i13);
                    JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                    this.f13813h = jsonToken2;
                    return jsonToken2;
                }
                i11 = this.f14017q4[i14] & 255;
                i12 = i13;
            } else if (i11 == 101 || i11 == 69) {
                this.Y2 = i12;
                this.f13788x2++;
                return D4(n9, i12, i11);
            }
        }
        this.Y2 = i12;
        this.M2.J(i12);
        return G3(JsonToken.VALUE_NUMBER_INT);
    }

    @Override // com.fasterxml.jackson.core.json.async.b, com.fasterxml.jackson.core.JsonParser
    public int K1(OutputStream outputStream) throws IOException {
        int i4 = this.f13789y2;
        int i10 = this.f13788x2;
        int i11 = i4 - i10;
        if (i11 > 0) {
            outputStream.write(this.f14017q4, i10, i11);
        }
        return i11;
    }

    protected JsonToken K4() throws IOException {
        int i4 = this.f13788x2;
        char[] n9 = this.M2.n();
        int[] iArr = f14016z4;
        int min = Math.min(this.f13789y2, n9.length + i4);
        byte[] bArr = this.f14017q4;
        int i10 = 0;
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
                return G3(JsonToken.VALUE_STRING);
            }
        }
        this.M2.J(i10);
        this.f13788x2 = i4;
        return n4();
    }

    protected JsonToken L4() throws IOException {
        int i4;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            byte[] bArr = this.f14017q4;
            int i11 = i10 + 1;
            if (bArr[i10] == 114) {
                int i12 = i11 + 1;
                if (bArr[i11] == 117) {
                    int i13 = i12 + 1;
                    if (bArr[i12] == 101 && ((i4 = bArr[i13] & 255) < 48 || i4 == 93 || i4 == 125)) {
                        this.f13788x2 = i13;
                        return G3(JsonToken.VALUE_TRUE);
                    }
                }
            }
        }
        this.f14047m3 = 17;
        return f4("true", 1, JsonToken.VALUE_TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
        if (r4 != 44) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
        if (r2.K2.k() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0033, code lost:
        if (r2.K2.m() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003a, code lost:
        if ((r2.f13716a & com.fasterxml.jackson.core.json.async.a.f14011u4) == 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003c, code lost:
        r2.f13788x2--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
        return G3(com.fasterxml.jackson.core.JsonToken.VALUE_NULL);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken M4(boolean r3, int r4) throws java.io.IOException {
        /*
            r2 = this;
            r3 = 39
            if (r4 == r3) goto L53
            r3 = 73
            r0 = 1
            if (r4 == r3) goto L4e
            r3 = 78
            if (r4 == r3) goto L48
            r3 = 93
            if (r4 == r3) goto L24
            r3 = 125(0x7d, float:1.75E-43)
            if (r4 == r3) goto L5f
            r3 = 43
            if (r4 == r3) goto L1e
            r3 = 44
            if (r4 == r3) goto L2d
            goto L5f
        L1e:
            r3 = 2
            com.fasterxml.jackson.core.JsonToken r3 = r2.h4(r3, r0)
            return r3
        L24:
            com.fasterxml.jackson.core.json.d r3 = r2.K2
            boolean r3 = r3.k()
            if (r3 != 0) goto L2d
            goto L5f
        L2d:
            com.fasterxml.jackson.core.json.d r3 = r2.K2
            boolean r3 = r3.m()
            if (r3 != 0) goto L5f
            int r3 = r2.f13716a
            int r1 = com.fasterxml.jackson.core.json.async.a.f14011u4
            r3 = r3 & r1
            if (r3 == 0) goto L5f
            int r3 = r2.f13788x2
            int r3 = r3 - r0
            r2.f13788x2 = r3
            com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            com.fasterxml.jackson.core.JsonToken r3 = r2.G3(r3)
            return r3
        L48:
            r3 = 0
            com.fasterxml.jackson.core.JsonToken r3 = r2.h4(r3, r0)
            return r3
        L4e:
            com.fasterxml.jackson.core.JsonToken r3 = r2.h4(r0, r0)
            return r3
        L53:
            int r3 = r2.f13716a
            int r0 = com.fasterxml.jackson.core.json.async.a.f14012v4
            r3 = r3 & r0
            if (r3 == 0) goto L5f
            com.fasterxml.jackson.core.JsonToken r3 = r2.y4()
            return r3
        L5f:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r0 = "expected a valid value "
            r3.append(r0)
            java.lang.String r0 = r2.V2()
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.o2(r4, r3)
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.a.M4(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    /* renamed from: R4 */
    public b2.a I0() {
        return this;
    }

    protected JsonToken Z3() throws IOException {
        do {
            int i4 = this.f13788x2;
            if (i4 < this.f13789y2) {
                byte[] bArr = this.f14017q4;
                this.f13788x2 = i4 + 1;
                char c10 = (char) bArr[i4];
                if (!Character.isJavaIdentifierPart(c10)) {
                    break;
                }
                this.M2.a(c10);
            } else {
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
        } while (this.M2.K() < 256);
        return v4(this.M2.l());
    }

    @Override // b2.a
    public void a(byte[] bArr, int i4, int i10) throws IOException {
        int i11 = this.f13788x2;
        int i12 = this.f13789y2;
        if (i11 < i12) {
            f2("Still have %d undecoded bytes, should not call 'feedInput'", Integer.valueOf(i12 - i11));
        }
        if (i10 < i4) {
            g2("Input end (%d) may not be before start (%d)", Integer.valueOf(i10), Integer.valueOf(i4));
        }
        if (this.f14049o3) {
            e2("Already closed, can not feed more input");
        }
        this.E2 += this.f14018r4;
        this.G2 = i4 - (this.f13789y2 - this.G2);
        this.f14051q3 = i4;
        this.f14017q4 = bArr;
        this.f13788x2 = i4;
        this.f13789y2 = i10;
        this.f14018r4 = i10 - i4;
    }

    protected JsonToken a4() throws IOException {
        return v4(this.M2.l());
    }

    @Override // b2.c
    public void b() {
        this.f14049o3 = true;
    }

    protected final JsonToken b4() throws IOException {
        int i4;
        int i10;
        int M3 = M3(this.f14043i3, this.f14044j3);
        if (M3 < 0) {
            this.f14047m3 = 8;
            return JsonToken.NOT_AVAILABLE;
        }
        int i11 = this.f14039e3;
        int[] iArr = this.f14038d3;
        if (i11 >= iArr.length) {
            this.f14038d3 = com.fasterxml.jackson.core.base.b.f3(iArr, 32);
        }
        int i12 = this.f14041g3;
        int i13 = this.f14042h3;
        int i14 = 1;
        if (M3 > 127) {
            int i15 = 0;
            if (i13 >= 4) {
                int[] iArr2 = this.f14038d3;
                int i16 = this.f14039e3;
                this.f14039e3 = i16 + 1;
                iArr2[i16] = i12;
                i12 = 0;
                i13 = 0;
            }
            if (M3 < 2048) {
                i4 = i12 << 8;
                i10 = (M3 >> 6) | 192;
            } else {
                int i17 = (i12 << 8) | (M3 >> 12) | 224;
                i13++;
                if (i13 >= 4) {
                    int[] iArr3 = this.f14038d3;
                    int i18 = this.f14039e3;
                    this.f14039e3 = i18 + 1;
                    iArr3[i18] = i17;
                    i13 = 0;
                } else {
                    i15 = i17;
                }
                i4 = i15 << 8;
                i10 = ((M3 >> 6) & 63) | 128;
            }
            i12 = i4 | i10;
            i13++;
            M3 = (M3 & 63) | 128;
        }
        if (i13 < 4) {
            i14 = 1 + i13;
            M3 |= i12 << 8;
        } else {
            int[] iArr4 = this.f14038d3;
            int i19 = this.f14039e3;
            this.f14039e3 = i19 + 1;
            iArr4[i19] = i12;
        }
        if (this.f14048n3 == 9) {
            return U3(this.f14039e3, M3, i14);
        }
        return s4(this.f14039e3, M3, i14);
    }

    protected JsonToken c4(boolean z9, int i4) throws IOException {
        if (z9) {
            this.f14047m3 = 32;
            if (i4 == 45 || i4 == 43) {
                this.M2.a((char) i4);
                int i10 = this.f13788x2;
                if (i10 >= this.f13789y2) {
                    this.f14047m3 = 32;
                    this.f13785a3 = 0;
                    return JsonToken.NOT_AVAILABLE;
                }
                byte[] bArr = this.f14017q4;
                this.f13788x2 = i10 + 1;
                i4 = bArr[i10];
            }
        }
        char[] u9 = this.M2.u();
        int w9 = this.M2.w();
        int i11 = this.f13785a3;
        while (i4 >= 48 && i4 <= 57) {
            i11++;
            if (w9 >= u9.length) {
                u9 = this.M2.q();
            }
            int i12 = w9 + 1;
            u9[w9] = (char) i4;
            int i13 = this.f13788x2;
            if (i13 >= this.f13789y2) {
                this.M2.J(i12);
                this.f13785a3 = i11;
                return JsonToken.NOT_AVAILABLE;
            }
            byte[] bArr2 = this.f14017q4;
            this.f13788x2 = i13 + 1;
            i4 = bArr2[i13];
            w9 = i12;
        }
        int i14 = i4 & 255;
        if (i11 == 0) {
            z2(i14, "Exponent indicator not followed by a digit");
        }
        this.f13788x2--;
        this.M2.J(w9);
        this.f13785a3 = i11;
        return G3(JsonToken.VALUE_NUMBER_FLOAT);
    }

    @Override // b2.c
    public final boolean d() {
        return this.f13788x2 >= this.f13789y2 && !this.f14049o3;
    }

    protected JsonToken d4() throws IOException {
        byte b10;
        int i4 = this.Z2;
        char[] u9 = this.M2.u();
        int w9 = this.M2.w();
        while (true) {
            byte[] bArr = this.f14017q4;
            int i10 = this.f13788x2;
            this.f13788x2 = i10 + 1;
            b10 = bArr[i10];
            if (b10 < 48 || b10 > 57) {
                break;
            }
            i4++;
            if (w9 >= u9.length) {
                u9 = this.M2.q();
            }
            int i11 = w9 + 1;
            u9[w9] = (char) b10;
            if (this.f13788x2 >= this.f13789y2) {
                this.M2.J(i11);
                this.Z2 = i4;
                return JsonToken.NOT_AVAILABLE;
            }
            w9 = i11;
        }
        if (i4 == 0) {
            z2(b10, "Decimal point not followed by a digit");
        }
        this.Z2 = i4;
        this.M2.J(w9);
        if (b10 != 101 && b10 != 69) {
            this.f13788x2--;
            this.M2.J(w9);
            this.f13785a3 = 0;
            return G3(JsonToken.VALUE_NUMBER_FLOAT);
        }
        this.M2.a((char) b10);
        this.f13785a3 = 0;
        int i12 = this.f13788x2;
        if (i12 >= this.f13789y2) {
            this.f14047m3 = 31;
            return JsonToken.NOT_AVAILABLE;
        }
        this.f14047m3 = 32;
        byte[] bArr2 = this.f14017q4;
        this.f13788x2 = i12 + 1;
        return c4(true, bArr2[i12] & 255);
    }

    protected JsonToken f4(String str, int i4, JsonToken jsonToken) throws IOException {
        int length = str.length();
        while (true) {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14041g3 = i4;
                JsonToken jsonToken2 = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken2;
                return jsonToken2;
            }
            byte b10 = this.f14017q4[i10];
            if (i4 == length) {
                if (b10 < 48 || b10 == 93 || b10 == 125) {
                    return G3(jsonToken);
                }
            } else if (b10 != str.charAt(i4)) {
                break;
            } else {
                i4++;
                this.f13788x2++;
            }
        }
        this.f14047m3 = 50;
        this.M2.C(str, 0, i4);
        return Z3();
    }

    protected JsonToken g4(String str, int i4, JsonToken jsonToken) throws IOException {
        if (i4 == str.length()) {
            this.f13813h = jsonToken;
            return jsonToken;
        }
        this.M2.C(str, 0, i4);
        return a4();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        r4.f14047m3 = 50;
        r4.M2.C(r0, 0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
        return Z3();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken h4(int r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = r4.x3(r5)
            int r1 = r0.length()
        L8:
            int r2 = r4.f13788x2
            int r3 = r4.f13789y2
            if (r2 < r3) goto L1b
            r4.f14050p3 = r5
            r4.f14041g3 = r6
            r5 = 19
            r4.f14047m3 = r5
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.NOT_AVAILABLE
            r4.f13813h = r5
            return r5
        L1b:
            byte[] r3 = r4.f14017q4
            r2 = r3[r2]
            if (r6 != r1) goto L32
            r1 = 48
            if (r2 < r1) goto L2d
            r1 = 93
            if (r2 == r1) goto L2d
            r1 = 125(0x7d, float:1.75E-43)
            if (r2 != r1) goto L38
        L2d:
            com.fasterxml.jackson.core.JsonToken r5 = r4.I3(r5)
            return r5
        L32:
            char r3 = r0.charAt(r6)
            if (r2 == r3) goto L47
        L38:
            r5 = 50
            r4.f14047m3 = r5
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            r1 = 0
            r5.C(r0, r1, r6)
            com.fasterxml.jackson.core.JsonToken r5 = r4.Z3()
            return r5
        L47:
            int r6 = r6 + 1
            int r2 = r4.f13788x2
            int r2 = r2 + 1
            r4.f13788x2 = r2
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.a.h4(int, int):com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken i4(int i4, int i10) throws IOException {
        String x32 = x3(i4);
        if (i10 == x32.length()) {
            return I3(i4);
        }
        this.M2.C(x32, 0, i10);
        return a4();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
        r4.Y2 = r0 + r6;
        r4.M2.J(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        return G3(com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken j4(char[] r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            boolean r0 = r4.X2
            if (r0 == 0) goto L6
            r0 = -1
            goto L7
        L6:
            r0 = 0
        L7:
            int r1 = r4.f13788x2
            int r2 = r4.f13789y2
            if (r1 < r2) goto L1b
            r5 = 26
            r4.f14047m3 = r5
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            r5.J(r6)
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.NOT_AVAILABLE
            r4.f13813h = r5
            return r5
        L1b:
            byte[] r2 = r4.f14017q4
            r2 = r2[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 48
            if (r2 >= r3) goto L35
            r3 = 46
            if (r2 != r3) goto L42
            int r0 = r0 + r6
            r4.Y2 = r0
            int r1 = r1 + 1
            r4.f13788x2 = r1
            com.fasterxml.jackson.core.JsonToken r5 = r4.D4(r5, r6, r2)
            return r5
        L35:
            r3 = 57
            if (r2 <= r3) goto L5d
            r3 = 101(0x65, float:1.42E-43)
            if (r2 == r3) goto L51
            r3 = 69
            if (r2 != r3) goto L42
            goto L51
        L42:
            int r0 = r0 + r6
            r4.Y2 = r0
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            r5.J(r6)
            com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT
            com.fasterxml.jackson.core.JsonToken r5 = r4.G3(r5)
            return r5
        L51:
            int r0 = r0 + r6
            r4.Y2 = r0
            int r1 = r1 + 1
            r4.f13788x2 = r1
            com.fasterxml.jackson.core.JsonToken r5 = r4.D4(r5, r6, r2)
            return r5
        L5d:
            int r1 = r1 + 1
            r4.f13788x2 = r1
            int r1 = r5.length
            if (r6 < r1) goto L6a
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            char[] r5 = r5.q()
        L6a:
            int r1 = r6 + 1
            char r2 = (char) r2
            r5[r6] = r2
            r6 = r1
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.a.j4(char[], int):com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken k4() throws IOException {
        int i4;
        do {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14047m3 = 25;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i10 + 1;
            i4 = bArr[i10] & 255;
            if (i4 < 48) {
                if (i4 == 46) {
                    char[] n9 = this.M2.n();
                    n9[0] = shaded.org.apache.commons.codec.language.l.f93713d;
                    n9[1] = '0';
                    this.Y2 = 1;
                    return D4(n9, 2, i4);
                }
            } else if (i4 > 57) {
                if (i4 == 101 || i4 == 69) {
                    char[] n10 = this.M2.n();
                    n10[0] = shaded.org.apache.commons.codec.language.l.f93713d;
                    n10[1] = '0';
                    this.Y2 = 1;
                    return D4(n10, 2, i4);
                } else if (i4 != 93 && i4 != 125) {
                    z2(i4, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
                }
            } else if ((this.f13716a & f14010t4) == 0) {
                s2("Leading zeroes not allowed");
                continue;
            }
            this.f13788x2--;
            return H3(0, "0");
        } while (i4 == 48);
        char[] n11 = this.M2.n();
        n11[0] = shaded.org.apache.commons.codec.language.l.f93713d;
        n11[1] = (char) i4;
        this.Y2 = 1;
        return j4(n11, 2);
    }

    protected JsonToken l4() throws IOException {
        int i4;
        do {
            int i10 = this.f13788x2;
            if (i10 >= this.f13789y2) {
                this.f14047m3 = 24;
                JsonToken jsonToken = JsonToken.NOT_AVAILABLE;
                this.f13813h = jsonToken;
                return jsonToken;
            }
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i10 + 1;
            i4 = bArr[i10] & 255;
            if (i4 < 48) {
                if (i4 == 46) {
                    char[] n9 = this.M2.n();
                    n9[0] = '0';
                    this.Y2 = 1;
                    return D4(n9, 1, i4);
                }
            } else if (i4 > 57) {
                if (i4 == 101 || i4 == 69) {
                    char[] n10 = this.M2.n();
                    n10[0] = '0';
                    this.Y2 = 1;
                    return D4(n10, 1, i4);
                } else if (i4 != 93 && i4 != 125) {
                    z2(i4, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow '0'");
                }
            } else if ((this.f13716a & f14010t4) == 0) {
                s2("Leading zeroes not allowed");
                continue;
            }
            this.f13788x2--;
            return H3(0, "0");
        } while (i4 == 48);
        char[] n11 = this.M2.n();
        n11[0] = (char) i4;
        this.Y2 = 1;
        return j4(n11, 1);
    }

    protected JsonToken m4(int i4) throws IOException {
        if (i4 <= 48) {
            if (i4 == 48) {
                return k4();
            }
            z2(i4, "expected digit (0-9) to follow minus sign, for valid numeric value");
        } else if (i4 > 57) {
            if (i4 == 73) {
                return h4(3, 2);
            }
            z2(i4, "expected digit (0-9) to follow minus sign, for valid numeric value");
        }
        char[] n9 = this.M2.n();
        n9[0] = shaded.org.apache.commons.codec.language.l.f93713d;
        n9[1] = (char) i4;
        this.Y2 = 1;
        return j4(n9, 2);
    }

    protected final JsonToken o4() throws IOException {
        int i4 = this.f14047m3;
        if (i4 != 1) {
            if (i4 == 4) {
                byte[] bArr = this.f14017q4;
                int i10 = this.f13788x2;
                this.f13788x2 = i10 + 1;
                return B4(bArr[i10] & 255);
            } else if (i4 != 5) {
                switch (i4) {
                    case 7:
                        return s4(this.f14039e3, this.f14041g3, this.f14042h3);
                    case 8:
                        return b4();
                    case 9:
                        return U3(this.f14039e3, this.f14041g3, this.f14042h3);
                    case 10:
                        return q4(this.f14039e3, this.f14041g3, this.f14042h3);
                    default:
                        switch (i4) {
                            case 12:
                                byte[] bArr2 = this.f14017q4;
                                int i11 = this.f13788x2;
                                this.f13788x2 = i11 + 1;
                                return N4(bArr2[i11] & 255);
                            case 13:
                                byte[] bArr3 = this.f14017q4;
                                int i12 = this.f13788x2;
                                this.f13788x2 = i12 + 1;
                                return Q4(bArr3[i12] & 255);
                            case 14:
                                byte[] bArr4 = this.f14017q4;
                                int i13 = this.f13788x2;
                                this.f13788x2 = i13 + 1;
                                return P4(bArr4[i13] & 255);
                            case 15:
                                byte[] bArr5 = this.f14017q4;
                                int i14 = this.f13788x2;
                                this.f13788x2 = i14 + 1;
                                return O4(bArr5[i14] & 255);
                            case 16:
                                return f4("null", this.f14041g3, JsonToken.VALUE_NULL);
                            case 17:
                                return f4("true", this.f14041g3, JsonToken.VALUE_TRUE);
                            case 18:
                                return f4("false", this.f14041g3, JsonToken.VALUE_FALSE);
                            case 19:
                                return h4(this.f14050p3, this.f14041g3);
                            default:
                                switch (i4) {
                                    case 23:
                                        byte[] bArr6 = this.f14017q4;
                                        int i15 = this.f13788x2;
                                        this.f13788x2 = i15 + 1;
                                        return m4(bArr6[i15] & 255);
                                    case 24:
                                        return l4();
                                    case 25:
                                        return k4();
                                    case 26:
                                        return j4(this.M2.u(), this.M2.w());
                                    default:
                                        switch (i4) {
                                            case 30:
                                                return d4();
                                            case 31:
                                                byte[] bArr7 = this.f14017q4;
                                                int i16 = this.f13788x2;
                                                this.f13788x2 = i16 + 1;
                                                return c4(true, bArr7[i16] & 255);
                                            case 32:
                                                byte[] bArr8 = this.f14017q4;
                                                int i17 = this.f13788x2;
                                                this.f13788x2 = i17 + 1;
                                                return c4(false, bArr8[i17] & 255);
                                            default:
                                                switch (i4) {
                                                    case 40:
                                                        return n4();
                                                    case 41:
                                                        int M3 = M3(this.f14043i3, this.f14044j3);
                                                        if (M3 < 0) {
                                                            return JsonToken.NOT_AVAILABLE;
                                                        }
                                                        this.M2.a((char) M3);
                                                        if (this.f14048n3 == 45) {
                                                            return V3();
                                                        }
                                                        return n4();
                                                    case 42:
                                                        j jVar = this.M2;
                                                        int i18 = this.f14041g3;
                                                        byte[] bArr9 = this.f14017q4;
                                                        int i19 = this.f13788x2;
                                                        this.f13788x2 = i19 + 1;
                                                        jVar.a((char) Q3(i18, bArr9[i19]));
                                                        if (this.f14048n3 == 45) {
                                                            return V3();
                                                        }
                                                        return n4();
                                                    case 43:
                                                        int i20 = this.f14041g3;
                                                        int i21 = this.f14042h3;
                                                        byte[] bArr10 = this.f14017q4;
                                                        int i22 = this.f13788x2;
                                                        this.f13788x2 = i22 + 1;
                                                        if (!O3(i20, i21, bArr10[i22])) {
                                                            return JsonToken.NOT_AVAILABLE;
                                                        }
                                                        if (this.f14048n3 == 45) {
                                                            return V3();
                                                        }
                                                        return n4();
                                                    case 44:
                                                        int i23 = this.f14041g3;
                                                        int i24 = this.f14042h3;
                                                        byte[] bArr11 = this.f14017q4;
                                                        int i25 = this.f13788x2;
                                                        this.f13788x2 = i25 + 1;
                                                        if (!P3(i23, i24, bArr11[i25])) {
                                                            return JsonToken.NOT_AVAILABLE;
                                                        }
                                                        if (this.f14048n3 == 45) {
                                                            return V3();
                                                        }
                                                        return n4();
                                                    case 45:
                                                        return V3();
                                                    default:
                                                        switch (i4) {
                                                            case 50:
                                                                return Z3();
                                                            case 51:
                                                                return J4(this.f14041g3);
                                                            case 52:
                                                                return X3(this.f14041g3, true);
                                                            case 53:
                                                                return X3(this.f14041g3, false);
                                                            case 54:
                                                                return Y3(this.f14041g3);
                                                            case 55:
                                                                return e4(this.f14041g3);
                                                            default:
                                                                l.f();
                                                                return null;
                                                        }
                                                }
                                        }
                                }
                        }
                }
            } else {
                byte[] bArr12 = this.f14017q4;
                int i26 = this.f13788x2;
                this.f13788x2 = i26 + 1;
                return C4(bArr12[i26] & 255);
            }
        }
        return W3(this.f14041g3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected final JsonToken p4() throws IOException {
        JsonToken jsonToken = this.f13813h;
        int i4 = this.f14047m3;
        if (i4 != 3) {
            if (i4 != 12) {
                if (i4 != 50) {
                    switch (i4) {
                        case 16:
                            return g4("null", this.f14041g3, JsonToken.VALUE_NULL);
                        case 17:
                            return g4("true", this.f14041g3, JsonToken.VALUE_TRUE);
                        case 18:
                            return g4("false", this.f14041g3, JsonToken.VALUE_FALSE);
                        case 19:
                            return i4(this.f14050p3, this.f14041g3);
                        default:
                            switch (i4) {
                                case 24:
                                case 25:
                                    return H3(0, "0");
                                case 26:
                                    int w9 = this.M2.w();
                                    if (this.X2) {
                                        w9--;
                                    }
                                    this.Y2 = w9;
                                    return G3(JsonToken.VALUE_NUMBER_INT);
                                default:
                                    switch (i4) {
                                        case 30:
                                            this.f13785a3 = 0;
                                            return G3(JsonToken.VALUE_NUMBER_FLOAT);
                                        case 31:
                                            k2(": was expecting fraction after exponent marker", JsonToken.VALUE_NUMBER_FLOAT);
                                            k2(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                            return r3();
                                        case 32:
                                            return G3(JsonToken.VALUE_NUMBER_FLOAT);
                                        default:
                                            switch (i4) {
                                                case 52:
                                                case 53:
                                                    k2(": was expecting closing '*/' for comment", JsonToken.NOT_AVAILABLE);
                                                    break;
                                                case 54:
                                                case 55:
                                                    break;
                                                default:
                                                    k2(": was expecting rest of token (internal state: " + this.f14047m3 + ")", this.f13813h);
                                                    return jsonToken;
                                            }
                                            return r3();
                                    }
                            }
                    }
                }
                return a4();
            }
            return r3();
        }
        return r3();
    }

    protected JsonToken v4(String str) throws IOException {
        g2("Unrecognized token '%s': was expecting %s", this.M2.l(), U2());
        return JsonToken.NOT_AVAILABLE;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2) {
            if (this.f13787p2) {
                return null;
            }
            if (this.f14049o3) {
                if (this.f13813h == JsonToken.NOT_AVAILABLE) {
                    return p4();
                }
                return r3();
            }
            return JsonToken.NOT_AVAILABLE;
        } else if (this.f13813h == JsonToken.NOT_AVAILABLE) {
            return o4();
        } else {
            this.R2 = 0;
            this.H2 = this.E2 + i4;
            this.Q2 = null;
            byte[] bArr = this.f14017q4;
            this.f13788x2 = i4 + 1;
            int i10 = bArr[i4] & 255;
            switch (this.f14045k3) {
                case 0:
                    return z4(i10);
                case 1:
                    return N4(i10);
                case 2:
                    return B4(i10);
                case 3:
                    return C4(i10);
                case 4:
                    return P4(i10);
                case 5:
                    return N4(i10);
                case 6:
                    return Q4(i10);
                default:
                    l.f();
                    return null;
            }
        }
    }

    protected JsonToken y4() throws IOException {
        int i4 = this.f13788x2;
        char[] n9 = this.M2.n();
        int[] iArr = f14016z4;
        int min = Math.min(this.f13789y2, n9.length + i4);
        byte[] bArr = this.f14017q4;
        int i10 = 0;
        while (i4 < min) {
            int i11 = bArr[i4] & 255;
            if (i11 == 39) {
                this.f13788x2 = i4 + 1;
                this.M2.J(i10);
                return G3(JsonToken.VALUE_STRING);
            } else if (iArr[i11] != 0) {
                break;
            } else {
                i4++;
                n9[i10] = (char) i11;
                i10++;
            }
        }
        this.M2.J(i10);
        this.f13788x2 = i4;
        return V3();
    }
}
