package com.google.android.gms.common.server.response;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import okio.internal._BufferKt;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@y
/* loaded from: classes2.dex */
public class FastParser<T extends FastJsonResponse> {

    /* renamed from: g  reason: collision with root package name */
    private static final char[] f29261g = {'u', 'l', 'l'};

    /* renamed from: h  reason: collision with root package name */
    private static final char[] f29262h = {'r', 'u', 'e'};

    /* renamed from: i  reason: collision with root package name */
    private static final char[] f29263i = {'r', 'u', 'e', '\"'};

    /* renamed from: j  reason: collision with root package name */
    private static final char[] f29264j = {'a', 'l', 's', 'e'};

    /* renamed from: k  reason: collision with root package name */
    private static final char[] f29265k = {'a', 'l', 's', 'e', '\"'};

    /* renamed from: l  reason: collision with root package name */
    private static final char[] f29266l = {'\n'};

    /* renamed from: m  reason: collision with root package name */
    private static final i<Integer> f29267m = new a();

    /* renamed from: n  reason: collision with root package name */
    private static final i<Long> f29268n = new b();

    /* renamed from: o  reason: collision with root package name */
    private static final i<Float> f29269o = new c();

    /* renamed from: p  reason: collision with root package name */
    private static final i<Double> f29270p = new d();

    /* renamed from: q  reason: collision with root package name */
    private static final i<Boolean> f29271q = new e();

    /* renamed from: r  reason: collision with root package name */
    private static final i<String> f29272r = new f();

    /* renamed from: s  reason: collision with root package name */
    private static final i<BigInteger> f29273s = new g();

    /* renamed from: t  reason: collision with root package name */
    private static final i<BigDecimal> f29274t = new h();

    /* renamed from: a  reason: collision with root package name */
    private final char[] f29275a = new char[1];

    /* renamed from: b  reason: collision with root package name */
    private final char[] f29276b = new char[32];

    /* renamed from: c  reason: collision with root package name */
    private final char[] f29277c = new char[1024];

    /* renamed from: d  reason: collision with root package name */
    private final StringBuilder f29278d = new StringBuilder(32);

    /* renamed from: e  reason: collision with root package name */
    private final StringBuilder f29279e = new StringBuilder(1024);

    /* renamed from: f  reason: collision with root package name */
    private final Stack<Integer> f29280f = new Stack<>();

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @y
    /* loaded from: classes2.dex */
    public static class ParseException extends Exception {
        public ParseException(@NonNull String str) {
            super(str);
        }

