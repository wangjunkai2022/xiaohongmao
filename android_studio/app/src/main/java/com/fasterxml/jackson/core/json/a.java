package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.format.MatchStrength;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* compiled from: ByteSourceJsonBootstrapper.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: i  reason: collision with root package name */
    public static final byte f13998i = -17;

    /* renamed from: j  reason: collision with root package name */
    public static final byte f13999j = -69;

    /* renamed from: k  reason: collision with root package name */
    public static final byte f14000k = -65;

    /* renamed from: a  reason: collision with root package name */
    private final com.fasterxml.jackson.core.io.d f14001a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f14002b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f14003c;

    /* renamed from: d  reason: collision with root package name */
    private int f14004d;

    /* renamed from: e  reason: collision with root package name */
    private int f14005e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f14006f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14007g;

    /* renamed from: h  reason: collision with root package name */
    private int f14008h;

    public a(com.fasterxml.jackson.core.io.d dVar, InputStream inputStream) {
        this.f14007g = true;
        this.f14001a = dVar;
        this.f14002b = inputStream;
        this.f14003c = dVar.h();
        this.f14004d = 0;
        this.f14005e = 0;
        this.f14006f = true;
    }

    private boolean a(int i4) {
        if ((65280 & i4) == 0) {
            this.f14007g = true;
        } else if ((i4 & 255) != 0) {
            return false;
        } else {
            this.f14007g = false;
        }
        this.f14008h = 2;
        return true;
    }

    private boolean b(int i4) throws IOException {
        if ((i4 >> 8) == 0) {
            this.f14007g = true;
        } else if ((16777215 & i4) == 0) {
            this.f14007g = false;
        } else if (((-16711681) & i4) == 0) {
            i("3412");
        } else if ((i4 & (-65281)) != 0) {
            return false;
        } else {
            i("2143");
        }
        this.f14008h = 4;
        return true;
    }

    private boolean g(int i4) throws IOException {
        if (i4 == -16842752) {
            i("3412");
        } else if (i4 == -131072) {
            this.f14004d += 4;
            this.f14008h = 4;
            this.f14007g = false;
            return true;
        } else if (i4 == 65279) {
            this.f14007g = true;
            this.f14004d += 4;
            this.f14008h = 4;
            return true;
        } else if (i4 == 65534) {
            i("2143");
        }
        int i10 = i4 >>> 16;
        if (i10 == 65279) {
            this.f14004d += 2;
            this.f14008h = 2;
            this.f14007g = true;
            return true;
        } else if (i10 == 65534) {
            this.f14004d += 2;
            this.f14008h = 2;
            this.f14007g = false;
            return true;
        } else if ((i4 >>> 8) == 15711167) {
            this.f14004d += 3;
            this.f14008h = 1;
            this.f14007g = true;
            return true;
        } else {
            return false;
        }
    }

    public static MatchStrength h(com.fasterxml.jackson.core.format.c cVar) throws IOException {
        if (!cVar.a()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte nextByte = cVar.nextByte();
        if (nextByte == -17) {
            if (!cVar.a()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (cVar.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!cVar.a()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (cVar.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!cVar.a()) {
                return MatchStrength.INCONCLUSIVE;
            }
            nextByte = cVar.nextByte();
        }
        int k10 = k(cVar, nextByte);
        if (k10 < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (k10 == 123) {
            int j4 = j(cVar);
            if (j4 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (j4 != 34 && j4 != 125) {
                return MatchStrength.NO_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        } else if (k10 == 91) {
            int j10 = j(cVar);
            if (j10 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (j10 != 93 && j10 != 91) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        } else {
            MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
            if (k10 == 34) {
                return matchStrength;
            }
            if (k10 > 57 || k10 < 48) {
                if (k10 == 45) {
                    int j11 = j(cVar);
                    if (j11 < 0) {
                        return MatchStrength.INCONCLUSIVE;
                    }
                    return (j11 > 57 || j11 < 48) ? MatchStrength.NO_MATCH : matchStrength;
                } else if (k10 == 110) {
                    return m(cVar, "ull", matchStrength);
                } else {
                    if (k10 == 116) {
                        return m(cVar, "rue", matchStrength);
                    }
                    if (k10 == 102) {
                        return m(cVar, "alse", matchStrength);
                    }
                    return MatchStrength.NO_MATCH;
                }
            }
            return matchStrength;
        }
    }

    private void i(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    private static int j(com.fasterxml.jackson.core.format.c cVar) throws IOException {
        if (cVar.a()) {
            return k(cVar, cVar.nextByte());
        }
        return -1;
    }

    private static int k(com.fasterxml.jackson.core.format.c cVar, byte b10) throws IOException {
        while (true) {
            int i4 = b10 & 255;
            if (i4 != 32 && i4 != 13 && i4 != 10 && i4 != 9) {
                return i4;
            }
            if (!cVar.a()) {
                return -1;
            }
            b10 = cVar.nextByte();
        }
    }

    public static int l(DataInput dataInput) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        if (readUnsignedByte != 239) {
            return readUnsignedByte;
        }
        int readUnsignedByte2 = dataInput.readUnsignedByte();
        if (readUnsignedByte2 == 187) {
            int readUnsignedByte3 = dataInput.readUnsignedByte();
            if (readUnsignedByte3 == 191) {
                return dataInput.readUnsignedByte();
            }
            throw new IOException("Unexpected byte 0x" + Integer.toHexString(readUnsignedByte3) + " following 0xEF 0xBB; should get 0xBF as part of UTF-8 BOM");
        }
        throw new IOException("Unexpected byte 0x" + Integer.toHexString(readUnsignedByte2) + " following 0xEF; should get 0xBB as part of UTF-8 BOM");
    }

    private static MatchStrength m(com.fasterxml.jackson.core.format.c cVar, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            if (!cVar.a()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (cVar.nextByte() != str.charAt(i4)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }

    public JsonParser c(int i4, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.a aVar, com.fasterxml.jackson.core.sym.b bVar, int i10) throws IOException {
        int i11 = this.f14004d;
        JsonEncoding e4 = e();
        int i12 = this.f14004d - i11;
        if (e4 == JsonEncoding.UTF8 && JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i10)) {
            return new j(this.f14001a, i4, this.f14002b, hVar, aVar.G(i10), this.f14003c, this.f14004d, this.f14005e, i12, this.f14006f);
        }
        return new g(this.f14001a, i4, d(), hVar, bVar.p(i10));
    }

    public Reader d() throws IOException {
        JsonEncoding p9 = this.f14001a.p();
        int bits = p9.bits();
        if (bits != 8 && bits != 16) {
            if (bits == 32) {
                com.fasterxml.jackson.core.io.d dVar = this.f14001a;
                return new com.fasterxml.jackson.core.io.j(dVar, this.f14002b, this.f14003c, this.f14004d, this.f14005e, dVar.p().isBigEndian());
            }
            throw new RuntimeException("Internal error");
        }
        InputStream inputStream = this.f14002b;
        if (inputStream == null) {
            inputStream = new ByteArrayInputStream(this.f14003c, this.f14004d, this.f14005e);
        } else if (this.f14004d < this.f14005e) {
            inputStream = new com.fasterxml.jackson.core.io.f(this.f14001a, inputStream, this.f14003c, this.f14004d, this.f14005e);
        }
        return new InputStreamReader(inputStream, p9.getJavaName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        if (a(r1 >>> 16) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        if (a((r1[r5 + 1] & 255) | ((r1[r5] & 255) << 8)) != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.core.JsonEncoding e() throws java.io.IOException {
        /*
            r8 = this;
            r0 = 4
            boolean r1 = r8.f(r0)
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L42
            byte[] r1 = r8.f14003c
            int r5 = r8.f14004d
            r6 = r1[r5]
            int r6 = r6 << 24
            int r7 = r5 + 1
            r7 = r1[r7]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r7 = r7 << 16
            r6 = r6 | r7
            int r7 = r5 + 2
            r7 = r1[r7]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r7 = r7 << 8
            r6 = r6 | r7
            int r5 = r5 + 3
            r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r1 | r6
            boolean r5 = r8.g(r1)
            if (r5 == 0) goto L32
            goto L5e
        L32:
            boolean r5 = r8.b(r1)
            if (r5 == 0) goto L39
            goto L5e
        L39:
            int r1 = r1 >>> 16
            boolean r1 = r8.a(r1)
            if (r1 == 0) goto L5f
            goto L5e
        L42:
            boolean r1 = r8.f(r2)
            if (r1 == 0) goto L5f
            byte[] r1 = r8.f14003c
            int r5 = r8.f14004d
            r6 = r1[r5]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r6 = r6 << 8
            int r5 = r5 + r3
            r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r1 | r6
            boolean r1 = r8.a(r1)
            if (r1 == 0) goto L5f
        L5e:
            r4 = 1
        L5f:
            if (r4 != 0) goto L64
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
            goto L8a
        L64:
            int r1 = r8.f14008h
            if (r1 == r3) goto L88
            if (r1 == r2) goto L7e
            if (r1 != r0) goto L76
            boolean r0 = r8.f14007g
            if (r0 == 0) goto L73
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_BE
            goto L8a
        L73:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_LE
            goto L8a
        L76:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Internal error"
            r0.<init>(r1)
            throw r0
        L7e:
            boolean r0 = r8.f14007g
            if (r0 == 0) goto L85
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_BE
            goto L8a
        L85:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_LE
            goto L8a
        L88:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
        L8a:
            com.fasterxml.jackson.core.io.d r1 = r8.f14001a
            r1.y(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.a.e():com.fasterxml.jackson.core.JsonEncoding");
    }

    protected boolean f(int i4) throws IOException {
        int read;
        int i10 = this.f14005e - this.f14004d;
        while (i10 < i4) {
            InputStream inputStream = this.f14002b;
            if (inputStream == null) {
                read = -1;
            } else {
                byte[] bArr = this.f14003c;
                int i11 = this.f14005e;
                read = inputStream.read(bArr, i11, bArr.length - i11);
            }
            if (read < 1) {
                return false;
            }
            this.f14005e += read;
            i10 += read;
        }
        return true;
    }

    public a(com.fasterxml.jackson.core.io.d dVar, byte[] bArr, int i4, int i10) {
        this.f14007g = true;
        this.f14001a = dVar;
        this.f14002b = null;
        this.f14003c = bArr;
        this.f14004d = i4;
        this.f14005e = i4 + i10;
        this.f14006f = false;
    }
}
