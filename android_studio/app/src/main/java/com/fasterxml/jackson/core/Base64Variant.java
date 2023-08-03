package com.fasterxml.jackson.core;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Base64Variant implements Serializable {
    public static final int BASE64_VALUE_INVALID = -1;
    public static final int BASE64_VALUE_PADDING = -2;

    /* renamed from: i  reason: collision with root package name */
    private static final int f13659i = 32;

    /* renamed from: j  reason: collision with root package name */
    private static final long f13660j = 1;

    /* renamed from: k  reason: collision with root package name */
    protected static final char f13661k = 0;

    /* renamed from: a  reason: collision with root package name */
    private final transient int[] f13662a;

    /* renamed from: b  reason: collision with root package name */
    private final transient char[] f13663b;

    /* renamed from: c  reason: collision with root package name */
    private final transient byte[] f13664c;

    /* renamed from: d  reason: collision with root package name */
    final String f13665d;

    /* renamed from: e  reason: collision with root package name */
    private final char f13666e;

    /* renamed from: f  reason: collision with root package name */
    private final int f13667f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f13668g;

    /* renamed from: h  reason: collision with root package name */
    private final PaddingReadBehaviour f13669h;

    /* loaded from: classes.dex */
    public enum PaddingReadBehaviour {
        PADDING_FORBIDDEN,
        PADDING_REQUIRED,
        PADDING_ALLOWED
    }

    public Base64Variant(String str, String str2, boolean z9, char c10, int i4) {
        int[] iArr = new int[128];
        this.f13662a = iArr;
        char[] cArr = new char[64];
        this.f13663b = cArr;
        this.f13664c = new byte[64];
        this.f13665d = str;
        this.f13668g = z9;
        this.f13666e = c10;
        this.f13667f = i4;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, cArr, 0);
            Arrays.fill(iArr, -1);
            for (int i10 = 0; i10 < length; i10++) {
                char c11 = this.f13663b[i10];
                this.f13664c[i10] = (byte) c11;
                this.f13662a[c11] = i10;
            }
            if (z9) {
                this.f13662a[c10] = -2;
            }
            this.f13669h = z9 ? PaddingReadBehaviour.PADDING_REQUIRED : PaddingReadBehaviour.PADDING_FORBIDDEN;
            return;
        }
        throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
    }

    protected void a() throws IllegalArgumentException {
        throw new IllegalArgumentException(missingPaddingMessage());
    }

    public boolean acceptsPaddingOnRead() {
        return this.f13669h != PaddingReadBehaviour.PADDING_FORBIDDEN;
    }

    protected void b() throws IllegalArgumentException {
        throw new IllegalArgumentException(e());
    }

    protected void c(char c10, int i4, String str) throws IllegalArgumentException {
        String str2;
        if (c10 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c10) + ") as character #" + (i4 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (usesPaddingChar(c10)) {
            str2 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i4 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (Character.isDefined(c10) && !Character.isISOControl(c10)) {
            str2 = "Illegal character '" + c10 + "' (code 0x" + Integer.toHexString(c10) + ") in base64 content";
        } else {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c10) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw new IllegalArgumentException(str2);
    }

    protected Object d() {
        Base64Variant b10 = a.b(this.f13665d);
        boolean z9 = this.f13668g;
        boolean z10 = b10.f13668g;
        return (z9 == z10 && this.f13666e == b10.f13666e && this.f13669h == b10.f13669h && this.f13667f == b10.f13667f && z9 == z10) ? b10 : new Base64Variant(b10, this.f13665d, z9, this.f13666e, this.f13669h, this.f13667f);
    }

    public byte[] decode(String str) throws IllegalArgumentException {
        com.fasterxml.jackson.core.util.c cVar = new com.fasterxml.jackson.core.util.c();
        decode(str, cVar);
        return cVar.E();
    }

    public int decodeBase64Byte(byte b10) {
        if (b10 < 0) {
            return -1;
        }
        return this.f13662a[b10];
    }

    public int decodeBase64Char(char c10) {
        if (c10 <= 127) {
            return this.f13662a[c10];
        }
        return -1;
    }

    protected String e() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects no padding at the end while decoding. This Base64Variant might have been incorrectly configured", getName());
    }

    public String encode(byte[] bArr) {
        return encode(bArr, false);
    }

    public byte encodeBase64BitsAsByte(int i4) {
        return this.f13664c[i4];
    }

    public char encodeBase64BitsAsChar(int i4) {
        return this.f13663b[i4];
    }

    public int encodeBase64Chunk(int i4, char[] cArr, int i10) {
        int i11 = i10 + 1;
        char[] cArr2 = this.f13663b;
        cArr[i10] = cArr2[(i4 >> 18) & 63];
        int i12 = i11 + 1;
        cArr[i11] = cArr2[(i4 >> 12) & 63];
        int i13 = i12 + 1;
        cArr[i12] = cArr2[(i4 >> 6) & 63];
        int i14 = i13 + 1;
        cArr[i13] = cArr2[i4 & 63];
        return i14;
    }

    public int encodeBase64Partial(int i4, int i10, char[] cArr, int i11) {
        int i12 = i11 + 1;
        char[] cArr2 = this.f13663b;
        cArr[i11] = cArr2[(i4 >> 18) & 63];
        int i13 = i12 + 1;
        cArr[i12] = cArr2[(i4 >> 12) & 63];
        if (usesPadding()) {
            int i14 = i13 + 1;
            cArr[i13] = i10 == 2 ? this.f13663b[(i4 >> 6) & 63] : this.f13666e;
            int i15 = i14 + 1;
            cArr[i14] = this.f13666e;
            return i15;
        } else if (i10 == 2) {
            int i16 = i13 + 1;
            cArr[i13] = this.f13663b[(i4 >> 6) & 63];
            return i16;
        } else {
            return i13;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Base64Variant.class) {
            return false;
        }
        Base64Variant base64Variant = (Base64Variant) obj;
        return base64Variant.f13666e == this.f13666e && base64Variant.f13667f == this.f13667f && base64Variant.f13668g == this.f13668g && base64Variant.f13669h == this.f13669h && this.f13665d.equals(base64Variant.f13665d);
    }

    public int getMaxLineLength() {
        return this.f13667f;
    }

    public String getName() {
        return this.f13665d;
    }

    public byte getPaddingByte() {
        return (byte) this.f13666e;
    }

    public char getPaddingChar() {
        return this.f13666e;
    }

    public int hashCode() {
        return this.f13665d.hashCode();
    }

    public String missingPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects padding (one or more '%c' characters) at the end. This Base64Variant might have been incorrectly configured", getName(), Character.valueOf(getPaddingChar()));
    }

    public PaddingReadBehaviour paddingReadBehaviour() {
        return this.f13669h;
    }

    public boolean requiresPaddingOnRead() {
        return this.f13669h == PaddingReadBehaviour.PADDING_REQUIRED;
    }

    public String toString() {
        return this.f13665d;
    }

    public boolean usesPadding() {
        return this.f13668g;
    }

    public boolean usesPaddingChar(char c10) {
        return c10 == this.f13666e;
    }

    public Base64Variant withPaddingAllowed() {
        return withReadPadding(PaddingReadBehaviour.PADDING_ALLOWED);
    }

    public Base64Variant withPaddingForbidden() {
        return withReadPadding(PaddingReadBehaviour.PADDING_FORBIDDEN);
    }

    public Base64Variant withPaddingRequired() {
        return withReadPadding(PaddingReadBehaviour.PADDING_REQUIRED);
    }

    public Base64Variant withReadPadding(PaddingReadBehaviour paddingReadBehaviour) {
        return paddingReadBehaviour == this.f13669h ? this : new Base64Variant(this, paddingReadBehaviour);
    }

    public Base64Variant withWritePadding(boolean z9) {
        return z9 == this.f13668g ? this : new Base64Variant(this, this.f13665d, z9, this.f13666e, this.f13667f);
    }

    public int decodeBase64Char(int i4) {
        if (i4 <= 127) {
            return this.f13662a[i4];
        }
        return -1;
    }

    public String encode(byte[] bArr, boolean z9) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z9) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i4 = 0;
        int i10 = length - 3;
        while (i4 <= i10) {
            int i11 = i4 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            encodeBase64Chunk(sb, (((bArr[i4] << 8) | (bArr[i11] & 255)) << 8) | (bArr[i12] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append('\\');
                sb.append('n');
                maxLineLength = getMaxLineLength() >> 2;
            }
            i4 = i13;
        }
        int i14 = length - i4;
        if (i14 > 0) {
            int i15 = i4 + 1;
            int i16 = bArr[i4] << 16;
            if (i14 == 2) {
                i16 |= (bArr[i15] & 255) << 8;
            }
            encodeBase64Partial(sb, i16, i14);
        }
        if (z9) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public boolean usesPaddingChar(int i4) {
        return i4 == this.f13666e;
    }

    public void decode(String str, com.fasterxml.jackson.core.util.c cVar) throws IllegalArgumentException {
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            int i10 = i4 + 1;
            char charAt = str.charAt(i4);
            if (charAt > ' ') {
                int decodeBase64Char = decodeBase64Char(charAt);
                if (decodeBase64Char < 0) {
                    c(charAt, 0, null);
                }
                if (i10 >= length) {
                    a();
                }
                int i11 = i10 + 1;
                char charAt2 = str.charAt(i10);
                int decodeBase64Char2 = decodeBase64Char(charAt2);
                if (decodeBase64Char2 < 0) {
                    c(charAt2, 1, null);
                }
                int i12 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (i11 >= length) {
                    if (!requiresPaddingOnRead()) {
                        cVar.b(i12 >> 4);
                        return;
                    }
                    a();
                }
                int i13 = i11 + 1;
                char charAt3 = str.charAt(i11);
                int decodeBase64Char3 = decodeBase64Char(charAt3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        c(charAt3, 2, null);
                    }
                    if (!acceptsPaddingOnRead()) {
                        b();
                    }
                    if (i13 >= length) {
                        a();
                    }
                    i4 = i13 + 1;
                    char charAt4 = str.charAt(i13);
                    if (!usesPaddingChar(charAt4)) {
                        c(charAt4, 3, "expected padding character '" + getPaddingChar() + "'");
                    }
                    cVar.b(i12 >> 4);
                } else {
                    int i14 = (i12 << 6) | decodeBase64Char3;
                    if (i13 >= length) {
                        if (!requiresPaddingOnRead()) {
                            cVar.i(i14 >> 2);
                            return;
                        }
                        a();
                    }
                    i10 = i13 + 1;
                    char charAt5 = str.charAt(i13);
                    int decodeBase64Char4 = decodeBase64Char(charAt5);
                    if (decodeBase64Char4 < 0) {
                        if (decodeBase64Char4 != -2) {
                            c(charAt5, 3, null);
                        }
                        if (!acceptsPaddingOnRead()) {
                            b();
                        }
                        cVar.i(i14 >> 2);
                    } else {
                        cVar.h((i14 << 6) | decodeBase64Char4);
                    }
                }
            }
            i4 = i10;
        }
    }

    public void encodeBase64Chunk(StringBuilder sb, int i4) {
        sb.append(this.f13663b[(i4 >> 18) & 63]);
        sb.append(this.f13663b[(i4 >> 12) & 63]);
        sb.append(this.f13663b[(i4 >> 6) & 63]);
        sb.append(this.f13663b[i4 & 63]);
    }

    public void encodeBase64Partial(StringBuilder sb, int i4, int i10) {
        sb.append(this.f13663b[(i4 >> 18) & 63]);
        sb.append(this.f13663b[(i4 >> 12) & 63]);
        if (usesPadding()) {
            sb.append(i10 == 2 ? this.f13663b[(i4 >> 6) & 63] : this.f13666e);
            sb.append(this.f13666e);
        } else if (i10 == 2) {
            sb.append(this.f13663b[(i4 >> 6) & 63]);
        }
    }

    public int encodeBase64Chunk(int i4, byte[] bArr, int i10) {
        int i11 = i10 + 1;
        byte[] bArr2 = this.f13664c;
        bArr[i10] = bArr2[(i4 >> 18) & 63];
        int i12 = i11 + 1;
        bArr[i11] = bArr2[(i4 >> 12) & 63];
        int i13 = i12 + 1;
        bArr[i12] = bArr2[(i4 >> 6) & 63];
        int i14 = i13 + 1;
        bArr[i13] = bArr2[i4 & 63];
        return i14;
    }

    public int encodeBase64Partial(int i4, int i10, byte[] bArr, int i11) {
        int i12 = i11 + 1;
        byte[] bArr2 = this.f13664c;
        bArr[i11] = bArr2[(i4 >> 18) & 63];
        int i13 = i12 + 1;
        bArr[i12] = bArr2[(i4 >> 12) & 63];
        if (!usesPadding()) {
            if (i10 == 2) {
                int i14 = i13 + 1;
                bArr[i13] = this.f13664c[(i4 >> 6) & 63];
                return i14;
            }
            return i13;
        }
        byte b10 = (byte) this.f13666e;
        int i15 = i13 + 1;
        bArr[i13] = i10 == 2 ? this.f13664c[(i4 >> 6) & 63] : b10;
        int i16 = i15 + 1;
        bArr[i15] = b10;
        return i16;
    }

    public Base64Variant(Base64Variant base64Variant, String str, int i4) {
        this(base64Variant, str, base64Variant.f13668g, base64Variant.f13666e, i4);
    }

    public String encode(byte[] bArr, boolean z9, String str) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z9) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i4 = 0;
        int i10 = length - 3;
        while (i4 <= i10) {
            int i11 = i4 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            encodeBase64Chunk(sb, (((bArr[i4] << 8) | (bArr[i11] & 255)) << 8) | (bArr[i12] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append(str);
                maxLineLength = getMaxLineLength() >> 2;
            }
            i4 = i13;
        }
        int i14 = length - i4;
        if (i14 > 0) {
            int i15 = i4 + 1;
            int i16 = bArr[i4] << 16;
            if (i14 == 2) {
                i16 |= (bArr[i15] & 255) << 8;
            }
            encodeBase64Partial(sb, i16, i14);
        }
        if (z9) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z9, char c10, int i4) {
        this(base64Variant, str, z9, c10, base64Variant.f13669h, i4);
    }

    private Base64Variant(Base64Variant base64Variant, String str, boolean z9, char c10, PaddingReadBehaviour paddingReadBehaviour, int i4) {
        int[] iArr = new int[128];
        this.f13662a = iArr;
        char[] cArr = new char[64];
        this.f13663b = cArr;
        byte[] bArr = new byte[64];
        this.f13664c = bArr;
        this.f13665d = str;
        byte[] bArr2 = base64Variant.f13664c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = base64Variant.f13663b;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = base64Variant.f13662a;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.f13668g = z9;
        this.f13666e = c10;
        this.f13667f = i4;
        this.f13669h = paddingReadBehaviour;
    }

    private Base64Variant(Base64Variant base64Variant, PaddingReadBehaviour paddingReadBehaviour) {
        this(base64Variant, base64Variant.f13665d, base64Variant.f13668g, base64Variant.f13666e, paddingReadBehaviour, base64Variant.f13667f);
    }
}
