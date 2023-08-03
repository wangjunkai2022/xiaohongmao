package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.Document;

/* compiled from: CDataNode.java */
/* loaded from: classes5.dex */
public class c extends n {
    public c(String str) {
        super(str);
    }

    @Override // org.jsoup.nodes.n, org.jsoup.nodes.k
    public String H() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.n, org.jsoup.nodes.k
    void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<![CDATA[").append(o0());
    }

    @Override // org.jsoup.nodes.n, org.jsoup.nodes.k
    void M(Appendable appendable, int i4, Document.OutputSettings outputSettings) {
        try {
            appendable.append("]]>");
        } catch (IOException e4) {
            throw new UncheckedIOException(e4);
        }
    }

    @Override // org.jsoup.nodes.n
    public String u0() {
        return o0();
    }

    @Override // org.jsoup.nodes.n, org.jsoup.nodes.k
    /* renamed from: w0 */
    public c t() {
        return (c) super.t();
    }
}
