package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.google.android.exoplayer2.analytics.j1;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Arrays;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: UTF8DataInputJsonParser.java */
/* loaded from: classes.dex */
public class h extends com.fasterxml.jackson.core.base.b {

    /* renamed from: j3  reason: collision with root package name */
    static final byte f14101j3 = 10;

    /* renamed from: k3  reason: collision with root package name */
    private static final int f14102k3 = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();

    /* renamed from: l3  reason: collision with root package name */
    private static final int f14103l3 = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();

    /* renamed from: m3  reason: collision with root package name */
    private static final int f14104m3 = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();

    /* renamed from: n3  reason: collision with root package name */
    private static final int f14105n3 = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();

    /* renamed from: o3  reason: collision with root package name */
    private static final int f14106o3 = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();

    /* renamed from: p3  reason: collision with root package name */
    private static final int f14107p3 = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();

    /* renamed from: q3  reason: collision with root package name */
    private static final int f14108q3 = JsonParser.Feature.ALLOW_COMMENTS.getMask();

    /* renamed from: r3  reason: collision with root package name */
    private static final int f14109r3 = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();

    /* renamed from: s3  reason: collision with root package name */
    private static final int[] f14110s3 = com.fasterxml.jackson.core.io.b.j();

    /* renamed from: t3  reason: collision with root package name */
    protected static final int[] f14111t3 = com.fasterxml.jackson.core.io.b.h();

    /* renamed from: c3  reason: collision with root package name */
    protected com.fasterxml.jackson.core.h f14112c3;

    /* renamed from: d3  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.sym.a f14113d3;

    /* renamed from: e3  reason: collision with root package name */
    protected int[] f14114e3;

    /* renamed from: f3  reason: collision with root package name */
    protected boolean f14115f3;

    /* renamed from: g3  reason: collision with root package name */
    private int f14116g3;

    /* renamed from: h3  reason: collision with root package name */
    protected DataInput f14117h3;

    /* renamed from: i3  reason: collision with root package name */
    protected int f14118i3;

    public h(com.fasterxml.jackson.core.io.d dVar, int i4, DataInput dataInput, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.a aVar, int i10) {
        super(dVar, i4);
        this.f14114e3 = new int[16];
        this.f14112c3 = hVar;
        this.f14113d3 = aVar;
        this.f14117h3 = dataInput;
        this.f14118i3 = i10;
    }

