package org.jsoup;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieStore;
import java.net.Proxy;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.jsoup.nodes.Document;
import org.jsoup.parser.f;
import r7.h;

/* loaded from: classes5.dex */
public interface Connection {

    /* loaded from: classes5.dex */
    public enum Method {
        GET(false),
        POST(true),
        PUT(true),
        DELETE(false),
        PATCH(true),
        HEAD(false),
        OPTIONS(false),
        TRACE(false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f91716a;

        Method(boolean z9) {
            this.f91716a = z9;
        }

        public final boolean hasBody() {
            return this.f91716a;
        }
    }

    /* loaded from: classes5.dex */
    public interface a<T extends a<T>> {
        Map<String, String> A();

        @h
        String B(String str);

        T E(String str, String str2);

        boolean F(String str);

        T G(String str);

        @h
        String H(String str);

        boolean I(String str);

        T K(String str);

        List<String> M(String str);

        Map<String, List<String>> N();

        T c(String str, String str2);

        Map<String, String> f();

        T k(URL url);

        T l(String str, String str2);

        T m(Method method);

        Method method();

        URL v();

        boolean w(String str, String str2);
    }

    /* loaded from: classes5.dex */
    public interface b {
        String a();

        @h
        String e();

        b f(String str);

        b g(String str);

        b h(String str);

        b i(InputStream inputStream);

        @h
        InputStream inputStream();

        boolean j();

        String value();
    }

    /* loaded from: classes5.dex */
    public interface c extends a<c> {
        boolean C();

        boolean J();

        @h
        String Q();

        int R();

        f U();

        c a(boolean z9);

        c b(@h String str);

        c d(int i4);

        Collection<b> data();

        void g(SSLSocketFactory sSLSocketFactory);

        c h(String str);

        c i(@h Proxy proxy);

        c j(f fVar);

        c o(String str, int i4);

        c p(int i4);

        c q(boolean z9);

        c r(boolean z9);

        boolean s();

        String t();

        int timeout();

        @h
        SSLSocketFactory x();

        @h
        Proxy y();

        c z(b bVar);
    }

    /* loaded from: classes5.dex */
    public interface d extends a<d> {
        Document D() throws IOException;

        d L(String str);

        d O();

        int P();

        String S();

        byte[] T();

        String body();

        @h
        String e();

        @h
        String n();

        BufferedInputStream u();
    }

    CookieStore A();

    Connection B(String str);

    Connection C(Map<String, String> map);

    Connection D(String str, String str2, InputStream inputStream);

    Connection E(d dVar);

    Connection F(String... strArr);

    @h
    b G(String str);

    Connection H(Map<String, String> map);

    Connection a(boolean z9);

    Connection b(String str);

    Connection c(String str, String str2);

    Connection d(int i4);

    Connection e(Collection<b> collection);

    d execute() throws IOException;

    Connection f(Map<String, String> map);

    Connection g(SSLSocketFactory sSLSocketFactory);

    Document get() throws IOException;

    Connection h(String str);

    Connection i(@h Proxy proxy);

    Connection j(f fVar);

    Connection k(URL url);

    Connection l(String str, String str2);

    Connection m(Method method);

    Connection n(String str, String str2, InputStream inputStream, String str3);

    Connection o(String str, int i4);

    Connection p(int i4);

    Connection q(boolean z9);

    Connection r(boolean z9);

    c request();

    Connection s();

    Connection t(String str, String str2);

    Document u() throws IOException;

    Connection v(String str);

    Connection w(c cVar);

    Connection x(String str);

    d y();

    Connection z(CookieStore cookieStore);
}
