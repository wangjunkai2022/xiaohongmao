package okhttp3.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;

/* compiled from: hostnames.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, d2 = {"decodeIpv4Suffix", "", "input", "", "pos", "", "limit", "address", "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int indexOf$default;
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0) {
                return true;
            }
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6, (Object) null);
            if (indexOf$default != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i4, int i10, byte[] bArr, int i11) {
        int i12 = i11;
        while (i4 < i10) {
            if (i12 == bArr.length) {
                return false;
            }
            if (i12 != i11) {
                if (str.charAt(i4) != '.') {
                    return false;
                }
                i4++;
            }
            int i13 = i4;
            int i14 = 0;
            while (i13 < i10) {
                char charAt = str.charAt(i13);
                if (Intrinsics.compare((int) charAt, 48) < 0 || Intrinsics.compare((int) charAt, 57) > 0) {
                    break;
                } else if ((i14 == 0 && i4 != i13) || (i14 = ((i14 * 10) + charAt) - 48) > 255) {
                    return false;
                } else {
                    i13++;
                }
            }
            if (i13 - i4 == 0) {
                return false;
            }
            bArr[i12] = (byte) i14;
            i12++;
            i4 = i13;
        }
        return i12 == i11 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
        if (r13 == 16) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
        if (r14 != (-1)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009b, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009c, code lost:
        r0 = r13 - r14;
        java.lang.System.arraycopy(r9, r14, r9, 16 - r0, r0);
        java.util.Arrays.fill(r9, r14, (16 - r13) + r14, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ae, code lost:
        return java.net.InetAddress.getByAddress(r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final java.net.InetAddress decodeIpv6(java.lang.String r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 175
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i4 = 0;
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length) {
            int i13 = i11;
            while (i13 < 16 && bArr[i13] == 0 && bArr[i13 + 1] == 0) {
                i13 += 2;
            }
            int i14 = i13 - i11;
            if (i14 > i12 && i14 >= 4) {
                i10 = i11;
                i12 = i14;
            }
            i11 = i13 + 2;
        }
        Buffer buffer = new Buffer();
        while (i4 < bArr.length) {
            if (i4 == i10) {
                buffer.writeByte(58);
                i4 += i12;
                if (i4 == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i4 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((Util.and(bArr[i4], 255) << 8) | Util.and(bArr[i4 + 1], 255));
                i4 += 2;
            }
        }
        return buffer.readUtf8();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String toCanonicalHost(@m8.g java.lang.String r5) {
        /*
            java.lang.String r0 = "$this$toCanonicalHost"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = ":"
            r1 = 0
            r2 = 2
            r3 = 0
            boolean r0 = kotlin.text.StringsKt.contains$default(r5, r0, r1, r2, r3)
            r4 = 1
            if (r0 == 0) goto L6e
            java.lang.String r0 = "["
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r5, r0, r1, r2, r3)
            if (r0 == 0) goto L2b
            java.lang.String r0 = "]"
            boolean r0 = kotlin.text.StringsKt.endsWith$default(r5, r0, r1, r2, r3)
            if (r0 == 0) goto L2b
            int r0 = r5.length()
            int r0 = r0 - r4
            java.net.InetAddress r0 = decodeIpv6(r5, r4, r0)
            goto L33
        L2b:
            int r0 = r5.length()
            java.net.InetAddress r0 = decodeIpv6(r5, r1, r0)
        L33:
            if (r0 == 0) goto L6d
            byte[] r1 = r0.getAddress()
            int r2 = r1.length
            r3 = 16
            if (r2 != r3) goto L48
            java.lang.String r5 = "address"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            java.lang.String r5 = inet6AddressToAscii(r1)
            return r5
        L48:
            int r1 = r1.length
            r2 = 4
            if (r1 != r2) goto L51
            java.lang.String r5 = r0.getHostAddress()
            return r5
        L51:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid IPv6 address: '"
            r1.append(r2)
            r1.append(r5)
            r5 = 39
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r0.<init>(r5)
            throw r0
        L6d:
            return r3
        L6e:
            java.lang.String r5 = java.net.IDN.toASCII(r5)     // Catch: java.lang.IllegalArgumentException -> La4
            java.lang.String r0 = "IDN.toASCII(host)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.IllegalArgumentException -> La4
            java.util.Locale r0 = java.util.Locale.US     // Catch: java.lang.IllegalArgumentException -> La4
            java.lang.String r2 = "Locale.US"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)     // Catch: java.lang.IllegalArgumentException -> La4
            if (r5 == 0) goto L9c
            java.lang.String r5 = r5.toLowerCase(r0)     // Catch: java.lang.IllegalArgumentException -> La4
            java.lang.String r0 = "(this as java.lang.String).toLowerCase(locale)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.IllegalArgumentException -> La4
            int r0 = r5.length()     // Catch: java.lang.IllegalArgumentException -> La4
            if (r0 != 0) goto L90
            r1 = 1
        L90:
            if (r1 == 0) goto L93
            return r3
        L93:
            boolean r0 = containsInvalidHostnameAsciiCodes(r5)     // Catch: java.lang.IllegalArgumentException -> La4
            if (r0 == 0) goto L9a
            goto L9b
        L9a:
            r3 = r5
        L9b:
            return r3
        L9c:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException     // Catch: java.lang.IllegalArgumentException -> La4
            java.lang.String r0 = "null cannot be cast to non-null type java.lang.String"
            r5.<init>(r0)     // Catch: java.lang.IllegalArgumentException -> La4
            throw r5     // Catch: java.lang.IllegalArgumentException -> La4
        La4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.toCanonicalHost(java.lang.String):java.lang.String");
    }
}