    private final int B3() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (readUnsignedByte >= 48 && readUnsignedByte <= 57) {
            if ((this.f13716a & f14103l3) == 0) {
                s2("Leading zeroes not allowed");
            }
            while (readUnsignedByte == 48) {
                readUnsignedByte = this.f14117h3.readUnsignedByte();
            }
        }
        return readUnsignedByte;
    }

    private final JsonToken F3() {
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

    private final JsonToken G3(int i4) throws IOException {
        if (i4 == 34) {
            this.f14115f3 = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this.f13813h = jsonToken;
            return jsonToken;
        } else if (i4 == 45) {
            JsonToken O3 = O3();
            this.f13813h = O3;
            return O3;
        } else if (i4 == 46) {
            JsonToken J3 = J3();
            this.f13813h = J3;
            return J3;
        } else if (i4 == 91) {
            this.K2 = this.K2.u(this.I2, this.J2);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this.f13813h = jsonToken2;
            return jsonToken2;
        } else if (i4 == 102) {
            E3("false", 1);
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this.f13813h = jsonToken3;
            return jsonToken3;
        } else if (i4 == 110) {
            E3("null", 1);
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this.f13813h = jsonToken4;
            return jsonToken4;
        } else if (i4 == 116) {
            E3("true", 1);
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
                    JsonToken P3 = P3(i4);
                    this.f13813h = P3;
                    return P3;
                default:
                    JsonToken D3 = D3(i4);
                    this.f13813h = D3;
                    return D3;
            }
        } else {
            this.K2 = this.K2.v(this.I2, this.J2);
            JsonToken jsonToken6 = JsonToken.START_OBJECT;
            this.f13813h = jsonToken6;
            return jsonToken6;
        }
    }

    private final JsonToken I3(char[] cArr, int i4, int i10, boolean z9, int i11) throws IOException {
        int i12;
        int i13;
        int readUnsignedByte;
        int i14 = 0;
        if (i10 == 46) {
            cArr[i4] = (char) i10;
            i4++;
            int i15 = 0;
            while (true) {
                readUnsignedByte = this.f14117h3.readUnsignedByte();
                if (readUnsignedByte < 48 || readUnsignedByte > 57) {
                    break;
                }
                i15++;
                if (i4 >= cArr.length) {
                    cArr = this.M2.s();
                    i4 = 0;
                }
                cArr[i4] = (char) readUnsignedByte;
                i4++;
            }
            if (i15 == 0) {
                z2(readUnsignedByte, "Decimal point not followed by a digit");
            }
            i12 = i15;
            i10 = readUnsignedByte;
        } else {
            i12 = 0;
        }
        if (i10 == 101 || i10 == 69) {
            if (i4 >= cArr.length) {
                cArr = this.M2.s();
                i4 = 0;
            }
            int i16 = i4 + 1;
            cArr[i4] = (char) i10;
            int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
            if (readUnsignedByte2 == 45 || readUnsignedByte2 == 43) {
                if (i16 >= cArr.length) {
                    cArr = this.M2.s();
                    i16 = 0;
                }
                int i17 = i16 + 1;
                cArr[i16] = (char) readUnsignedByte2;
                i13 = 0;
                i10 = this.f14117h3.readUnsignedByte();
                i4 = i17;
            } else {
                i10 = readUnsignedByte2;
                i4 = i16;
                i13 = 0;
            }
            while (i10 <= 57 && i10 >= 48) {
                i13++;
                if (i4 >= cArr.length) {
                    cArr = this.M2.s();
                    i4 = 0;
                }
                cArr[i4] = (char) i10;
                i10 = this.f14117h3.readUnsignedByte();
                i4++;
            }
            if (i13 == 0) {
                z2(i10, "Exponent indicator not followed by a digit");
            }
            i14 = i13;
        }
        this.f14118i3 = i10;
        if (this.K2.m()) {
            j4();
        }
        this.M2.J(i4);
        return m3(z9, i11, i12, i14);
    }

    private final String K3(int i4, int i10, int i11) throws IOException {
        int[] iArr = this.f14114e3;
        iArr[0] = this.f14116g3;
        iArr[1] = i10;
        iArr[2] = i11;
        int[] iArr2 = f14111t3;
        int i12 = i4;
        int i13 = 3;
        while (true) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (iArr2[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return o4(this.f14114e3, i13, i12, 1);
                }
                return q4(this.f14114e3, i13, i12, readUnsignedByte, 1);
            }
            int i14 = (i12 << 8) | readUnsignedByte;
            int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
            if (iArr2[readUnsignedByte2] != 0) {
                if (readUnsignedByte2 == 34) {
                    return o4(this.f14114e3, i13, i14, 2);
                }
                return q4(this.f14114e3, i13, i14, readUnsignedByte2, 2);
            }
            int i15 = (i14 << 8) | readUnsignedByte2;
            int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
            if (iArr2[readUnsignedByte3] != 0) {
                if (readUnsignedByte3 == 34) {
                    return o4(this.f14114e3, i13, i15, 3);
                }
                return q4(this.f14114e3, i13, i15, readUnsignedByte3, 3);
            }
            int i16 = (i15 << 8) | readUnsignedByte3;
            int readUnsignedByte4 = this.f14117h3.readUnsignedByte();
            if (iArr2[readUnsignedByte4] != 0) {
                if (readUnsignedByte4 == 34) {
                    return o4(this.f14114e3, i13, i16, 4);
                }
                return q4(this.f14114e3, i13, i16, readUnsignedByte4, 4);
            }
            int[] iArr3 = this.f14114e3;
            if (i13 >= iArr3.length) {
                this.f14114e3 = y3(iArr3, i13);
            }
            this.f14114e3[i13] = i16;
            i13++;
            i12 = readUnsignedByte4;
        }
    }

    private final String L3(int i4) throws IOException {
        int[] iArr = f14111t3;
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return m4(this.f14116g3, i4, 1);
            }
            return s4(this.f14116g3, i4, readUnsignedByte, 1);
        }
        int i10 = (i4 << 8) | readUnsignedByte;
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return m4(this.f14116g3, i10, 2);
            }
            return s4(this.f14116g3, i10, readUnsignedByte2, 2);
        }
        int i11 = (i10 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return m4(this.f14116g3, i11, 3);
            }
            return s4(this.f14116g3, i11, readUnsignedByte3, 3);
        }
        int i12 = (i11 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return m4(this.f14116g3, i12, 4);
            }
            return s4(this.f14116g3, i12, readUnsignedByte4, 4);
        }
        return M3(readUnsignedByte4, i12);
    }

    private final String M3(int i4, int i10) throws IOException {
        int[] iArr = f14111t3;
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            if (readUnsignedByte == 34) {
                return n4(this.f14116g3, i10, i4, 1);
            }
            return t4(this.f14116g3, i10, i4, readUnsignedByte, 1);
        }
        int i11 = (i4 << 8) | readUnsignedByte;
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return n4(this.f14116g3, i10, i11, 2);
            }
            return t4(this.f14116g3, i10, i11, readUnsignedByte2, 2);
        }
        int i12 = (i11 << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return n4(this.f14116g3, i10, i12, 3);
            }
            return t4(this.f14116g3, i10, i12, readUnsignedByte3, 3);
        }
        int i13 = (i12 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return n4(this.f14116g3, i10, i13, 4);
            }
            return t4(this.f14116g3, i10, i13, readUnsignedByte4, 4);
        }
        return K3(readUnsignedByte4, i10, i13);
    }

    private void T3(int i4) throws JsonParseException {
        e2("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i4));
    }

    private final void W3() throws IOException {
        int[] g4 = com.fasterxml.jackson.core.io.b.g();
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        while (true) {
            int i4 = g4[readUnsignedByte];
            if (i4 != 0) {
                if (i4 == 2) {
                    c4();
                } else if (i4 == 3) {
                    d4();
                } else if (i4 == 4) {
                    e4();
                } else if (i4 == 10 || i4 == 13) {
                    this.F2++;
                } else if (i4 != 42) {
                    R3(readUnsignedByte);
                } else {
                    readUnsignedByte = this.f14117h3.readUnsignedByte();
                    if (readUnsignedByte == 47) {
                        return;
                    }
                }
            }
            readUnsignedByte = this.f14117h3.readUnsignedByte();
        }
    }

    private final int X3() throws IOException {
        int i4 = this.f14118i3;
        if (i4 < 0) {
            i4 = this.f14117h3.readUnsignedByte();
        } else {
            this.f14118i3 = -1;
        }
        if (i4 == 58) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (readUnsignedByte > 32) {
                return (readUnsignedByte == 47 || readUnsignedByte == 35) ? Y3(readUnsignedByte, true) : readUnsignedByte;
            } else if ((readUnsignedByte == 32 || readUnsignedByte == 9) && (readUnsignedByte = this.f14117h3.readUnsignedByte()) > 32) {
                return (readUnsignedByte == 47 || readUnsignedByte == 35) ? Y3(readUnsignedByte, true) : readUnsignedByte;
            } else {
                return Y3(readUnsignedByte, true);
            }
        }
        if (i4 == 32 || i4 == 9) {
            i4 = this.f14117h3.readUnsignedByte();
        }
        if (i4 == 58) {
            int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
            if (readUnsignedByte2 > 32) {
                return (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) ? Y3(readUnsignedByte2, true) : readUnsignedByte2;
            } else if ((readUnsignedByte2 == 32 || readUnsignedByte2 == 9) && (readUnsignedByte2 = this.f14117h3.readUnsignedByte()) > 32) {
                return (readUnsignedByte2 == 47 || readUnsignedByte2 == 35) ? Y3(readUnsignedByte2, true) : readUnsignedByte2;
            } else {
                return Y3(readUnsignedByte2, true);
            }
        }
        return Y3(i4, false);
    }

    private final int Y3(int i4, boolean z9) throws IOException {
        while (true) {
            if (i4 > 32) {
                if (i4 == 47) {
                    Z3();
                } else if (i4 != 35 || !i4()) {
                    if (z9) {
                        return i4;
                    }
                    if (i4 != 58) {
                        o2(i4, "was expecting a colon to separate field name and value");
                    }
                    z9 = true;
                }
            } else if (i4 == 13 || i4 == 10) {
                this.F2++;
            }
            i4 = this.f14117h3.readUnsignedByte();
        }
    }

    private final void Z3() throws IOException {
        if ((this.f13716a & f14108q3) == 0) {
            o2(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (readUnsignedByte == 47) {
            a4();
        } else if (readUnsignedByte == 42) {
            W3();
        } else {
            o2(readUnsignedByte, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void a4() throws IOException {
        int[] g4 = com.fasterxml.jackson.core.io.b.g();
        while (true) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            int i4 = g4[readUnsignedByte];
            if (i4 != 0) {
                if (i4 == 2) {
                    c4();
                } else if (i4 == 3) {
                    d4();
                } else if (i4 == 4) {
                    e4();
                } else if (i4 == 10 || i4 == 13) {
                    break;
                } else if (i4 != 42 && i4 < 0) {
                    R3(readUnsignedByte);
                }
            }
        }
        this.F2++;
    }

    private final void c4() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
    }

    private final void d4() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            T3(readUnsignedByte2 & 255);
        }
    }

    private final void e4() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            T3(readUnsignedByte2 & 255);
        }
        int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte3 & 192) != 128) {
            T3(readUnsignedByte3 & 255);
        }
    }

    private final int f4() throws IOException {
        int i4 = this.f14118i3;
        if (i4 < 0) {
            i4 = this.f14117h3.readUnsignedByte();
        } else {
            this.f14118i3 = -1;
        }
        while (i4 <= 32) {
            if (i4 == 13 || i4 == 10) {
                this.F2++;
            }
            i4 = this.f14117h3.readUnsignedByte();
        }
        return (i4 == 47 || i4 == 35) ? g4(i4) : i4;
    }

    private final int g4(int i4) throws IOException {
        while (true) {
            if (i4 > 32) {
                if (i4 == 47) {
                    Z3();
                } else if (i4 != 35 || !i4()) {
                    break;
                }
            } else if (i4 == 13 || i4 == 10) {
                this.F2++;
            }
            i4 = this.f14117h3.readUnsignedByte();
        }
        return i4;
    }

    private final int h4() throws IOException {
        int i4 = this.f14118i3;
        if (i4 < 0) {
            try {
                i4 = this.f14117h3.readUnsignedByte();
            } catch (EOFException unused) {
                return G2();
            }
        } else {
            this.f14118i3 = -1;
        }
        while (i4 <= 32) {
            if (i4 == 13 || i4 == 10) {
                this.F2++;
            }
            try {
                i4 = this.f14117h3.readUnsignedByte();
            } catch (EOFException unused2) {
                return G2();
            }
        }
        return (i4 == 47 || i4 == 35) ? g4(i4) : i4;
    }

    private final boolean i4() throws IOException {
        if ((this.f13716a & f14109r3) == 0) {
            return false;
        }
        a4();
        return true;
    }

    private final void j4() throws IOException {
        int i4 = this.f14118i3;
        if (i4 <= 32) {
            this.f14118i3 = -1;
            if (i4 == 13 || i4 == 10) {
                this.F2++;
                return;
            }
            return;
        }
        n2(i4);
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
    private final java.lang.String k4(int[] r17, int r18, int r19) throws com.fasterxml.jackson.core.JsonParseException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.h.k4(int[], int, int):java.lang.String");
    }

    private final String l4(int i4, int i10) throws JsonParseException {
        int p42 = p4(i4, i10);
        String A = this.f14113d3.A(p42);
        if (A != null) {
            return A;
        }
        int[] iArr = this.f14114e3;
        iArr[0] = p42;
        return k4(iArr, 1, i10);
    }

    private final String m4(int i4, int i10, int i11) throws JsonParseException {
        int p42 = p4(i10, i11);
        String B = this.f14113d3.B(i4, p42);
        if (B != null) {
            return B;
        }
        int[] iArr = this.f14114e3;
        iArr[0] = i4;
        iArr[1] = p42;
        return k4(iArr, 2, i11);
    }

    private final String n4(int i4, int i10, int i11, int i12) throws JsonParseException {
        int p42 = p4(i11, i12);
        String C = this.f14113d3.C(i4, i10, p42);
        if (C != null) {
            return C;
        }
        int[] iArr = this.f14114e3;
        iArr[0] = i4;
        iArr[1] = i10;
        iArr[2] = p4(p42, i12);
        return k4(iArr, 3, i12);
    }

    private final void o3(String str, int i4, int i10) throws IOException {
        char r32 = (char) r3(i10);
        if (Character.isJavaIdentifierPart(r32)) {
            U3(r32, str.substring(0, i4));
        }
    }

    private final String o4(int[] iArr, int i4, int i10, int i11) throws JsonParseException {
        if (i4 >= iArr.length) {
            iArr = y3(iArr, iArr.length);
            this.f14114e3 = iArr;
        }
        int i12 = i4 + 1;
        iArr[i4] = p4(i10, i11);
        String D = this.f14113d3.D(iArr, i12);
        return D == null ? k4(iArr, i12, i11) : D;
    }

    private void p3(int i4) throws JsonParseException {
        if (i4 == 93) {
            if (!this.K2.k()) {
                R2(i4, '}');
            }
            this.K2 = this.K2.t();
            this.f13813h = JsonToken.END_ARRAY;
        }
        if (i4 == 125) {
            if (!this.K2.l()) {
                R2(i4, ']');
            }
            this.K2 = this.K2.t();
            this.f13813h = JsonToken.END_OBJECT;
        }
    }

    private static final int p4(int i4, int i10) {
        return i10 == 4 ? i4 : i4 | ((-1) << (i10 << 3));
    }

    private final String r4(int i4, int i10, int i11) throws IOException {
        return q4(this.f14114e3, 0, i4, i10, i11);
    }

    private final int s3(int i4) throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
        return ((i4 & 31) << 6) | (readUnsignedByte & 63);
    }

    private final String s4(int i4, int i10, int i11, int i12) throws IOException {
        int[] iArr = this.f14114e3;
        iArr[0] = i4;
        return q4(iArr, 1, i10, i11, i12);
    }

    private final int t3(int i4) throws IOException {
        int i10 = i4 & 15;
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
        int i11 = (i10 << 6) | (readUnsignedByte & 63);
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            T3(readUnsignedByte2 & 255);
        }
        return (i11 << 6) | (readUnsignedByte2 & 63);
    }

    private final String t4(int i4, int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr = this.f14114e3;
        iArr[0] = i4;
        iArr[1] = i10;
        return q4(iArr, 2, i11, i12, i13);
    }

    private final int u3(int i4) throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte & 192) != 128) {
            T3(readUnsignedByte & 255);
        }
        int i10 = ((i4 & 7) << 6) | (readUnsignedByte & 63);
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte2 & 192) != 128) {
            T3(readUnsignedByte2 & 255);
        }
        int i11 = (i10 << 6) | (readUnsignedByte2 & 63);
        int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
        if ((readUnsignedByte3 & 192) != 128) {
            T3(readUnsignedByte3 & 255);
        }
        return ((i11 << 6) | (readUnsignedByte3 & 63)) - 65536;
    }

    private String v3() throws IOException {
        char[] n9 = this.M2.n();
        int[] iArr = f14110s3;
        int length = n9.length;
        int i4 = 0;
        while (true) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return this.M2.I(i4);
                }
                w3(n9, i4, readUnsignedByte);
                return this.M2.l();
            }
            int i10 = i4 + 1;
            n9[i4] = (char) readUnsignedByte;
            if (i10 >= length) {
                w3(n9, i10, this.f14117h3.readUnsignedByte());
                return this.M2.l();
            }
            i4 = i10;
        }
    }

    private final void w3(char[] cArr, int i4, int i10) throws IOException {
        int[] iArr = f14110s3;
        int length = cArr.length;
        while (true) {
            int i11 = 0;
            if (iArr[i10] == 0) {
                if (i4 >= length) {
                    cArr = this.M2.s();
                    length = cArr.length;
                    i4 = 0;
                }
                cArr[i4] = (char) i10;
                i10 = this.f14117h3.readUnsignedByte();
                i4++;
            } else if (i10 == 34) {
                this.M2.J(i4);
                return;
            } else {
                int i12 = iArr[i10];
                if (i12 == 1) {
                    i10 = F2();
                } else if (i12 == 2) {
                    i10 = s3(i10);
                } else if (i12 == 3) {
                    i10 = t3(i10);
                } else if (i12 == 4) {
                    int u32 = u3(i10);
                    if (i4 >= cArr.length) {
                        cArr = this.M2.s();
                        length = cArr.length;
                        i4 = 0;
                    }
                    cArr[i4] = (char) (55296 | (u32 >> 10));
                    i10 = (u32 & j1.M) | 56320;
                    i4++;
                } else if (i10 < 32) {
                    T2(i10, "string value");
                } else {
                    R3(i10);
                }
                if (i4 >= cArr.length) {
                    cArr = this.M2.s();
                    length = cArr.length;
                } else {
                    i11 = i4;
                }
                i4 = i11 + 1;
                cArr[i11] = (char) i10;
                i10 = this.f14117h3.readUnsignedByte();
            }
        }
    }

    private static int[] y3(int[] iArr, int i4) {
        if (iArr == null) {
            return new int[i4];
        }
        return Arrays.copyOf(iArr, iArr.length + i4);
    }

    protected JsonToken A3(int i4, boolean z9) throws IOException {
        String str;
        while (i4 == 73) {
            i4 = this.f14117h3.readUnsignedByte();
            if (i4 != 78) {
                if (i4 != 110) {
                    break;
                }
                str = z9 ? "-Infinity" : "+Infinity";
            } else {
                str = z9 ? "-INF" : "+INF";
            }
            E3(str, 3);
            if ((this.f13716a & f14104m3) != 0) {
                return l3(str, z9 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            e2("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        }
        z2(i4, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void B2() throws IOException {
    }

    protected String C3(int i4) throws IOException {
        if (i4 == 39 && (this.f13716a & f14106o3) != 0) {
            return H3();
        }
        if ((this.f13716a & f14107p3) == 0) {
            o2((char) r3(i4), "was expecting double-quote to start field name");
        }
        int[] k10 = com.fasterxml.jackson.core.io.b.k();
        if (k10[i4] != 0) {
            o2(i4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArr = this.f14114e3;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        do {
            if (i10 < 4) {
                i10++;
                i12 = i4 | (i12 << 8);
            } else {
                if (i11 >= iArr.length) {
                    iArr = y3(iArr, iArr.length);
                    this.f14114e3 = iArr;
                }
                iArr[i11] = i12;
                i12 = i4;
                i11++;
                i10 = 1;
            }
            i4 = this.f14117h3.readUnsignedByte();
        } while (k10[i4] == 0);
        this.f14118i3 = i4;
        if (i10 > 0) {
            if (i11 >= iArr.length) {
                int[] y32 = y3(iArr, iArr.length);
                this.f14114e3 = y32;
                iArr = y32;
            }
            iArr[i11] = i12;
            i11++;
        }
        String D = this.f14113d3.D(iArr, i11);
        return D == null ? k4(iArr, i11, i10) : D;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (this.f14115f3 && this.f13813h == JsonToken.VALUE_STRING) {
            byte[] d4 = this.f13786g2.d();
            try {
                return Q3(base64Variant, outputStream, d4);
            } finally {
                this.f13786g2.s(d4);
            }
        }
        byte[] p02 = p0(base64Variant);
        outputStream.write(p02);
        return p02.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
        if (r4 != 44) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
        if (r3.K2.k() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0039, code lost:
        if (r3.K2.m() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
        if ((r3.f13716a & com.fasterxml.jackson.core.json.h.f14105n3) == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
        r3.f14118i3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken D3(int r4) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 39
            if (r4 == r0) goto L7f
            r0 = 73
            r1 = 1
            if (r4 == r0) goto L66
            r0 = 78
            if (r4 == r0) goto L4d
            r0 = 93
            if (r4 == r0) goto L2a
            r0 = 125(0x7d, float:1.75E-43)
            if (r4 == r0) goto L47
            r0 = 43
            if (r4 == r0) goto L1e
            r0 = 44
            if (r4 == r0) goto L33
            goto L8b
        L1e:
            java.io.DataInput r4 = r3.f14117h3
            int r4 = r4.readUnsignedByte()
            r0 = 0
            com.fasterxml.jackson.core.JsonToken r4 = r3.A3(r4, r0)
            return r4
        L2a:
            com.fasterxml.jackson.core.json.d r0 = r3.K2
            boolean r0 = r0.k()
            if (r0 != 0) goto L33
            goto L8b
        L33:
            com.fasterxml.jackson.core.json.d r0 = r3.K2
            boolean r0 = r0.m()
            if (r0 != 0) goto L47
            int r0 = r3.f13716a
            int r1 = com.fasterxml.jackson.core.json.h.f14105n3
            r0 = r0 & r1
            if (r0 == 0) goto L47
            r3.f14118i3 = r4
            com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            return r4
        L47:
            java.lang.String r0 = "expected a value"
            r3.o2(r4, r0)
            goto L7f
        L4d:
            java.lang.String r0 = "NaN"
            r3.E3(r0, r1)
            int r1 = r3.f13716a
            int r2 = com.fasterxml.jackson.core.json.h.f14104m3
            r1 = r1 & r2
            if (r1 == 0) goto L60
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            com.fasterxml.jackson.core.JsonToken r4 = r3.l3(r0, r1)
            return r4
        L60:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3.e2(r0)
            goto L8b
        L66:
            java.lang.String r0 = "Infinity"
            r3.E3(r0, r1)
            int r1 = r3.f13716a
            int r2 = com.fasterxml.jackson.core.json.h.f14104m3
            r1 = r1 & r2
            if (r1 == 0) goto L79
            r1 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            com.fasterxml.jackson.core.JsonToken r4 = r3.l3(r0, r1)
            return r4
        L79:
            java.lang.String r0 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3.e2(r0)
            goto L8b
        L7f:
            int r0 = r3.f13716a
            int r1 = com.fasterxml.jackson.core.json.h.f14106o3
            r0 = r0 & r1
            if (r0 == 0) goto L8b
            com.fasterxml.jackson.core.JsonToken r4 = r3.z3()
            return r4
        L8b:
            boolean r0 = java.lang.Character.isJavaIdentifierStart(r4)
            if (r0 == 0) goto Laa
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = ""
            r0.append(r1)
            char r1 = (char) r4
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = r3.U2()
            r3.V3(r4, r0, r1)
        Laa:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "expected a valid value "
            r0.append(r1)
            java.lang.String r1 = r3.V2()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r3.o2(r4, r0)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.h.D3(int):com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object E0() {
        return this.f14117h3;
    }

    protected final void E3(String str, int i4) throws IOException {
        int length = str.length();
        do {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (readUnsignedByte != str.charAt(i4)) {
                U3(readUnsignedByte, str.substring(0, i4));
            }
            i4++;
        } while (i4 < length);
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if (readUnsignedByte2 >= 48 && readUnsignedByte2 != 93 && readUnsignedByte2 != 125) {
            o3(str, i4, readUnsignedByte2);
        }
        this.f14118i3 = readUnsignedByte2;
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected char F2() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (readUnsignedByte == 34 || readUnsignedByte == 47 || readUnsignedByte == 92) {
            return (char) readUnsignedByte;
        }
        if (readUnsignedByte != 98) {
            if (readUnsignedByte != 102) {
                if (readUnsignedByte != 110) {
                    if (readUnsignedByte != 114) {
                        if (readUnsignedByte != 116) {
                            if (readUnsignedByte != 117) {
                                return L2((char) r3(readUnsignedByte));
                            }
                            int i4 = 0;
                            for (int i10 = 0; i10 < 4; i10++) {
                                int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
                                int b10 = com.fasterxml.jackson.core.io.b.b(readUnsignedByte2);
                                if (b10 < 0) {
                                    o2(readUnsignedByte2, "expected a hex-digit for character escape sequence");
                                }
                                i4 = (i4 << 4) | b10;
                            }
                            return (char) i4;
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

    @Override // com.fasterxml.jackson.core.base.b
    protected void H2() throws IOException {
        char[] n9 = this.M2.n();
        int[] iArr = f14110s3;
        int length = n9.length;
        int i4 = 0;
        while (true) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    this.M2.J(i4);
                    return;
                } else {
                    w3(n9, i4, readUnsignedByte);
                    return;
                }
            }
            int i10 = i4 + 1;
            n9[i4] = (char) readUnsignedByte;
            if (i10 >= length) {
                w3(n9, i10, this.f14117h3.readUnsignedByte());
                return;
            }
            i4 = i10;
        }
    }

    protected String H3() throws IOException {
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (readUnsignedByte == 39) {
            return "";
        }
        int[] iArr = this.f14114e3;
        int[] iArr2 = f14111t3;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        while (readUnsignedByte != 39) {
            if (readUnsignedByte != 34 && iArr2[readUnsignedByte] != 0) {
                if (readUnsignedByte != 92) {
                    T2(readUnsignedByte, "name");
                } else {
                    readUnsignedByte = F2();
                }
                if (readUnsignedByte > 127) {
                    if (i4 >= 4) {
                        if (i10 >= iArr.length) {
                            iArr = y3(iArr, iArr.length);
                            this.f14114e3 = iArr;
                        }
                        iArr[i10] = i11;
                        i10++;
                        i4 = 0;
                        i11 = 0;
                    }
                    if (readUnsignedByte < 2048) {
                        i11 = (i11 << 8) | (readUnsignedByte >> 6) | 192;
                        i4++;
                    } else {
                        int i12 = (i11 << 8) | (readUnsignedByte >> 12) | 224;
                        int i13 = i4 + 1;
                        if (i13 >= 4) {
                            if (i10 >= iArr.length) {
                                iArr = y3(iArr, iArr.length);
                                this.f14114e3 = iArr;
                            }
                            iArr[i10] = i12;
                            i10++;
                            i13 = 0;
                            i12 = 0;
                        }
                        i11 = (i12 << 8) | ((readUnsignedByte >> 6) & 63) | 128;
                        i4 = i13 + 1;
                    }
                    readUnsignedByte = (readUnsignedByte & 63) | 128;
                }
            }
            if (i4 < 4) {
                i4++;
                i11 = readUnsignedByte | (i11 << 8);
            } else {
                if (i10 >= iArr.length) {
                    iArr = y3(iArr, iArr.length);
                    this.f14114e3 = iArr;
                }
                iArr[i10] = i11;
                i11 = readUnsignedByte;
                i10++;
                i4 = 1;
            }
            readUnsignedByte = this.f14117h3.readUnsignedByte();
        }
        if (i4 > 0) {
            if (i10 >= iArr.length) {
                int[] y32 = y3(iArr, iArr.length);
                this.f14114e3 = y32;
                iArr = y32;
            }
            iArr[i10] = p4(i11, i4);
            i10++;
        }
        String D = this.f14113d3.D(iArr, i10);
        return D == null ? k4(iArr, i10, i4) : D;
    }

    protected final JsonToken J3() throws IOException {
        if (!m1(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
            return D3(46);
        }
        return I3(this.M2.n(), 0, 46, false, 0);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int K1(OutputStream outputStream) throws IOException {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(com.fasterxml.jackson.core.h hVar) {
        this.f14112c3 = hVar;
    }

    protected final String N3(int i4) throws IOException {
        if (i4 != 34) {
            return C3(i4);
        }
        int[] iArr = f14111t3;
        int readUnsignedByte = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte] != 0) {
            return readUnsignedByte == 34 ? "" : r4(0, readUnsignedByte, 0);
        }
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte2] != 0) {
            if (readUnsignedByte2 == 34) {
                return l4(readUnsignedByte, 1);
            }
            return r4(readUnsignedByte, readUnsignedByte2, 1);
        }
        int i10 = (readUnsignedByte << 8) | readUnsignedByte2;
        int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte3] != 0) {
            if (readUnsignedByte3 == 34) {
                return l4(i10, 2);
            }
            return r4(i10, readUnsignedByte3, 2);
        }
        int i11 = (i10 << 8) | readUnsignedByte3;
        int readUnsignedByte4 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte4] != 0) {
            if (readUnsignedByte4 == 34) {
                return l4(i11, 3);
            }
            return r4(i11, readUnsignedByte4, 3);
        }
        int i12 = (i11 << 8) | readUnsignedByte4;
        int readUnsignedByte5 = this.f14117h3.readUnsignedByte();
        if (iArr[readUnsignedByte5] == 0) {
            this.f14116g3 = i12;
            return L3(readUnsignedByte5);
        } else if (readUnsignedByte5 == 34) {
            return l4(i12, 4);
        } else {
            return r4(i12, readUnsignedByte5, 4);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
        return com.fasterxml.jackson.core.base.b.f13784b3;
    }

    protected JsonToken O3() throws IOException {
        int readUnsignedByte;
        char[] n9 = this.M2.n();
        n9[0] = l.f93713d;
        int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
        n9[1] = (char) readUnsignedByte2;
        if (readUnsignedByte2 <= 48) {
            if (readUnsignedByte2 == 48) {
                readUnsignedByte = B3();
            } else {
                return A3(readUnsignedByte2, true);
            }
        } else if (readUnsignedByte2 > 57) {
            return A3(readUnsignedByte2, true);
        } else {
            readUnsignedByte = this.f14117h3.readUnsignedByte();
        }
        int i4 = 2;
        int i10 = 1;
        while (readUnsignedByte <= 57 && readUnsignedByte >= 48) {
            i10++;
            n9[i4] = (char) readUnsignedByte;
            readUnsignedByte = this.f14117h3.readUnsignedByte();
            i4++;
        }
        if (readUnsignedByte != 46 && readUnsignedByte != 101 && readUnsignedByte != 69) {
            this.M2.J(i4);
            this.f14118i3 = readUnsignedByte;
            if (this.K2.m()) {
                j4();
            }
            return n3(true, i10);
        }
        return I3(n9, i4, readUnsignedByte, true, i10);
    }

    protected JsonToken P3(int i4) throws IOException {
        int readUnsignedByte;
        char[] n9 = this.M2.n();
        int i10 = 1;
        if (i4 == 48) {
            readUnsignedByte = B3();
            if (readUnsignedByte > 57 || readUnsignedByte < 48) {
                n9[0] = '0';
            } else {
                i10 = 0;
            }
        } else {
            n9[0] = (char) i4;
            readUnsignedByte = this.f14117h3.readUnsignedByte();
        }
        int i11 = readUnsignedByte;
        char[] cArr = n9;
        int i12 = i10;
        int i13 = i12;
        while (i11 <= 57 && i11 >= 48) {
            i13++;
            if (i12 >= cArr.length) {
                cArr = this.M2.s();
                i12 = 0;
            }
            cArr[i12] = (char) i11;
            i11 = this.f14117h3.readUnsignedByte();
            i12++;
        }
        if (i11 != 46 && i11 != 101 && i11 != 69) {
            this.M2.J(i12);
            if (this.K2.m()) {
                j4();
            } else {
                this.f14118i3 = i11;
            }
            return n3(false, i13);
        }
        return I3(cArr, i12, i11, false, i13);
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void Q2() throws IOException {
        super.Q2();
        this.f14113d3.N();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d2, code lost:
        r11.f14115f3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d4, code lost:
        if (r3 <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d6, code lost:
        r4 = r4 + r3;
        r13.write(r14, 0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00da, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int Q3(com.fasterxml.jackson.core.Base64Variant r12, java.io.OutputStream r13, byte[] r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.h.Q3(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int R0(Writer writer) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14115f3) {
                this.f14115f3 = false;
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

    protected void R3(int i4) throws JsonParseException {
        if (i4 < 32) {
            q2(i4);
        }
        S3(i4);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String S0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14115f3) {
                this.f14115f3 = false;
                return v3();
            }
            return this.M2.l();
        }
        return x3(jsonToken);
    }

    protected void S3(int i4) throws JsonParseException {
        e2("Invalid UTF-8 start byte 0x" + Integer.toHexString(i4));
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
                } else if (this.f14115f3) {
                    this.f14115f3 = false;
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

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14115f3) {
                this.f14115f3 = false;
                H2();
            }
            return this.M2.K();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return this.K2.b().length();
        } else {
            if (jsonToken != null) {
                if (jsonToken.isNumeric()) {
                    return this.M2.K();
                }
                return this.f13813h.asCharArray().length;
            }
            return 0;
        }
    }

    protected void U3(int i4, String str) throws IOException {
        V3(i4, str, U2());
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
            boolean r0 = r3.f14115f3
            if (r0 == 0) goto L1d
            r3.f14115f3 = r1
            r3.H2()
        L1d:
            com.fasterxml.jackson.core.util.j r0 = r3.M2
            int r0 = r0.y()
            return r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.h.V0():int");
    }

    protected void V3(int i4, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            char r32 = (char) r3(i4);
            if (!Character.isJavaIdentifierPart(r32)) {
                e2("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
                return;
            }
            sb.append(r32);
            i4 = this.f14117h3.readUnsignedByte();
        }
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return new JsonLocation(C2(), -1L, -1L, this.I2, -1);
    }

    protected void b4() throws IOException {
        this.f14115f3 = false;
        int[] iArr = f14110s3;
        while (true) {
            int readUnsignedByte = this.f14117h3.readUnsignedByte();
            if (iArr[readUnsignedByte] != 0) {
                if (readUnsignedByte == 34) {
                    return;
                }
                int i4 = iArr[readUnsignedByte];
                if (i4 == 1) {
                    F2();
                } else if (i4 == 2) {
                    c4();
                } else if (i4 == 3) {
                    d4();
                } else if (i4 == 4) {
                    e4();
                } else if (readUnsignedByte < 32) {
                    T2(readUnsignedByte, "string value");
                } else {
                    R3(readUnsignedByte);
                }
            }
        }
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

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14115f3) {
                this.f14115f3 = false;
                return v3();
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
            if (this.f14115f3) {
                this.f14115f3 = false;
                return v3();
            }
            return this.M2.l();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        } else {
            return super.h1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void l0() throws IOException {
        if (this.f14115f3) {
            this.f14115f3 = false;
            H2();
        }
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this.Q2 == null)) {
            e2("Current token (" + this.f13813h + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this.f14115f3) {
            try {
                this.Q2 = q3(base64Variant);
                this.f14115f3 = false;
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

    protected final byte[] q3(Base64Variant base64Variant) throws IOException {
        int readUnsignedByte;
        com.fasterxml.jackson.core.util.c I2 = I2();
        while (true) {
            int readUnsignedByte2 = this.f14117h3.readUnsignedByte();
            if (readUnsignedByte2 > 32) {
                int decodeBase64Char = base64Variant.decodeBase64Char(readUnsignedByte2);
                if (decodeBase64Char < 0) {
                    if (readUnsignedByte2 == 34) {
                        return I2.E();
                    }
                    decodeBase64Char = E2(base64Variant, readUnsignedByte2, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                int readUnsignedByte3 = this.f14117h3.readUnsignedByte();
                int decodeBase64Char2 = base64Variant.decodeBase64Char(readUnsignedByte3);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = E2(base64Variant, readUnsignedByte3, 1);
                }
                int i4 = (decodeBase64Char << 6) | decodeBase64Char2;
                int readUnsignedByte4 = this.f14117h3.readUnsignedByte();
                int decodeBase64Char3 = base64Variant.decodeBase64Char(readUnsignedByte4);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (readUnsignedByte4 == 34) {
                            I2.b(i4 >> 4);
                            if (base64Variant.usesPadding()) {
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char3 = E2(base64Variant, readUnsignedByte4, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        readUnsignedByte = this.f14117h3.readUnsignedByte();
                        if (base64Variant.usesPaddingChar(readUnsignedByte) || (readUnsignedByte == 92 && E2(base64Variant, readUnsignedByte, 3) == -2)) {
                            I2.b(i4 >> 4);
                        }
                    }
                }
                int i10 = (i4 << 6) | decodeBase64Char3;
                int readUnsignedByte5 = this.f14117h3.readUnsignedByte();
                int decodeBase64Char4 = base64Variant.decodeBase64Char(readUnsignedByte5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (readUnsignedByte5 == 34) {
                            I2.i(i10 >> 2);
                            if (base64Variant.usesPadding()) {
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char4 = E2(base64Variant, readUnsignedByte5, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        I2.i(i10 >> 2);
                    }
                }
                I2.h((i10 << 6) | decodeBase64Char4);
            }
        }
        throw j3(base64Variant, readUnsignedByte, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
    }

    protected final String q4(int[] iArr, int i4, int i10, int i11, int i12) throws IOException {
        int[] iArr2 = f14111t3;
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
                            iArr = y3(iArr, iArr.length);
                            this.f14114e3 = iArr;
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
                                iArr = y3(iArr, iArr.length);
                                this.f14114e3 = iArr;
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
                    iArr = y3(iArr, iArr.length);
                    this.f14114e3 = iArr;
                }
                iArr[i4] = i10;
                i10 = i11;
                i4++;
                i12 = 1;
            }
            i11 = this.f14117h3.readUnsignedByte();
        }
        if (i12 > 0) {
            if (i4 >= iArr.length) {
                iArr = y3(iArr, iArr.length);
                this.f14114e3 = iArr;
            }
            iArr[i4] = p4(i10, i12);
            i4++;
        }
        String D = this.f14113d3.D(iArr, i4);
        return D == null ? k4(iArr, i4, i12) : D;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int r3(int r7) throws java.io.IOException {
        /*
            r6 = this;
            r7 = r7 & 255(0xff, float:3.57E-43)
            r0 = 127(0x7f, float:1.78E-43)
            if (r7 <= r0) goto L6e
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
            r6.S3(r0)
            goto L10
        L2c:
            java.io.DataInput r3 = r6.f14117h3
            int r3 = r3.readUnsignedByte()
            r4 = r3 & 192(0xc0, float:2.69E-43)
            r5 = 128(0x80, float:1.794E-43)
            if (r4 == r5) goto L3d
            r4 = r3 & 255(0xff, float:3.57E-43)
            r6.T3(r4)
        L3d:
            int r7 = r7 << 6
            r3 = r3 & 63
            r7 = r7 | r3
            if (r0 <= r2) goto L6e
            java.io.DataInput r2 = r6.f14117h3
            int r2 = r2.readUnsignedByte()
            r3 = r2 & 192(0xc0, float:2.69E-43)
            if (r3 == r5) goto L53
            r3 = r2 & 255(0xff, float:3.57E-43)
            r6.T3(r3)
        L53:
            int r7 = r7 << 6
            r2 = r2 & 63
            r7 = r7 | r2
            if (r0 <= r1) goto L6e
            java.io.DataInput r0 = r6.f14117h3
            int r0 = r0.readUnsignedByte()
            r1 = r0 & 192(0xc0, float:2.69E-43)
            if (r1 == r5) goto L69
            r1 = r0 & 255(0xff, float:3.57E-43)
            r6.T3(r1)
        L69:
            int r7 = r7 << 6
            r0 = r0 & 63
            r7 = r7 | r0
        L6e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.h.r3(int):int");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.h s0() {
        return this.f14112c3;
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

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return new JsonLocation(C2(), -1L, -1L, this.F2, -1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String t1() throws IOException {
        JsonToken O3;
        this.R2 = 0;
        JsonToken jsonToken = this.f13813h;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            F3();
            return null;
        }
        if (this.f14115f3) {
            b4();
        }
        int f42 = f4();
        this.Q2 = null;
        this.I2 = this.F2;
        if (f42 != 93 && f42 != 125) {
            if (this.K2.y()) {
                if (f42 != 44) {
                    o2(f42, "was expecting comma to separate " + this.K2.r() + " entries");
                }
                f42 = f4();
                if ((this.f13716a & f14102k3) != 0 && (f42 == 93 || f42 == 125)) {
                    p3(f42);
                    return null;
                }
            }
            if (!this.K2.l()) {
                G3(f42);
                return null;
            }
            String N3 = N3(f42);
            this.K2.C(N3);
            this.f13813h = jsonToken2;
            int X3 = X3();
            if (X3 == 34) {
                this.f14115f3 = true;
                this.L2 = JsonToken.VALUE_STRING;
                return N3;
            }
            if (X3 != 45) {
                if (X3 == 46) {
                    J3();
                } else if (X3 == 91) {
                    O3 = JsonToken.START_ARRAY;
                } else if (X3 == 102) {
                    E3("false", 1);
                    O3 = JsonToken.VALUE_FALSE;
                } else if (X3 == 110) {
                    E3("null", 1);
                    O3 = JsonToken.VALUE_NULL;
                } else if (X3 == 116) {
                    E3("true", 1);
                    O3 = JsonToken.VALUE_TRUE;
                } else if (X3 != 123) {
                    switch (X3) {
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
                            break;
                        default:
                            O3 = D3(X3);
                            break;
                    }
                } else {
                    O3 = JsonToken.START_OBJECT;
                }
                O3 = P3(X3);
            } else {
                O3 = O3();
            }
            this.L2 = O3;
            return N3;
        }
        p3(f42);
        return null;
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
                if (this.f14115f3) {
                    this.f14115f3 = false;
                    return v3();
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

    protected final String x3(JsonToken jsonToken) {
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

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        JsonToken O3;
        if (this.f13787p2) {
            return null;
        }
        JsonToken jsonToken = this.f13813h;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            return F3();
        }
        this.R2 = 0;
        if (this.f14115f3) {
            b4();
        }
        int h4 = h4();
        if (h4 < 0) {
            close();
            this.f13813h = null;
            return null;
        }
        this.Q2 = null;
        this.I2 = this.F2;
        if (h4 != 93 && h4 != 125) {
            if (this.K2.y()) {
                if (h4 != 44) {
                    o2(h4, "was expecting comma to separate " + this.K2.r() + " entries");
                }
                h4 = f4();
                if ((this.f13716a & f14102k3) != 0 && (h4 == 93 || h4 == 125)) {
                    p3(h4);
                    return this.f13813h;
                }
            }
            if (!this.K2.l()) {
                return G3(h4);
            }
            this.K2.C(N3(h4));
            this.f13813h = jsonToken2;
            int X3 = X3();
            if (X3 == 34) {
                this.f14115f3 = true;
                this.L2 = JsonToken.VALUE_STRING;
                return this.f13813h;
            }
            if (X3 == 45) {
                O3 = O3();
            } else if (X3 == 46) {
                O3 = J3();
            } else if (X3 == 91) {
                O3 = JsonToken.START_ARRAY;
            } else if (X3 == 102) {
                E3("false", 1);
                O3 = JsonToken.VALUE_FALSE;
            } else if (X3 == 110) {
                E3("null", 1);
                O3 = JsonToken.VALUE_NULL;
            } else if (X3 == 116) {
                E3("true", 1);
                O3 = JsonToken.VALUE_TRUE;
            } else if (X3 != 123) {
                switch (X3) {
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
                        O3 = P3(X3);
                        break;
                    default:
                        O3 = D3(X3);
                        break;
                }
            } else {
                O3 = JsonToken.START_OBJECT;
            }
            this.L2 = O3;
            return this.f13813h;
        }
        p3(h4);
        return this.f13813h;
    }

    protected JsonToken z3() throws IOException {
        char[] n9 = this.M2.n();
        int[] iArr = f14110s3;
        int i4 = 0;
        while (true) {
            int length = n9.length;
            if (i4 >= n9.length) {
                n9 = this.M2.s();
                length = n9.length;
                i4 = 0;
            }
            while (true) {
                int readUnsignedByte = this.f14117h3.readUnsignedByte();
                if (readUnsignedByte == 39) {
                    this.M2.J(i4);
                    return JsonToken.VALUE_STRING;
                } else if (iArr[readUnsignedByte] != 0 && readUnsignedByte != 34) {
                    int i10 = iArr[readUnsignedByte];
                    if (i10 == 1) {
                        readUnsignedByte = F2();
                    } else if (i10 == 2) {
                        readUnsignedByte = s3(readUnsignedByte);
                    } else if (i10 == 3) {
                        readUnsignedByte = t3(readUnsignedByte);
                    } else if (i10 != 4) {
                        if (readUnsignedByte < 32) {
                            T2(readUnsignedByte, "string value");
                        }
                        R3(readUnsignedByte);
                    } else {
                        int u32 = u3(readUnsignedByte);
                        int i11 = i4 + 1;
                        n9[i4] = (char) (55296 | (u32 >> 10));
                        if (i11 >= n9.length) {
                            n9 = this.M2.s();
                            i4 = 0;
                        } else {
                            i4 = i11;
                        }
                        readUnsignedByte = 56320 | (u32 & j1.M);
                    }
                    if (i4 >= n9.length) {
                        n9 = this.M2.s();
                        i4 = 0;
                    }
                    n9[i4] = (char) readUnsignedByte;
                    i4++;
                } else {
                    int i12 = i4 + 1;
                    n9[i4] = (char) readUnsignedByte;
                    i4 = i12;
                    if (i12 >= length) {
                        break;
                    }
                }
            }
        }
    }
}
