package org.jsoup;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.jsoup.nodes.Document;
import org.jsoup.parser.f;
import org.jsoup.safety.c;
import r7.h;

/* compiled from: Jsoup.java */
/* loaded from: classes5.dex */
public class a {
    private a() {
    }

    public static String a(String str, String str2, org.jsoup.safety.b bVar) {
        return new org.jsoup.safety.a(bVar).c(v(str, str2)).u2().t1();
    }

    public static String b(String str, String str2, org.jsoup.safety.b bVar, Document.OutputSettings outputSettings) {
        Document c10 = new org.jsoup.safety.a(bVar).c(v(str, str2));
        c10.L2(outputSettings);
        return c10.u2().t1();
    }

    @Deprecated
    public static String c(String str, String str2, c cVar) {
        return a(str, str2, cVar);
    }

    @Deprecated
    public static String d(String str, String str2, c cVar, Document.OutputSettings outputSettings) {
        return b(str, str2, cVar, outputSettings);
    }

    public static String e(String str, org.jsoup.safety.b bVar) {
        return a(str, "", bVar);
    }

    @Deprecated
    public static String f(String str, c cVar) {
        return e(str, cVar);
    }

    public static Connection g(String str) {
        return org.jsoup.helper.c.N(str);
    }

    public static boolean h(String str, org.jsoup.safety.b bVar) {
        return new org.jsoup.safety.a(bVar).g(str);
    }

    @Deprecated
    public static boolean i(String str, c cVar) {
        return h(str, cVar);
    }

    public static Connection j() {
        return new org.jsoup.helper.c();
    }

    public static Document k(File file, @h String str) throws IOException {
        return org.jsoup.helper.b.e(file, str, file.getAbsolutePath());
    }

    public static Document l(File file, @h String str, String str2) throws IOException {
        return org.jsoup.helper.b.e(file, str, str2);
    }

    public static Document m(File file, @h String str, String str2, f fVar) throws IOException {
        return org.jsoup.helper.b.f(file, str, str2, fVar);
    }

    public static Document n(InputStream inputStream, @h String str, String str2) throws IOException {
        return org.jsoup.helper.b.g(inputStream, str, str2);
    }

    public static Document o(InputStream inputStream, @h String str, String str2, f fVar) throws IOException {
        return org.jsoup.helper.b.h(inputStream, str, str2, fVar);
    }

    public static Document p(String str) {
        return f.g(str, "");
    }

    public static Document q(String str, String str2) {
        return f.g(str, str2);
    }

    public static Document r(String str, String str2, f fVar) {
        return fVar.m(str, str2);
    }

    public static Document s(String str, f fVar) {
        return fVar.m(str, "");
    }

    public static Document t(URL url, int i4) throws IOException {
        Connection O = org.jsoup.helper.c.O(url);
        O.d(i4);
        return O.get();
    }

    public static Document u(String str) {
        return f.h(str, "");
    }

    public static Document v(String str, String str2) {
        return f.h(str, str2);
    }
}
