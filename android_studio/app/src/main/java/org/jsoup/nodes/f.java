package org.jsoup.nodes;

import java.io.IOException;
import kotlin.text.Typography;
import org.jsoup.nodes.Document;

/* compiled from: DocumentType.java */
/* loaded from: classes5.dex */
public class f extends j {

    /* renamed from: f  reason: collision with root package name */
    public static final String f91865f = "PUBLIC";

    /* renamed from: g  reason: collision with root package name */
    public static final String f91866g = "SYSTEM";

    /* renamed from: h  reason: collision with root package name */
    private static final String f91867h = "name";

    /* renamed from: i  reason: collision with root package name */
    private static final String f91868i = "pubSysKey";

    /* renamed from: j  reason: collision with root package name */
    private static final String f91869j = "publicId";

    /* renamed from: k  reason: collision with root package name */
    private static final String f91870k = "systemId";

    public f(String str, String str2, String str3) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(str2);
        org.jsoup.helper.d.j(str3);
        h("name", str);
        h(f91869j, str2);
        h(f91870k, str3);
        r0();
    }

    private boolean m0(String str) {
        return !org.jsoup.internal.f.g(g(str));
    }

    private void r0() {
        if (m0(f91869j)) {
            h(f91868i, f91865f);
        } else if (m0(f91870k)) {
            h(f91868i, f91866g);
        }
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ boolean A(String str) {
        return super.A(str);
    }

    @Override // org.jsoup.nodes.k
    public String H() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.k
    void L(Appendable appendable, int i4, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.o() == Document.OutputSettings.Syntax.html && !m0(f91869j) && !m0(f91870k)) {
            appendable.append("<!doctype");
        } else {
            appendable.append("<!DOCTYPE");
        }
        if (m0("name")) {
            appendable.append(" ").append(g("name"));
        }
        if (m0(f91868i)) {
            appendable.append(" ").append(g(f91868i));
        }
        if (m0(f91869j)) {
            appendable.append(" \"").append(g(f91869j)).append('\"');
        }
        if (m0(f91870k)) {
            appendable.append(" \"").append(g(f91870k)).append('\"');
        }
        appendable.append(Typography.greater);
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

    public String n0() {
        return g("name");
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ int o() {
        return super.o();
    }

    public String o0() {
        return g(f91869j);
    }

    public void p0(String str) {
        if (str != null) {
            h(f91868i, str);
        }
    }

    public String q0() {
        return g(f91870k);
    }

    @Override // org.jsoup.nodes.j, org.jsoup.nodes.k
    public /* bridge */ /* synthetic */ k w() {
        return super.w();
    }
}
