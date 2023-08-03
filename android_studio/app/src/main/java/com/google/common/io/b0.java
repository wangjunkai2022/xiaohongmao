package com.google.common.io;

import com.google.common.collect.b3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

/* compiled from: Resources.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class b0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Resources.java */
    /* loaded from: classes2.dex */
    public static class a implements t<List<String>> {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f34442a = b3.q();

        a() {
        }

        @Override // com.google.common.io.t
        public boolean b(String str) {
            this.f34442a.add(str);
            return true;
        }

        @Override // com.google.common.io.t
        /* renamed from: c */
        public List<String> a() {
            return this.f34442a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Resources.java */
    /* loaded from: classes2.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final URL f34443a;

        /* synthetic */ b(URL url, a aVar) {
            this(url);
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return this.f34443a.openStream();
        }

        public String toString() {
            return "Resources.asByteSource(" + this.f34443a + ")";
        }

        private b(URL url) {
            this.f34443a = (URL) com.google.common.base.a0.E(url);
        }
    }

    private b0() {
    }

    public static f a(URL url) {
        return new b(url, null);
    }

    public static j b(URL url, Charset charset) {
        return a(url).a(charset);
    }

    public static void c(URL url, OutputStream outputStream) throws IOException {
        a(url).g(outputStream);
    }

    public static URL d(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        com.google.common.base.a0.y(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }

    @CanIgnoreReturnValue
    public static URL e(String str) {
        URL resource = ((ClassLoader) com.google.common.base.v.a(Thread.currentThread().getContextClassLoader(), b0.class.getClassLoader())).getResource(str);
        com.google.common.base.a0.u(resource != null, "resource %s not found.", str);
        return resource;
    }

    @CanIgnoreReturnValue
    public static <T> T f(URL url, Charset charset, t<T> tVar) throws IOException {
        return (T) b(url, charset).q(tVar);
    }

    public static List<String> g(URL url, Charset charset) throws IOException {
        return (List) f(url, charset, new a());
    }

    public static byte[] h(URL url) throws IOException {
        return a(url).o();
    }

    public static String i(URL url, Charset charset) throws IOException {
        return b(url, charset).n();
    }
}
