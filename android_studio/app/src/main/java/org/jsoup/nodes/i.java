package org.jsoup.nodes;

import com.koushikdutta.async.http.AsyncHttpPost;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.u0;
import org.jsoup.Connection;
import org.jsoup.helper.c;
import org.jsoup.select.Elements;

/* compiled from: FormElement.java */
/* loaded from: classes5.dex */
public class i extends g {

    /* renamed from: l  reason: collision with root package name */
    private final Elements f91886l;

    public i(org.jsoup.parser.g gVar, String str, b bVar) {
        super(gVar, str, bVar);
        this.f91886l = new Elements();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.k
    public void U(k kVar) {
        super.U(kVar);
        this.f91886l.remove(kVar);
    }

    public i u2(g gVar) {
        this.f91886l.add(gVar);
        return this;
    }

    @Override // org.jsoup.nodes.g, org.jsoup.nodes.k
    /* renamed from: v2 */
    public i t() {
        return (i) super.t();
    }

    public Elements w2() {
        return this.f91886l;
    }

    public List<Connection.b> x2() {
        g c22;
        ArrayList arrayList = new ArrayList();
        Iterator<g> it = this.f91886l.iterator();
        while (it.hasNext()) {
            g next = it.next();
            if (next.i2().g() && !next.A("disabled")) {
                String g4 = next.g("name");
                if (g4.length() != 0) {
                    String g10 = next.g("type");
                    if (!g10.equalsIgnoreCase("button")) {
                        if ("select".equals(next.J1())) {
                            boolean z9 = false;
                            Iterator<g> it2 = next.a2("option[selected]").iterator();
                            while (it2.hasNext()) {
                                arrayList.add(c.C0796c.b(g4, it2.next().q2()));
                                z9 = true;
                            }
                            if (!z9 && (c22 = next.c2("option")) != null) {
                                arrayList.add(c.C0796c.b(g4, c22.q2()));
                            }
                        } else if (!"checkbox".equalsIgnoreCase(g10) && !"radio".equalsIgnoreCase(g10)) {
                            arrayList.add(c.C0796c.b(g4, next.q2()));
                        } else if (next.A("checked")) {
                            arrayList.add(c.C0796c.b(g4, next.q2().length() > 0 ? next.q2() : u0.f86831d));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public Connection y2() {
        String a10 = A(com.alipay.sdk.packet.d.f6907q) ? a(com.alipay.sdk.packet.d.f6907q) : k();
        org.jsoup.helper.d.i(a10, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        Connection.Method method = g("method").equalsIgnoreCase(AsyncHttpPost.f44556o) ? Connection.Method.POST : Connection.Method.GET;
        Document N = N();
        return (N != null ? N.y2().s() : org.jsoup.a.j()).x(a10).e(x2()).m(method);
    }
}
