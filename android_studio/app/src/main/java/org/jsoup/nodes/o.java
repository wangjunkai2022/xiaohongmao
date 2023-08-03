package org.jsoup.nodes;

import java.io.IOException;
import java.util.Iterator;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document;

/* compiled from: XmlDeclaration.java */
/* loaded from: classes5.dex */
public class o extends j {

    /* renamed from: f  reason: collision with root package name */
    private final boolean f91894f;

    public o(String str, boolean z9) {
        org.jsoup.helper.d.j(str);
        this.f91887e = str;
        this.f91894f = z9;
    }

    private void o0(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        Iterator<a> it = i().iterator();
        while (it.hasNext()) {
            a next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            if (!key.equals(H())) {
                appendable.append(' ');
                appendable.append(key);
                if (!value.isEmpty()) {
                    appendable.append("=\"");
                    Entities.g(appendable, value, outputSettings, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ boolean A(String str) {
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.k
    void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<").append(this.f91894f ? "!" : "?").append(i0());
        o0(appendable, outputSettings);
        appendable.append(this.f91894f ? "!" : "?").append(">");
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
    public o t() {
        return (o) super.clone();
    }

    public String n0() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        try {
            o0(b10, new Document.OutputSettings());
            return org.jsoup.internal.f.p(b10).trim();
        } catch (IOException e4) {
            throw new SerializationException(e4);
        }
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ int o() {
        return super.o();
    }

    public String p0() {
        return i0();
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
