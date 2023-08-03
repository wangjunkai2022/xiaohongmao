package org.jsoup.nodes;

import org.jsoup.nodes.Document;

/* compiled from: TextNode.java */
/* loaded from: classes5.dex */
public class n extends j {
    public n(String str) {
        this.f91887e = str;
    }

    public static n n0(String str) {
        return new n(Entities.l(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q0(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    static String r0(String str) {
        return org.jsoup.internal.f.n(str);
    }

    static String t0(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ boolean A(String str) {
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return "#text";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
        if (p0() == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        if (p0() == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        F(r10, r11, r12);
     */
    @Override // org.jsoup.nodes.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void L(java.lang.Appendable r10, int r11, org.jsoup.nodes.Document.OutputSettings r12) throws java.io.IOException {
        /*
            r9 = this;
            boolean r0 = r12.n()
            if (r0 == 0) goto L3d
            int r1 = r9.d0()
            if (r1 != 0) goto L24
            org.jsoup.nodes.k r1 = r9.f91890a
            boolean r2 = r1 instanceof org.jsoup.nodes.g
            if (r2 == 0) goto L24
            org.jsoup.nodes.g r1 = (org.jsoup.nodes.g) r1
            org.jsoup.parser.g r1 = r1.i2()
            boolean r1 = r1.b()
            if (r1 == 0) goto L24
            boolean r1 = r9.p0()
            if (r1 == 0) goto L3a
        L24:
            boolean r1 = r12.k()
            if (r1 == 0) goto L3d
            java.util.List r1 = r9.e0()
            int r1 = r1.size()
            if (r1 <= 0) goto L3d
            boolean r1 = r9.p0()
            if (r1 != 0) goto L3d
        L3a:
            r9.F(r10, r11, r12)
        L3d:
            r11 = 1
            r1 = 0
            if (r0 == 0) goto L4b
            org.jsoup.nodes.k r2 = r9.f91890a
            boolean r2 = org.jsoup.nodes.g.T1(r2)
            if (r2 != 0) goto L4b
            r7 = 1
            goto L4c
        L4b:
            r7 = 0
        L4c:
            if (r0 == 0) goto L56
            org.jsoup.nodes.k r0 = r9.f91890a
            boolean r0 = r0 instanceof org.jsoup.nodes.Document
            if (r0 == 0) goto L56
            r8 = 1
            goto L57
        L56:
            r8 = 0
        L57:
            java.lang.String r4 = r9.i0()
            r6 = 0
            r3 = r10
            r5 = r12
            org.jsoup.nodes.Entities.g(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.n.L(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.k
    void M(Appendable appendable, int i4, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k T(String str) {
        return super.T(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String g(String str) {
        return super.g(str);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k h(String str, String str2) {
        return super.h(str, str2);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ String k() {
        return super.k();
    }

    @Override // org.jsoup.nodes.k
    /* renamed from: m0 */
    public n t() {
        return (n) super.clone();
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ int o() {
        return super.o();
    }

    public String o0() {
        return i0();
    }

    public boolean p0() {
        return org.jsoup.internal.f.g(i0());
    }

    public n s0(int i4) {
        String i02 = i0();
        org.jsoup.helper.d.e(i4 >= 0, "Split offset must be not be negative");
        org.jsoup.helper.d.e(i4 < i02.length(), "Split offset must not be greater than current text length");
        String substring = i02.substring(0, i4);
        String substring2 = i02.substring(i4);
        v0(substring);
        n nVar = new n(substring2);
        if (O() != null) {
            O().b(d0() + 1, nVar);
        }
        return nVar;
    }

    @Override // org.jsoup.nodes.k
    public String toString() {
        return J();
    }

    public String u0() {
        return org.jsoup.internal.f.n(o0());
    }

    public n v0(String str) {
        j0(str);
        return this;
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k w() {
        return super.w();
    }
}
