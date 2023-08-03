package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.Document;

/* compiled from: DataNode.java */
/* loaded from: classes5.dex */
public class e extends j {
    public e(String str) {
        this.f91887e = str;
    }

    @Deprecated
    public static e n0(String str, String str2) {
        return new e(Entities.l(str));
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ boolean A(String str) {
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return "#data";
    }

    @Override // org.jsoup.nodes.k
    void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(o0());
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
    public e t() {
        return (e) super.clone();
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ int o() {
        return super.o();
    }

    public String o0() {
        return i0();
    }

    public e p0(String str) {
        j0(str);
        return this;
    }

    @Override // org.jsoup.nodes.k
    public String toString() {
        return J();
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k w() {
        return super.w();
    }
}
