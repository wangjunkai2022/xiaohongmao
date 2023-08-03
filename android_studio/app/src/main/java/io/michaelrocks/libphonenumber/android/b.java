package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: AsYouTypeFormatter.java */
/* loaded from: classes3.dex */
public class b {
    private static final int A = 3;

    /* renamed from: w  reason: collision with root package name */
    private static final char f70991w = ' ';

    /* renamed from: j  reason: collision with root package name */
    private final PhoneNumberUtil f71004j;

    /* renamed from: k  reason: collision with root package name */
    private String f71005k;

    /* renamed from: l  reason: collision with root package name */
    private Phonemetadata.PhoneMetadata f71006l;

    /* renamed from: m  reason: collision with root package name */
    private Phonemetadata.PhoneMetadata f71007m;

    /* renamed from: x  reason: collision with root package name */
    private static final Phonemetadata.PhoneMetadata f70992x = new Phonemetadata.PhoneMetadata().setInternationalPrefix("NA");

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f70993y = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)+");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f70994z = Pattern.compile("[- ]");
    private static final String B = "\u2008";
    private static final Pattern C = Pattern.compile(B);

    /* renamed from: a  reason: collision with root package name */
    private String f70995a = "";

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f70996b = new StringBuilder();

    /* renamed from: c  reason: collision with root package name */
    private String f70997c = "";

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f70998d = new StringBuilder();

    /* renamed from: e  reason: collision with root package name */
    private StringBuilder f70999e = new StringBuilder();

    /* renamed from: f  reason: collision with root package name */
    private boolean f71000f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f71001g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f71002h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f71003i = false;

    /* renamed from: n  reason: collision with root package name */
    private int f71008n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f71009o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f71010p = 0;

    /* renamed from: q  reason: collision with root package name */
    private StringBuilder f71011q = new StringBuilder();

    /* renamed from: r  reason: collision with root package name */
    private boolean f71012r = false;

    /* renamed from: s  reason: collision with root package name */
    private String f71013s = "";

    /* renamed from: t  reason: collision with root package name */
    private StringBuilder f71014t = new StringBuilder();

    /* renamed from: u  reason: collision with root package name */
    private List<Phonemetadata.NumberFormat> f71015u = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    private io.michaelrocks.libphonenumber.android.internal.c f71016v = new io.michaelrocks.libphonenumber.android.internal.c(64);

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(PhoneNumberUtil phoneUtil, String regionCode) {
        this.f71004j = phoneUtil;
        this.f71005k = regionCode;
        Phonemetadata.PhoneMetadata m9 = m(regionCode);
        this.f71007m = m9;
        this.f71006l = m9;
    }

    private boolean a() {
        if (this.f71013s.length() > 0) {
            this.f71014t.insert(0, this.f71013s);
            this.f71011q.setLength(this.f71011q.lastIndexOf(this.f71013s));
        }
        return !this.f71013s.equals(y());
    }

    private String b(String nationalNumber) {
        int length = this.f71011q.length();
        if (this.f71012r && length > 0 && this.f71011q.charAt(length - 1) != ' ') {
            return new String(this.f71011q) + f70991w + nationalNumber;
        }
        return ((Object) this.f71011q) + nationalNumber;
    }

    private String c() {
        if (this.f71014t.length() >= 3) {
            j(this.f71014t.toString());
            String g4 = g();
            return g4.length() > 0 ? g4 : v() ? o() : this.f70998d.toString();
        }
        return b(this.f71014t.toString());
    }

    private String d() {
        this.f71000f = true;
        this.f71003i = false;
        this.f71015u.clear();
        this.f71008n = 0;
        this.f70996b.setLength(0);
        this.f70997c = "";
        return c();
    }

    private boolean e() {
        StringBuilder sb;
        int m9;
        if (this.f71014t.length() == 0 || (m9 = this.f71004j.m(this.f71014t, (sb = new StringBuilder()))) == 0) {
            return false;
        }
        this.f71014t.setLength(0);
        this.f71014t.append((CharSequence) sb);
        String Y = this.f71004j.Y(m9);
        if ("001".equals(Y)) {
            this.f71007m = this.f71004j.P(m9);
        } else if (!Y.equals(this.f71005k)) {
            this.f71007m = m(Y);
        }
        String num = Integer.toString(m9);
        StringBuilder sb2 = this.f71011q;
        sb2.append(num);
        sb2.append(f70991w);
        this.f71013s = "";
        return true;
    }

    private boolean f() {
        io.michaelrocks.libphonenumber.android.internal.c cVar = this.f71016v;
        Matcher matcher = cVar.b("\\+|" + this.f71007m.getInternationalPrefix()).matcher(this.f70999e);
        if (matcher.lookingAt()) {
            this.f71002h = true;
            int end = matcher.end();
            this.f71014t.setLength(0);
            this.f71014t.append(this.f70999e.substring(end));
            this.f71011q.setLength(0);
            this.f71011q.append(this.f70999e.substring(0, end));
            if (this.f70999e.charAt(0) != '+') {
                this.f71011q.append(f70991w);
            }
            return true;
        }
        return false;
    }

    private boolean i(Phonemetadata.NumberFormat format) {
        String pattern = format.getPattern();
        this.f70996b.setLength(0);
        String l10 = l(pattern, format.getFormat());
        if (l10.length() > 0) {
            this.f70996b.append(l10);
            return true;
        }
        return false;
    }

    private void j(String leadingDigits) {
        List<Phonemetadata.NumberFormat> numberFormats;
        if ((this.f71002h && this.f71013s.length() == 0) && this.f71007m.intlNumberFormatSize() > 0) {
            numberFormats = this.f71007m.intlNumberFormats();
        } else {
            numberFormats = this.f71007m.numberFormats();
        }
        for (Phonemetadata.NumberFormat numberFormat : numberFormats) {
            if (this.f71013s.length() <= 0 || !PhoneNumberUtil.D(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting() || numberFormat.hasDomesticCarrierCodeFormattingRule()) {
                if (this.f71013s.length() != 0 || this.f71002h || PhoneNumberUtil.D(numberFormat.getNationalPrefixFormattingRule()) || numberFormat.getNationalPrefixOptionalWhenFormatting()) {
                    if (f70993y.matcher(numberFormat.getFormat()).matches()) {
                        this.f71015u.add(numberFormat);
                    }
                }
            }
        }
        w(leadingDigits);
    }

    private String l(String numberPattern, String numberFormat) {
        Matcher matcher = this.f71016v.b(numberPattern).matcher("999999999999999");
        matcher.find();
        String group = matcher.group();
        return group.length() < this.f71014t.length() ? "" : group.replaceAll(numberPattern, numberFormat).replaceAll(g5.h.f67844h, B);
    }

    private Phonemetadata.PhoneMetadata m(String regionCode) {
        Phonemetadata.PhoneMetadata Q = this.f71004j.Q(this.f71004j.Y(this.f71004j.F(regionCode)));
        return Q != null ? Q : f70992x;
    }

    private String o() {
        int length = this.f71014t.length();
        if (length > 0) {
            String str = "";
            for (int i4 = 0; i4 < length; i4++) {
                str = r(this.f71014t.charAt(i4));
            }
            return this.f71000f ? b(str) : this.f70998d.toString();
        }
        return this.f71011q.toString();
    }

    private String r(char nextChar) {
        Matcher matcher = C.matcher(this.f70996b);
        if (matcher.find(this.f71008n)) {
            String replaceFirst = matcher.replaceFirst(Character.toString(nextChar));
            this.f70996b.replace(0, replaceFirst.length(), replaceFirst);
            int start = matcher.start();
            this.f71008n = start;
            return this.f70996b.substring(0, start + 1);
        }
        if (this.f71015u.size() == 1) {
            this.f71000f = false;
        }
        this.f70997c = "";
        return this.f70998d.toString();
    }

    private String s(char nextChar, boolean rememberPosition) {
        this.f70998d.append(nextChar);
        if (rememberPosition) {
            this.f71009o = this.f70998d.length();
        }
        if (!t(nextChar)) {
            this.f71000f = false;
            this.f71001g = true;
        } else {
            nextChar = x(nextChar, rememberPosition);
        }
        if (!this.f71000f) {
            if (this.f71001g) {
                return this.f70998d.toString();
            }
            if (f()) {
                if (e()) {
                    return d();
                }
            } else if (a()) {
                this.f71011q.append(f70991w);
                return d();
            }
            return this.f70998d.toString();
        }
        int length = this.f70999e.length();
        if (length != 0 && length != 1 && length != 2) {
            if (length == 3) {
                if (f()) {
                    this.f71003i = true;
                } else {
                    this.f71013s = y();
                    return c();
                }
            }
            if (this.f71003i) {
                if (e()) {
                    this.f71003i = false;
                }
                return ((Object) this.f71011q) + this.f71014t.toString();
            } else if (this.f71015u.size() > 0) {
                String r9 = r(nextChar);
                String g4 = g();
                if (g4.length() > 0) {
                    return g4;
                }
                w(this.f71014t.toString());
                if (v()) {
                    return o();
                }
                if (this.f71000f) {
                    return b(r9);
                }
                return this.f70998d.toString();
            } else {
                return c();
            }
        }
        return this.f70998d.toString();
    }

    private boolean t(char nextChar) {
        if (Character.isDigit(nextChar)) {
            return true;
        }
        return this.f70998d.length() == 1 && PhoneNumberUtil.J.matcher(Character.toString(nextChar)).matches();
    }

    private boolean u() {
        return this.f71007m.getCountryCode() == 1 && this.f71014t.charAt(0) == '1' && this.f71014t.charAt(1) != '0' && this.f71014t.charAt(1) != '1';
    }

    private boolean v() {
        Iterator<Phonemetadata.NumberFormat> it = this.f71015u.iterator();
        while (it.hasNext()) {
            Phonemetadata.NumberFormat next = it.next();
            String pattern = next.getPattern();
            if (this.f70997c.equals(pattern)) {
                return false;
            }
            if (i(next)) {
                this.f70997c = pattern;
                this.f71012r = f70994z.matcher(next.getNationalPrefixFormattingRule()).find();
                this.f71008n = 0;
                return true;
            }
            it.remove();
        }
        this.f71000f = false;
        return false;
    }

    private void w(String leadingDigits) {
        int length = leadingDigits.length() - 3;
        Iterator<Phonemetadata.NumberFormat> it = this.f71015u.iterator();
        while (it.hasNext()) {
            Phonemetadata.NumberFormat next = it.next();
            if (next.leadingDigitsPatternSize() != 0) {
                if (!this.f71016v.b(next.getLeadingDigitsPattern(Math.min(length, next.leadingDigitsPatternSize() - 1))).matcher(leadingDigits).lookingAt()) {
                    it.remove();
                }
            }
        }
    }

    private char x(char nextChar, boolean rememberPosition) {
        if (nextChar == '+') {
            this.f70999e.append(nextChar);
        } else {
            nextChar = Character.forDigit(Character.digit(nextChar, 10), 10);
            this.f70999e.append(nextChar);
            this.f71014t.append(nextChar);
        }
        if (rememberPosition) {
            this.f71010p = this.f70999e.length();
        }
        return nextChar;
    }

    private String y() {
        int i4 = 1;
        if (u()) {
            StringBuilder sb = this.f71011q;
            sb.append('1');
            sb.append(f70991w);
            this.f71002h = true;
        } else {
            if (this.f71007m.hasNationalPrefixForParsing()) {
                Matcher matcher = this.f71016v.b(this.f71007m.getNationalPrefixForParsing()).matcher(this.f71014t);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.f71002h = true;
                    i4 = matcher.end();
                    this.f71011q.append(this.f71014t.substring(0, i4));
                }
            }
            i4 = 0;
        }
        String substring = this.f71014t.substring(0, i4);
        this.f71014t.delete(0, i4);
        return substring;
    }

    String g() {
        for (Phonemetadata.NumberFormat numberFormat : this.f71015u) {
            Matcher matcher = this.f71016v.b(numberFormat.getPattern()).matcher(this.f71014t);
            if (matcher.matches()) {
                this.f71012r = f70994z.matcher(numberFormat.getNationalPrefixFormattingRule()).find();
                String b10 = b(matcher.replaceAll(numberFormat.getFormat()));
                if (PhoneNumberUtil.K0(b10).contentEquals(this.f70999e)) {
                    return b10;
                }
            }
        }
        return "";
    }

    public void h() {
        this.f70995a = "";
        this.f70998d.setLength(0);
        this.f70999e.setLength(0);
        this.f70996b.setLength(0);
        this.f71008n = 0;
        this.f70997c = "";
        this.f71011q.setLength(0);
        this.f71013s = "";
        this.f71014t.setLength(0);
        this.f71000f = true;
        this.f71001g = false;
        this.f71010p = 0;
        this.f71009o = 0;
        this.f71002h = false;
        this.f71003i = false;
        this.f71015u.clear();
        this.f71012r = false;
        if (this.f71007m.equals(this.f71006l)) {
            return;
        }
        this.f71007m = m(this.f71005k);
    }

    String k() {
        return this.f71013s;
    }

    public int n() {
        if (!this.f71000f) {
            return this.f71009o;
        }
        int i4 = 0;
        int i10 = 0;
        while (i4 < this.f71010p && i10 < this.f70995a.length()) {
            if (this.f70999e.charAt(i4) == this.f70995a.charAt(i10)) {
                i4++;
            }
            i10++;
        }
        return i10;
    }

    public String p(char nextChar) {
        String s9 = s(nextChar, false);
        this.f70995a = s9;
        return s9;
    }

    public String q(char nextChar) {
        String s9 = s(nextChar, true);
        this.f70995a = s9;
        return s9;
    }
}