        public ParseException(@NonNull String str, @NonNull Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(@NonNull Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A(BufferedReader bufferedReader, boolean z9) throws ParseException, IOException {
        char[] cArr;
        char k10 = k(bufferedReader);
        if (k10 == '\"') {
            if (!z9) {
                return A(bufferedReader, true);
            }
            throw new ParseException("No boolean value found in string");
        } else if (k10 == 'f') {
            if (z9) {
                cArr = f29265k;
            } else {
                cArr = f29264j;
            }
            z(bufferedReader, cArr);
            return false;
        } else if (k10 == 'n') {
            z(bufferedReader, f29261g);
            return false;
        } else if (k10 == 't') {
            z(bufferedReader, z9 ? f29263i : f29262h);
            return true;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(k10);
            throw new ParseException(sb.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean B(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap hashMap;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String s9 = s(bufferedReader);
        if (s9 != null) {
            while (s9 != null) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(s9);
                if (field == null) {
                    s9 = t(bufferedReader);
                } else {
                    this.f29280f.push(4);
                    int i4 = field.zaa;
                    switch (i4) {
                        case 0:
                            if (field.zab) {
                                fastJsonResponse.zav(field, w(bufferedReader, f29267m));
                                break;
                            } else {
                                fastJsonResponse.zau(field, n(bufferedReader));
                                break;
                            }
                        case 1:
                            if (field.zab) {
                                fastJsonResponse.zag(field, w(bufferedReader, f29273s));
                                break;
                            } else {
                                fastJsonResponse.zae(field, v(bufferedReader));
                                break;
                            }
                        case 2:
                            if (field.zab) {
                                fastJsonResponse.zay(field, w(bufferedReader, f29268n));
                                break;
                            } else {
                                fastJsonResponse.zax(field, p(bufferedReader));
                                break;
                            }
                        case 3:
                            if (field.zab) {
                                fastJsonResponse.zas(field, w(bufferedReader, f29269o));
                                break;
                            } else {
                                fastJsonResponse.zaq(field, m(bufferedReader));
                                break;
                            }
                        case 4:
                            if (field.zab) {
                                fastJsonResponse.zao(field, w(bufferedReader, f29270p));
                                break;
                            } else {
                                fastJsonResponse.zam(field, l(bufferedReader));
                                break;
                            }
                        case 5:
                            if (field.zab) {
                                fastJsonResponse.zac(field, w(bufferedReader, f29274t));
                                break;
                            } else {
                                fastJsonResponse.zaa(field, u(bufferedReader));
                                break;
                            }
                        case 6:
                            if (field.zab) {
                                fastJsonResponse.zaj(field, w(bufferedReader, f29271q));
                                break;
                            } else {
                                fastJsonResponse.zai(field, A(bufferedReader, false));
                                break;
                            }
                        case 7:
                            if (field.zab) {
                                fastJsonResponse.zaC(field, w(bufferedReader, f29272r));
                                break;
                            } else {
                                fastJsonResponse.zaA(field, q(bufferedReader));
                                break;
                            }
                        case 8:
                            fastJsonResponse.zal(field, y2.c.a(r(bufferedReader, this.f29277c, this.f29279e, f29266l)));
                            break;
                        case 9:
                            fastJsonResponse.zal(field, y2.c.b(r(bufferedReader, this.f29277c, this.f29279e, f29266l)));
                            break;
                        case 10:
                            char k10 = k(bufferedReader);
                            if (k10 == 'n') {
                                z(bufferedReader, f29261g);
                                hashMap = null;
                            } else if (k10 == '{') {
                                this.f29280f.push(1);
                                hashMap = new HashMap();
                                while (true) {
                                    char k11 = k(bufferedReader);
                                    if (k11 == 0) {
                                        throw new ParseException("Unexpected EOF");
                                    }
                                    if (k11 == '\"') {
                                        String b10 = b(bufferedReader, this.f29276b, this.f29278d, null);
                                        if (k(bufferedReader) != ':') {
                                            String valueOf = String.valueOf(b10);
                                            throw new ParseException(valueOf.length() != 0 ? "No map value found for key ".concat(valueOf) : new String("No map value found for key "));
                                        } else if (k(bufferedReader) != '\"') {
                                            String valueOf2 = String.valueOf(b10);
                                            throw new ParseException(valueOf2.length() != 0 ? "Expected String value for key ".concat(valueOf2) : new String("Expected String value for key "));
                                        } else {
                                            hashMap.put(b10, b(bufferedReader, this.f29276b, this.f29278d, null));
                                            char k12 = k(bufferedReader);
                                            if (k12 != ',') {
                                                if (k12 == '}') {
                                                    y(1);
                                                } else {
                                                    StringBuilder sb = new StringBuilder(48);
                                                    sb.append("Unexpected character while parsing string map: ");
                                                    sb.append(k12);
                                                    throw new ParseException(sb.toString());
                                                }
                                            }
                                        }
                                    } else if (k11 == '}') {
                                        y(1);
                                    }
                                }
                            } else {
                                throw new ParseException("Expected start of a map object");
                            }
                            fastJsonResponse.zaB(field, hashMap);
                            break;
                        case 11:
                            if (field.zab) {
                                char k13 = k(bufferedReader);
                                if (k13 == 'n') {
                                    z(bufferedReader, f29261g);
                                    fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                                    break;
                                } else {
                                    this.f29280f.push(5);
                                    if (k13 == '[') {
                                        fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, x(bufferedReader, field));
                                        break;
                                    } else {
                                        throw new ParseException("Expected array start");
                                    }
                                }
                            } else {
                                char k14 = k(bufferedReader);
                                if (k14 == 'n') {
                                    z(bufferedReader, f29261g);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                                    break;
                                } else {
                                    this.f29280f.push(1);
                                    if (k14 == '{') {
                                        try {
                                            FastJsonResponse zad = field.zad();
                                            B(bufferedReader, zad);
                                            fastJsonResponse.addConcreteTypeInternal(field, field.zae, zad);
                                            break;
                                        } catch (IllegalAccessException e4) {
                                            throw new ParseException("Error instantiating inner object", e4);
                                        } catch (InstantiationException e10) {
                                            throw new ParseException("Error instantiating inner object", e10);
                                        }
                                    } else {
                                        throw new ParseException("Expected start of object");
                                    }
                                }
                            }
                        default:
                            StringBuilder sb2 = new StringBuilder(30);
                            sb2.append("Invalid field type ");
                            sb2.append(i4);
                            throw new ParseException(sb2.toString());
                    }
                    y(4);
                    y(2);
                    char k15 = k(bufferedReader);
                    if (k15 == ',') {
                        s9 = s(bufferedReader);
                    } else if (k15 != '}') {
                        StringBuilder sb3 = new StringBuilder(55);
                        sb3.append("Expected end of object or field separator, but found: ");
                        sb3.append(k15);
                        throw new ParseException(sb3.toString());
                    } else {
                        s9 = null;
                    }
                }
            }
            y(1);
            return true;
        }
        y(1);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
        throw new com.google.android.gms.common.server.response.FastParser.ParseException("Unexpected control character while reading string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final java.lang.String b(java.io.BufferedReader r8, char[] r9, java.lang.StringBuilder r10, @androidx.annotation.Nullable char[] r11) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r0 = 0
            r10.setLength(r0)
            int r1 = r9.length
            r8.mark(r1)
            r1 = 0
            r2 = 0
        La:
            int r3 = r8.read(r9)
            r4 = -1
            if (r3 == r4) goto L68
            r4 = 0
        L12:
            if (r4 >= r3) goto L60
            char r5 = r9[r4]
            boolean r6 = java.lang.Character.isISOControl(r5)
            if (r6 == 0) goto L31
            if (r11 == 0) goto L29
            r6 = 0
        L1f:
            if (r6 > 0) goto L29
            char r7 = r11[r6]
            if (r7 != r5) goto L26
            goto L31
        L26:
            int r6 = r6 + 1
            goto L1f
        L29:
            com.google.android.gms.common.server.response.FastParser$ParseException r8 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r9 = "Unexpected control character while reading string"
            r8.<init>(r9)
            throw r8
        L31:
            r6 = 34
            r7 = 1
            if (r5 != r6) goto L53
            if (r2 != 0) goto L5c
            r10.append(r9, r0, r4)
            r8.reset()
            int r4 = r4 + r7
            long r2 = (long) r4
            r8.skip(r2)
            if (r1 == 0) goto L4e
            java.lang.String r8 = r10.toString()
            java.lang.String r8 = y2.r.c(r8)
            return r8
        L4e:
            java.lang.String r8 = r10.toString()
            return r8
        L53:
            r6 = 92
            if (r5 != r6) goto L5c
            r1 = r2 ^ 1
            r2 = r1
            r1 = 1
            goto L5d
        L5c:
            r2 = 0
        L5d:
            int r4 = r4 + 1
            goto L12
        L60:
            r10.append(r9, r0, r3)
            int r3 = r9.length
            r8.mark(r3)
            goto La
        L68:
            com.google.android.gms.common.server.response.FastParser$ParseException r8 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r9 = "Unexpected EOF while parsing string"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.b(java.io.BufferedReader, char[], java.lang.StringBuilder, char[]):java.lang.String");
    }

    private final char k(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.f29275a) != -1) {
            while (Character.isWhitespace(this.f29275a[0])) {
                if (bufferedReader.read(this.f29275a) == -1) {
                    return (char) 0;
                }
            }
            return this.f29275a[0];
        }
        return (char) 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double l(BufferedReader bufferedReader) throws ParseException, IOException {
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.f29277c, 0, o9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float m(BufferedReader bufferedReader) throws ParseException, IOException {
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.f29277c, 0, o9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int n(BufferedReader bufferedReader) throws ParseException, IOException {
        int i4;
        int i10;
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return 0;
        }
        char[] cArr = this.f29277c;
        if (o9 > 0) {
            char c10 = cArr[0];
            int i11 = c10 == '-' ? Integer.MIN_VALUE : -2147483647;
            int i12 = c10 == '-' ? 1 : 0;
            if (i12 < o9) {
                i4 = i12 + 1;
                int digit = Character.digit(cArr[i12], 10);
                if (digit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                i10 = -digit;
            } else {
                i4 = i12;
                i10 = 0;
            }
            while (i4 < o9) {
                int i13 = i4 + 1;
                int digit2 = Character.digit(cArr[i4], 10);
                if (digit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (i10 < -214748364) {
                    throw new ParseException("Number too large");
                }
                int i14 = i10 * 10;
                if (i14 < i11 + digit2) {
                    throw new ParseException("Number too large");
                }
                i10 = i14 - digit2;
                i4 = i13;
            }
            if (i12 != 0) {
                if (i4 > 1) {
                    return i10;
                }
                throw new ParseException("No digits to parse");
            }
            return -i10;
        }
        throw new ParseException("No number to parse");
    }

    private final int o(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i4;
        char k10 = k(bufferedReader);
        if (k10 != 0) {
            if (k10 != ',') {
                if (k10 == 'n') {
                    z(bufferedReader, f29261g);
                    return 0;
                }
                bufferedReader.mark(1024);
                if (k10 == '\"') {
                    i4 = 0;
                    boolean z9 = false;
                    while (i4 < 1024 && bufferedReader.read(cArr, i4, 1) != -1) {
                        char c10 = cArr[i4];
                        if (Character.isISOControl(c10)) {
                            throw new ParseException("Unexpected control character while reading string");
                        }
                        if (c10 == '\"') {
                            if (!z9) {
                                bufferedReader.reset();
                                bufferedReader.skip(i4 + 1);
                                return i4;
                            }
                        } else if (c10 == '\\') {
                            z9 = !z9;
                            i4++;
                        }
                        z9 = false;
                        i4++;
                    }
                } else {
                    cArr[0] = k10;
                    i4 = 1;
                    while (i4 < 1024 && bufferedReader.read(cArr, i4, 1) != -1) {
                        char c11 = cArr[i4];
                        if (c11 == '}' || c11 == ',' || Character.isWhitespace(c11) || cArr[i4] == ']') {
                            bufferedReader.reset();
                            bufferedReader.skip(i4 - 1);
                            cArr[i4] = 0;
                            return i4;
                        }
                        i4++;
                    }
                }
                if (i4 == 1024) {
                    throw new ParseException("Absurdly long value");
                }
                throw new ParseException("Unexpected EOF");
            }
            throw new ParseException("Missing value");
        }
        throw new ParseException("Unexpected EOF");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long p(BufferedReader bufferedReader) throws ParseException, IOException {
        long j4;
        int i4;
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return 0L;
        }
        char[] cArr = this.f29277c;
        if (o9 > 0) {
            char c10 = cArr[0];
            long j10 = c10 == '-' ? Long.MIN_VALUE : com.google.android.exoplayer2.i.f23649b;
            int i10 = c10 == '-' ? 1 : 0;
            if (i10 < o9) {
                i4 = i10 + 1;
                int digit = Character.digit(cArr[i10], 10);
                if (digit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                j4 = -digit;
            } else {
                j4 = 0;
                i4 = i10;
            }
            while (i4 < o9) {
                int i11 = i4 + 1;
                int digit2 = Character.digit(cArr[i4], 10);
                if (digit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (j4 < _BufferKt.OVERFLOW_ZONE) {
                    throw new ParseException("Number too large");
                }
                long j11 = j4 * 10;
                long j12 = digit2;
                if (j11 < j10 + j12) {
                    throw new ParseException("Number too large");
                }
                j4 = j11 - j12;
                i4 = i11;
            }
            if (i10 != 0) {
                if (i4 > 1) {
                    return j4;
                }
                throw new ParseException("No digits to parse");
            }
            return -j4;
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final String q(BufferedReader bufferedReader) throws ParseException, IOException {
        return r(bufferedReader, this.f29276b, this.f29278d, null);
    }

    @Nullable
    private final String r(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) throws ParseException, IOException {
        char k10 = k(bufferedReader);
        if (k10 != '\"') {
            if (k10 == 'n') {
                z(bufferedReader, f29261g);
                return null;
            }
            throw new ParseException("Expected string");
        }
        return b(bufferedReader, cArr, sb, cArr2);
    }

    @Nullable
    private final String s(BufferedReader bufferedReader) throws ParseException, IOException {
        this.f29280f.push(2);
        char k10 = k(bufferedReader);
        if (k10 == '\"') {
            this.f29280f.push(3);
            String b10 = b(bufferedReader, this.f29276b, this.f29278d, null);
            y(3);
            if (k(bufferedReader) == ':') {
                return b10;
            }
            throw new ParseException("Expected key/value separator");
        } else if (k10 == ']') {
            y(2);
            y(1);
            y(5);
            return null;
        } else if (k10 == '}') {
            y(2);
            return null;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(k10);
            throw new ParseException(sb.toString());
        }
    }

    @Nullable
    private final String t(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char k10 = k(bufferedReader);
        int i4 = 1;
        if (k10 == '\"') {
            if (bufferedReader.read(this.f29275a) != -1) {
                char c10 = this.f29275a[0];
                boolean z9 = false;
                do {
                    if (c10 == '\"') {
                        if (z9) {
                            c10 = '\"';
                            z9 = true;
                        }
                    }
                    z9 = c10 == '\\' ? !z9 : false;
                    if (bufferedReader.read(this.f29275a) != -1) {
                        c10 = this.f29275a[0];
                    } else {
                        throw new ParseException("Unexpected EOF while parsing string");
                    }
                } while (!Character.isISOControl(c10));
                throw new ParseException("Unexpected control character while reading string");
            }
            throw new ParseException("Unexpected EOF while parsing string");
        } else if (k10 == ',') {
            throw new ParseException("Missing value");
        } else {
            if (k10 == '[') {
                this.f29280f.push(5);
                bufferedReader.mark(32);
                if (k(bufferedReader) == ']') {
                    y(5);
                } else {
                    bufferedReader.reset();
                    boolean z10 = false;
                    loop1: while (true) {
                        boolean z11 = false;
                        while (i4 > 0) {
                            char k11 = k(bufferedReader);
                            if (k11 != 0) {
                                if (Character.isISOControl(k11)) {
                                    throw new ParseException("Unexpected control character while reading array");
                                }
                                if (k11 == '\"') {
                                    if (!z11) {
                                        z10 = !z10;
                                    }
                                    k11 = '\"';
                                }
                                if (k11 == '[') {
                                    if (!z10) {
                                        i4++;
                                    }
                                    k11 = '[';
                                }
                                if (k11 == ']' && !z10) {
                                    i4--;
                                }
                                if (k11 == '\\' && z10) {
                                    z11 = !z11;
                                }
                            } else {
                                throw new ParseException("Unexpected EOF while parsing array");
                            }
                        }
                        y(5);
                        break loop1;
                    }
                }
            } else if (k10 != '{') {
                bufferedReader.reset();
                o(bufferedReader, this.f29277c);
            } else {
                this.f29280f.push(1);
                bufferedReader.mark(32);
                char k12 = k(bufferedReader);
                if (k12 == '}') {
                    y(1);
                } else if (k12 == '\"') {
                    bufferedReader.reset();
                    s(bufferedReader);
                    do {
                    } while (t(bufferedReader) != null);
                    y(1);
                } else {
                    StringBuilder sb = new StringBuilder(18);
                    sb.append("Unexpected token ");
                    sb.append(k12);
                    throw new ParseException(sb.toString());
                }
            }
        }
        char k13 = k(bufferedReader);
        if (k13 == ',') {
            y(2);
            return s(bufferedReader);
        } else if (k13 == '}') {
            y(2);
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append("Unexpected token ");
            sb2.append(k13);
            throw new ParseException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigDecimal u(BufferedReader bufferedReader) throws ParseException, IOException {
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return null;
        }
        return new BigDecimal(new String(this.f29277c, 0, o9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigInteger v(BufferedReader bufferedReader) throws ParseException, IOException {
        int o9 = o(bufferedReader, this.f29277c);
        if (o9 == 0) {
            return null;
        }
        return new BigInteger(new String(this.f29277c, 0, o9));
    }

    @Nullable
    private final <O> ArrayList<O> w(BufferedReader bufferedReader, i<O> iVar) throws ParseException, IOException {
        char k10 = k(bufferedReader);
        if (k10 == 'n') {
            z(bufferedReader, f29261g);
            return null;
        } else if (k10 == '[') {
            this.f29280f.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char k11 = k(bufferedReader);
                if (k11 == 0) {
                    throw new ParseException("Unexpected EOF");
                }
                if (k11 != ',') {
                    if (k11 != ']') {
                        bufferedReader.reset();
                        arrayList.add(iVar.a(this, bufferedReader));
                    } else {
                        y(5);
                        return arrayList;
                    }
                }
            }
        } else {
            throw new ParseException("Expected start of array");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private final <T extends FastJsonResponse> ArrayList<T> x(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) throws ParseException, IOException {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        char k10 = k(bufferedReader);
        if (k10 == ']') {
            y(5);
            return arrayList;
        } else if (k10 == 'n') {
            z(bufferedReader, f29261g);
            y(5);
            return null;
        } else if (k10 == '{') {
            this.f29280f.push(1);
            while (true) {
                try {
                    FastJsonResponse zad = field.zad();
                    if (!B(bufferedReader, zad)) {
                        return arrayList;
                    }
                    arrayList.add(zad);
                    char k11 = k(bufferedReader);
                    if (k11 != ',') {
                        if (k11 == ']') {
                            y(5);
                            return arrayList;
                        }
                        StringBuilder sb = new StringBuilder(19);
                        sb.append("Unexpected token: ");
                        sb.append(k11);
                        throw new ParseException(sb.toString());
                    } else if (k(bufferedReader) == '{') {
                        this.f29280f.push(1);
                    } else {
                        throw new ParseException("Expected start of next object in array");
                    }
                } catch (IllegalAccessException e4) {
                    throw new ParseException("Error instantiating inner object", e4);
                } catch (InstantiationException e10) {
                    throw new ParseException("Error instantiating inner object", e10);
                }
            }
        } else {
            StringBuilder sb2 = new StringBuilder(19);
            sb2.append("Unexpected token: ");
            sb2.append(k10);
            throw new ParseException(sb2.toString());
        }
    }

    private final void y(int i4) throws ParseException {
        if (!this.f29280f.isEmpty()) {
            int intValue = this.f29280f.pop().intValue();
            if (intValue == i4) {
                return;
            }
            StringBuilder sb = new StringBuilder(46);
            sb.append("Expected state ");
            sb.append(i4);
            sb.append(" but had ");
            sb.append(intValue);
            throw new ParseException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Expected state ");
        sb2.append(i4);
        sb2.append(" but had empty stack");
        throw new ParseException(sb2.toString());
    }

    private final void z(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i4 = 0;
        while (true) {
            int length = cArr.length;
            if (i4 >= length) {
                return;
            }
            int read = bufferedReader.read(this.f29276b, 0, length - i4);
            if (read == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i10 = 0; i10 < read; i10++) {
                if (cArr[i10 + i4] != this.f29276b[i10]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i4 += read;
        }
    }

    @u2.a
    public void a(@NonNull InputStream inputStream, @NonNull T t9) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.f29280f.push(0);
                char k10 = k(bufferedReader);
                if (k10 != 0) {
                    if (k10 == '[') {
                        this.f29280f.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t9.getFieldMappings();
                        if (fieldMappings.size() == 1) {
                            FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                            t9.addConcreteTypeArrayInternal(value, value.zae, x(bufferedReader, value));
                        } else {
                            throw new ParseException("Object array response class must have a single Field");
                        }
                    } else if (k10 == '{') {
                        this.f29280f.push(1);
                        B(bufferedReader, t9);
                    } else {
                        StringBuilder sb = new StringBuilder(19);
                        sb.append("Unexpected token: ");
                        sb.append(k10);
                        throw new ParseException(sb.toString());
                    }
                    y(0);
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException unused) {
                        Log.w("FastParser", "Failed to close reader while parsing.");
                        return;
                    }
                }
                throw new ParseException("No data to parse");
            } catch (IOException e4) {
                throw new ParseException(e4);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }
}
