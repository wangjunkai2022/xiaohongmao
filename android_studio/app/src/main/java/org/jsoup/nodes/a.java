package org.jsoup.nodes;

import com.ksyun.media.streamer.logstats.StatsConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document;

/* compiled from: Attribute.java */
/* loaded from: classes5.dex */
public class a implements Map.Entry<String, String>, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f91841d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", StatsConstant.BW_EST_STRATEGY_NORMAL, "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", com.google.android.exoplayer2.text.ttml.d.B0, "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f91842e = Pattern.compile("[a-zA-Z_:][-a-zA-Z0-9_:.]*");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f91843f = Pattern.compile("[^-a-zA-Z0-9_:.]");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f91844g = Pattern.compile("[^\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f91845h = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]");

    /* renamed from: a  reason: collision with root package name */
    private String f91846a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private String f91847b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    b f91848c;

    public a(String str, @r7.h String str2) {
        this(str, str2, null);
    }

    public static a b(String str, String str2) {
        return new a(str, Entities.m(str2, true), null);
    }

    @r7.h
    public static String d(String str, Document.OutputSettings.Syntax syntax) {
        if (syntax == Document.OutputSettings.Syntax.xml) {
            Pattern pattern = f91842e;
            if (!pattern.matcher(str).matches()) {
                String replaceAll = f91843f.matcher(str).replaceAll("");
                if (pattern.matcher(replaceAll).matches()) {
                    return replaceAll;
                }
                return null;
            }
        }
        if (syntax == Document.OutputSettings.Syntax.html) {
            Pattern pattern2 = f91844g;
            if (!pattern2.matcher(str).matches()) {
                String replaceAll2 = f91845h.matcher(str).replaceAll("");
                if (pattern2.matcher(replaceAll2).matches()) {
                    return replaceAll2;
                }
                return null;
            }
        }
        return str;
    }

    protected static void i(String str, @r7.h String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        String d4 = d(str, outputSettings.o());
        if (d4 == null) {
            return;
        }
        j(d4, str2, appendable, outputSettings);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(String str, @r7.h String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(str);
        if (p(str, str2, outputSettings)) {
            return;
        }
        appendable.append("=\"");
        Entities.g(appendable, b.j(str2), outputSettings, true, false, false);
        appendable.append('\"');
    }

    public static boolean k(String str) {
        return Arrays.binarySearch(f91841d, str) >= 0;
    }

    protected static boolean m(String str) {
        return str.startsWith("data-") && str.length() > 5;
    }

    protected static boolean p(String str, @r7.h String str2, Document.OutputSettings outputSettings) {
        return outputSettings.o() == Document.OutputSettings.Syntax.html && (str2 == null || ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && k(str)));
    }

    /* renamed from: a */
    public a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // java.util.Map.Entry
    /* renamed from: c */
    public String getKey() {
        return this.f91846a;
    }

    @Override // java.util.Map.Entry
    /* renamed from: e */
    public String getValue() {
        return b.j(this.f91847b);
    }

    @Override // java.util.Map.Entry
    public boolean equals(@r7.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f91846a;
        if (str == null ? aVar.f91846a == null : str.equals(aVar.f91846a)) {
            String str2 = this.f91847b;
            String str3 = aVar.f91847b;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    public boolean f() {
        return this.f91847b != null;
    }

    public String g() {
        StringBuilder b10 = org.jsoup.internal.f.b();
        try {
            h(b10, new Document("").K2());
            return org.jsoup.internal.f.p(b10);
        } catch (IOException e4) {
            throw new SerializationException(e4);
        }
    }

    protected void h(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        i(this.f91846a, this.f91847b, appendable, outputSettings);
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.f91846a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f91847b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l() {
        return m(this.f91846a);
    }

    public void n(String str) {
        int w9;
        org.jsoup.helper.d.j(str);
        String trim = str.trim();
        org.jsoup.helper.d.h(trim);
        b bVar = this.f91848c;
        if (bVar != null && (w9 = bVar.w(this.f91846a)) != -1) {
            this.f91848c.f91856b[w9] = trim;
        }
        this.f91846a = trim;
    }

    @Override // java.util.Map.Entry
    /* renamed from: o */
    public String setValue(@r7.h String str) {
        int w9;
        String str2 = this.f91847b;
        b bVar = this.f91848c;
        if (bVar != null && (w9 = bVar.w(this.f91846a)) != -1) {
            str2 = this.f91848c.o(this.f91846a);
            this.f91848c.f91857c[w9] = str;
        }
        this.f91847b = str;
        return b.j(str2);
    }

    protected final boolean q(Document.OutputSettings outputSettings) {
        return p(this.f91846a, this.f91847b, outputSettings);
    }

    public String toString() {
        return g();
    }

    public a(String str, @r7.h String str2, @r7.h b bVar) {
        org.jsoup.helper.d.j(str);
        String trim = str.trim();
        org.jsoup.helper.d.h(trim);
        this.f91846a = trim;
        this.f91847b = str2;
        this.f91848c = bVar;
    }
}
