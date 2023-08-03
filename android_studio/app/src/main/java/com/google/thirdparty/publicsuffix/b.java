package com.google.thirdparty.publicsuffix;

import com.google.common.base.u;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.b3;

/* compiled from: TrieParser.java */
@h3.b
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final u f35973a = u.p("");

    b() {
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(java.util.List<java.lang.CharSequence> r9, java.lang.CharSequence r10, int r11, com.google.common.collect.ImmutableMap.b<java.lang.String, com.google.thirdparty.publicsuffix.PublicSuffixType> r12) {
        /*
            int r0 = r10.length()
            r1 = 0
            r2 = r11
            r3 = 0
        L7:
            r4 = 58
            r5 = 33
            r6 = 44
            r7 = 63
            if (r2 >= r0) goto L25
            char r3 = r10.charAt(r2)
            r8 = 38
            if (r3 == r8) goto L25
            if (r3 == r7) goto L25
            if (r3 == r5) goto L25
            if (r3 == r4) goto L25
            if (r3 != r6) goto L22
            goto L25
        L22:
            int r2 = r2 + 1
            goto L7
        L25:
            java.lang.CharSequence r8 = r10.subSequence(r11, r2)
            java.lang.CharSequence r8 = c(r8)
            r9.add(r1, r8)
            if (r3 == r5) goto L38
            if (r3 == r7) goto L38
            if (r3 == r4) goto L38
            if (r3 != r6) goto L4b
        L38:
            com.google.common.base.u r4 = com.google.thirdparty.publicsuffix.b.f35973a
            java.lang.String r4 = r4.k(r9)
            int r5 = r4.length()
            if (r5 <= 0) goto L4b
            com.google.thirdparty.publicsuffix.PublicSuffixType r5 = com.google.thirdparty.publicsuffix.PublicSuffixType.a(r3)
            r12.d(r4, r5)
        L4b:
            int r2 = r2 + 1
            if (r3 == r7) goto L66
            if (r3 == r6) goto L66
        L51:
            if (r2 >= r0) goto L66
            int r3 = a(r9, r10, r2, r12)
            int r2 = r2 + r3
            char r3 = r10.charAt(r2)
            if (r3 == r7) goto L64
            char r3 = r10.charAt(r2)
            if (r3 != r6) goto L51
        L64:
            int r2 = r2 + 1
        L66:
            r9.remove(r1)
            int r2 = r2 - r11
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.thirdparty.publicsuffix.b.a(java.util.List, java.lang.CharSequence, int, com.google.common.collect.ImmutableMap$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImmutableMap<String, PublicSuffixType> b(CharSequence charSequence) {
        ImmutableMap.b builder = ImmutableMap.builder();
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length) {
            i4 += a(b3.y(), charSequence, i4, builder);
        }
        return builder.a();
    }

    private static CharSequence c(CharSequence charSequence) {
        return new StringBuilder(charSequence).reverse();
    }
}
