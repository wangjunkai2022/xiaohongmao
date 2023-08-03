package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: AsYouTypeFormatter.java */
/* loaded from: classes2.dex */
public class b {
    private static final int A = 3;

    /* renamed from: w  reason: collision with root package name */
    private static final char f35647w = ' ';

    /* renamed from: k  reason: collision with root package name */
    private String f35661k;

    /* renamed from: l  reason: collision with root package name */
    private Phonemetadata.PhoneMetadata f35662l;

    /* renamed from: m  reason: collision with root package name */
    private Phonemetadata.PhoneMetadata f35663m;

    /* renamed from: x  reason: collision with root package name */
    private static final Phonemetadata.PhoneMetadata f35648x = Phonemetadata.PhoneMetadata.newBuilder().setId("<ignored>").setInternationalPrefix("NA").build();

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f35649y = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)+");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f35650z = Pattern.compile("[- ]");
    private static final String B = "\u2008";
    private static final Pattern C = Pattern.compile(B);

    /* renamed from: a  reason: collision with root package name */
    private String f35651a = "";

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f35652b = new StringBuilder();

    /* renamed from: c  reason: collision with root package name */
    private String f35653c = "";

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f35654d = new StringBuilder();

    /* renamed from: e  reason: collision with root package name */
    private StringBuilder f35655e = new StringBuilder();

    /* renamed from: f  reason: collision with root package name */
    private boolean f35656f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f35657g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f35658h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f35659i = false;

    /* renamed from: j  reason: collision with root package name */
    private final PhoneNumberUtil f35660j = PhoneNumberUtil.M();

    /* renamed from: n  reason: collision with root package name */
    private int f35664n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f35665o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f35666p = 0;

    /* renamed from: q  reason: collision with root package name */
    private StringBuilder f35667q = new StringBuilder();

    /* renamed from: r  reason: collision with root package name */
    private boolean f35668r = false;

    /* renamed from: s  reason: collision with root package name */
    private String f35669s = "";

    /* renamed from: t  reason: collision with root package name */
    private StringBuilder f35670t = new StringBuilder();

    /* renamed from: u  reason: collision with root package name */
    private List<Phonemetadata.NumberFormat> f35671u = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    private com.google.i18n.phonenumbers.internal.c f35672v = new com.google.i18n.phonenumbers.internal.c(64);

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str) {
        this.f35661k = str;
        Phonemetadata.PhoneMetadata m9 = m(str);
        this.f35663m = m9;
        this.f35662l = m9;
    }

    private boolean a() {
        if (this.f35669s.length() > 0) {
            this.f35670t.insert(0, this.f35669s);
            this.f35667q.setLength(this.f35667q.lastIndexOf(this.f35669s));
        }
        return !this.f35669s.equals(y());
    }

    private String b(String str) {
        int length = this.f35667q.length();
        if (this.f35668r && length > 0 && this.f35667q.charAt(length - 1) != ' ') {
            return new String(this.f35667q) + f35647w + str;
        }
        return ((Object) this.f35667q) + str;
    }

    private String c() {
        if (this.f35670t.length() >= 3) {
            j(this.f35670t.toString());
            String g4 = g();
            return g4.length() > 0 ? g4 : v() ? o() : this.f35654d.toString();
        }
        return b(this.f35670t.toString());
    }

    private String d() {
        this.f35656f = true;
        this.f35659i = false;
        this.f35671u.clear();
        this.f35664n = 0;
        this.f35652b.setLength(0);
        this.f35653c = "";
        return c();
    }

    private boolean e() {
        StringBuilder sb;
        int m9;
        if (this.f35670t.length() == 0 || (m9 = this.f35660j.m(this.f35670t, (sb = new StringBuilder()))) == 0) {
            return false;
        }
        this.f35670t.setLength(0);
        this.f35670t.append((CharSequence) sb);
        String Y = this.f35660j.Y(m9);
        if ("001".equals(Y)) {
            this.f35663m = this.f35660j.Q(m9);
        } else if (!Y.equals(this.f35661k)) {
            this.f35663m = m(Y);
        }
        String num = Integer.toString(m9);
        StringBuilder sb2 = this.f35667q;
        sb2.append(num);
        sb2.append(f35647w);
        this.f35669s = "";
        return true;
    }

    private boolean f() {
        com.google.i18n.phonenumbers.internal.c cVar = this.f35672v;
        Matcher matcher = cVar.b("\\+|" + this.f35663m.getInternationalPrefix()).matcher(this.f35655e);
        if (matcher.lookingAt()) {
            this.f35658h = true;
            int end = matcher.end();
            this.f35670t.setLength(0);
            this.f35670t.append(this.f35655e.substring(end));
            this.f35667q.setLength(0);
            this.f35667q.append(this.f35655e.substring(0, end));
            if (this.f35655e.charAt(0) != '+') {
                this.f35667q.append(f35647w);
            }
            return true;
        }
        return false;
    }

    private boolean i(Phonemetadata.NumberFormat numberFormat) {
        String pattern = numberFormat.getPattern();
        this.f35652b.setLength(0);
        String l10 = l(pattern, numberFormat.getFormat());
        if (l10.length() > 0) {
            this.f35652b.append(l10);
            return true;
        }
        return false;
    }

    private void j(String str) {
        List<Phonemetadata.NumberFormat> numberFormatList;
        if ((this.f35658h && this.f35669s.length() == 0) && this.f35663m.getIntlNumberFormatCount() > 0) {
            numberFormatList = this.f35663m.getIntlNumberFormatList();
        } else {
            numberFormatList = this.f35663m.getNumberFormatList();
        }
        for (Phonemetadata.NumberFormat numberFormat : numberFormatList) {
            if (this.f35669s.length() <= 0 || !PhoneNumberUtil.D(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting() || numberFormat.hasDomesticCarrierCodeFormattingRule()) {
                if (this.f35669s.length() != 0 || this.f35658h || PhoneNumberUtil.D(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting()) {
                    if (f35649y.matcher(numberFormat.getFormat()).matches()) {
                        this.f35671u.add(numberFormat);
                    }
                }
            }
        }
        w(str);
    }

    private String l(String str, String str2) {
        Matcher matcher = this.f35672v.b(str).matcher("999999999999999");
        matcher.find();
        String group = matcher.group();
        return group.length() < this.f35670t.length() ? "" : group.replaceAll(str, str2).replaceAll(g5.h.f67844h, B);
    }

    private Phonemetadata.PhoneMetadata m(String str) {
        Phonemetadata.PhoneMetadata R = this.f35660j.R(this.f35660j.Y(this.f35660j.F(str)));
        return R != null ? R : f35648x;
    }

    private String o() {
        int length = this.f35670t.length();
        if (length > 0) {
            String str = "";
            for (int i4 = 0; i4 < length; i4++) {
                str = r(this.f35670t.charAt(i4));
            }
            return this.f35656f ? b(str) : this.f35654d.toString();
        }
        return this.f35667q.toString();
    }

    private String r(char c10) {
        Matcher matcher = C.matcher(this.f35652b);
        if (matcher.find(this.f35664n)) {
            String replaceFirst = matcher.replaceFirst(Character.toString(c10));
            this.f35652b.replace(0, replaceFirst.length(), replaceFirst);
            int start = matcher.start();
            this.f35664n = start;
            return this.f35652b.substring(0, start + 1);
        }
        if (this.f35671u.size() == 1) {
            this.f35656f = false;
        }
        this.f35653c = "";
        return this.f35654d.toString();
    }

    private String s(char c10, boolean z9) {
        this.f35654d.append(c10);
        if (z9) {
            this.f35665o = this.f35654d.length();
        }
        if (!t(c10)) {
            this.f35656f = false;
            this.f35657g = true;
        } else {
            c10 = x(c10, z9);
        }
        if (!this.f35656f) {
            if (this.f35657g) {
                return this.f35654d.toString();
            }
            if (f()) {
                if (e()) {
                    return d();
                }
            } else if (a()) {
                this.f35667q.append(f35647w);
                return d();
            }
            return this.f35654d.toString();
        }
        int length = this.f35655e.length();
        if (length != 0 && length != 1 && length != 2) {
            if (length == 3) {
                if (f()) {
                    this.f35659i = true;
                } else {
                    this.f35669s = y();
                    return c();
                }
            }
            if (this.f35659i) {
                if (e()) {
                    this.f35659i = false;
                }
                return ((Object) this.f35667q) + this.f35670t.toString();
            } else if (this.f35671u.size() > 0) {
                String r9 = r(c10);
                String g4 = g();
                if (g4.length() > 0) {
                    return g4;
                }
                w(this.f35670t.toString());
                if (v()) {
                    return o();
                }
                if (this.f35656f) {
                    return b(r9);
                }
                return this.f35654d.toString();
            } else {
                return c();
            }
        }
        return this.f35654d.toString();
    }

    private boolean t(char c10) {
        if (Character.isDigit(c10)) {
            return true;
        }
        return this.f35654d.length() == 1 && PhoneNumberUtil.I.matcher(Character.toString(c10)).matches();
    }

    private boolean u() {
        return this.f35663m.getCountryCode() == 1 && this.f35670t.charAt(0) == '1' && this.f35670t.charAt(1) != '0' && this.f35670t.charAt(1) != '1';
    }

    private boolean v() {
        Iterator<Phonemetadata.NumberFormat> it = this.f35671u.iterator();
        while (it.hasNext()) {
            Phonemetadata.NumberFormat next = it.next();
            String pattern = next.getPattern();
            if (this.f35653c.equals(pattern)) {
                return false;
            }
            if (i(next)) {
                this.f35653c = pattern;
                this.f35668r = f35650z.matcher(next.getNationalPrefixFormattingRule()).find();
                this.f35664n = 0;
                return true;
            }
            it.remove();
        }
        this.f35656f = false;
        return false;
    }

    private void w(String str) {
        int length = str.length() - 3;
        Iterator<Phonemetadata.NumberFormat> it = this.f35671u.iterator();
        while (it.hasNext()) {
            Phonemetadata.NumberFormat next = it.next();
            if (next.getLeadingDigitsPatternCount() != 0) {
                if (!this.f35672v.b(next.getLeadingDigitsPattern(Math.min(length, next.getLeadingDigitsPatternCount() - 1))).matcher(str).lookingAt()) {
                    it.remove();
                }
            }
        }
    }

    private char x(char c10, boolean z9) {
        if (c10 == '+') {
            this.f35655e.append(c10);
        } else {
            c10 = Character.forDigit(Character.digit(c10, 10), 10);
            this.f35655e.append(c10);
            this.f35670t.append(c10);
        }
        if (z9) {
            this.f35666p = this.f35655e.length();
        }
        return c10;
    }

    private String y() {
        int i4 = 1;
        if (u()) {
            StringBuilder sb = this.f35667q;
            sb.append('1');
            sb.append(f35647w);
            this.f35658h = true;
        } else {
            if (this.f35663m.hasNationalPrefixForParsing()) {
                Matcher matcher = this.f35672v.b(this.f35663m.getNationalPrefixForParsing()).matcher(this.f35670t);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.f35658h = true;
                    i4 = matcher.end();
                    this.f35667q.append(this.f35670t.substring(0, i4));
                }
            }
            i4 = 0;
        }
        String substring = this.f35670t.substring(0, i4);
        this.f35670t.delete(0, i4);
        return substring;
    }

    String g() {
        for (Phonemetadata.NumberFormat numberFormat : this.f35671u) {
            Matcher matcher = this.f35672v.b(numberFormat.getPattern()).matcher(this.f35670t);
            if (matcher.matches()) {
                this.f35668r = f35650z.matcher(numberFormat.getNationalPrefixFormattingRule()).find();
                String b10 = b(matcher.replaceAll(numberFormat.getFormat()));
                if (PhoneNumberUtil.J0(b10).contentEquals(this.f35655e)) {
                    return b10;
                }
            }
        }
        return "";
    }

    public void h() {
        this.f35651a = "";
        this.f35654d.setLength(0);
        this.f35655e.setLength(0);
        this.f35652b.setLength(0);
        this.f35664n = 0;
        this.f35653c = "";
        this.f35667q.setLength(0);
        this.f35669s = "";
        this.f35670t.setLength(0);
        this.f35656f = true;
        this.f35657g = false;
        this.f35666p = 0;
        this.f35665o = 0;
        this.f35658h = false;
        this.f35659i = false;
        this.f35671u.clear();
        this.f35668r = false;
        if (this.f35663m.equals(this.f35662l)) {
            return;
        }
        this.f35663m = m(this.f35661k);
    }

    String k() {
        return this.f35669s;
    }

    public int n() {
        if (!this.f35656f) {
            return this.f35665o;
        }
        int i4 = 0;
        int i10 = 0;
        while (i4 < this.f35666p && i10 < this.f35651a.length()) {
            if (this.f35655e.charAt(i4) == this.f35651a.charAt(i10)) {
                i4++;
            }
            i10++;
        }
        return i10;
    }

    public String p(char c10) {
        String s9 = s(c10, false);
        this.f35651a = s9;
        return s9;
    }

    public String q(char c10) {
        String s9 = s(c10, true);
        this.f35651a = s9;
        return s9;
    }
}
