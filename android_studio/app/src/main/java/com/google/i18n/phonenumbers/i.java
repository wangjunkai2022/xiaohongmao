package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PhoneNumberMatcher.java */
/* loaded from: classes2.dex */
final class i implements Iterator<h> {

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f35692j;

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f35697o;

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f35699q;

    /* renamed from: a  reason: collision with root package name */
    private final PhoneNumberUtil f35700a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f35701b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35702c;

    /* renamed from: d  reason: collision with root package name */
    private final PhoneNumberUtil.Leniency f35703d;

    /* renamed from: e  reason: collision with root package name */
    private long f35704e;

    /* renamed from: f  reason: collision with root package name */
    private b f35705f = b.NOT_READY;

    /* renamed from: g  reason: collision with root package name */
    private h f35706g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f35707h = 0;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.i18n.phonenumbers.internal.c f35708i = new com.google.i18n.phonenumbers.internal.c(32);

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f35693k = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f35694l = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f35695m = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f35696n = Pattern.compile(":[0-5]\\d");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern[] f35698p = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* compiled from: PhoneNumberMatcher.java */
    /* loaded from: classes2.dex */
    interface a {
        boolean a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhoneNumberMatcher.java */
    /* loaded from: classes2.dex */
    public enum b {
        NOT_READY,
        READY,
        DONE
    }

    static {
        String str = "[^(\\[（［)\\]）］]";
        f35697o = Pattern.compile("(?:[(\\[（［])?(?:" + str + "+[)\\]）］])?" + str + "+(?:[(\\[（［]" + str + "+[)\\]）］])" + n(0, 3) + str + "*");
        String n9 = n(0, 2);
        String n10 = n(0, 4);
        String n11 = n(0, 20);
        String str2 = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]" + n10;
        String str3 = "\\p{Nd}" + n(1, 20);
        String str4 = "[" + ("(\\[（［+＋") + "]";
        f35699q = Pattern.compile(str4);
        f35692j = Pattern.compile("(?:" + str4 + str2 + ")" + n9 + str3 + "(?:" + str2 + str3 + ")" + n11 + "(?:" + PhoneNumberUtil.V + ")?", 66);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.Leniency leniency, long j4) {
        if (phoneNumberUtil == null || leniency == null) {
            throw null;
        }
        if (j4 >= 0) {
            this.f35700a = phoneNumberUtil;
            this.f35701b = str == null ? "" : str;
            this.f35702c = str2;
            this.f35703d = leniency;
            this.f35704e = j4;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.Y.split(sb.toString());
        int length = phoneNumber.hasExtension() ? split.length - 2 : split.length - 1;
        if (split.length == 1 || split[length].contains(phoneNumberUtil.T(phoneNumber))) {
            return true;
        }
        int length2 = strArr.length - 1;
        while (length2 > 0 && length >= 0) {
            if (!split[length].equals(strArr[length2])) {
                return false;
            }
            length2--;
            length--;
        }
        return length >= 0 && split[length].endsWith(strArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        int i4;
        if (phoneNumber.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(phoneNumber.getCountryCode());
            i4 = sb.indexOf(num) + num.length();
        } else {
            i4 = 0;
        }
        for (int i10 = 0; i10 < strArr.length; i10++) {
            int indexOf = sb.indexOf(strArr[i10], i4);
            if (indexOf < 0) {
                return false;
            }
            i4 = indexOf + strArr[i10].length();
            if (i10 == 0 && i4 < sb.length() && phoneNumberUtil.U(phoneNumberUtil.Y(phoneNumber.getCountryCode()), true) != null && Character.isDigit(sb.charAt(i4))) {
                return sb.substring(i4 - strArr[i10].length()).startsWith(phoneNumberUtil.T(phoneNumber));
            }
        }
        return sb.substring(i4).contains(phoneNumber.getExtension());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Phonenumber.PhoneNumber phoneNumber, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 >= 0 && (indexOf = str.indexOf(47, indexOf2 + 1)) >= 0) {
            if ((phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN) && PhoneNumberUtil.L0(str.substring(0, indexOf2)).equals(Integer.toString(phoneNumber.getCountryCode()))) {
                return str.substring(indexOf + 1).contains("/");
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(Phonenumber.PhoneNumber phoneNumber, String str, PhoneNumberUtil phoneNumberUtil) {
        int i4 = 0;
        while (i4 < str.length() - 1) {
            char charAt = str.charAt(i4);
            if (charAt == 'x' || charAt == 'X') {
                int i10 = i4 + 1;
                char charAt2 = str.charAt(i10);
                if (charAt2 != 'x' && charAt2 != 'X') {
                    if (!PhoneNumberUtil.L0(str.substring(i4)).equals(phoneNumber.getExtension())) {
                        return false;
                    }
                } else if (phoneNumberUtil.r0(phoneNumber, str.substring(i10)) != PhoneNumberUtil.MatchType.NSN_MATCH) {
                    return false;
                } else {
                    i4 = i10;
                }
            }
            i4++;
        }
        return true;
    }

    private h f(CharSequence charSequence, int i4) {
        for (Pattern pattern : f35698p) {
            Matcher matcher = pattern.matcher(charSequence);
            boolean z9 = true;
            while (matcher.find() && this.f35704e > 0) {
                if (z9) {
                    h p9 = p(q(PhoneNumberUtil.Q, charSequence.subSequence(0, matcher.start())), i4);
                    if (p9 != null) {
                        return p9;
                    }
                    this.f35704e--;
                    z9 = false;
                }
                h p10 = p(q(PhoneNumberUtil.Q, matcher.group(1)), matcher.start(1) + i4);
                if (p10 != null) {
                    return p10;
                }
                this.f35704e--;
            }
        }
        return null;
    }

    private h g(CharSequence charSequence, int i4) {
        if (f35694l.matcher(charSequence).find()) {
            return null;
        }
        if (f35695m.matcher(charSequence).find()) {
            if (f35696n.matcher(this.f35701b.toString().substring(charSequence.length() + i4)).lookingAt()) {
                return null;
            }
        }
        h p9 = p(charSequence, i4);
        return p9 != null ? p9 : f(charSequence, i4);
    }

    private h h(int i4) {
        Matcher matcher = f35692j.matcher(this.f35701b);
        while (this.f35704e > 0 && matcher.find(i4)) {
            int start = matcher.start();
            CharSequence q9 = q(PhoneNumberUtil.O, this.f35701b.subSequence(start, matcher.end()));
            h g4 = g(q9, start);
            if (g4 != null) {
                return g4;
            }
            i4 = start + q9.length();
            this.f35704e--;
        }
        return null;
    }

    private static String[] i(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber) {
        String q9 = phoneNumberUtil.q(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
        int indexOf = q9.indexOf(59);
        if (indexOf < 0) {
            indexOf = q9.length();
        }
        return q9.substring(q9.indexOf(45) + 1, indexOf).split("-");
    }

    private static String[] j(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, Phonemetadata.NumberFormat numberFormat) {
        return phoneNumberUtil.y(phoneNumberUtil.T(phoneNumber), numberFormat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
    }

    private static boolean k(char c10) {
        return c10 == '%' || Character.getType(c10) == 26;
    }

    static boolean l(char c10) {
        if (Character.isLetter(c10) || Character.getType(c10) == 6) {
            Character.UnicodeBlock of = Character.UnicodeBlock.of(c10);
            return of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m(Phonenumber.PhoneNumber phoneNumber, PhoneNumberUtil phoneNumberUtil) {
        Phonemetadata.PhoneMetadata R;
        if (phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY && (R = phoneNumberUtil.R(phoneNumberUtil.Y(phoneNumber.getCountryCode()))) != null) {
            Phonemetadata.NumberFormat d4 = phoneNumberUtil.d(R.getNumberFormatList(), phoneNumberUtil.T(phoneNumber));
            if (d4 == null || d4.getNationalPrefixFormattingRule().length() <= 0 || d4.getNationalPrefixOptionalWhenFormatting() || PhoneNumberUtil.D(d4.getNationalPrefixFormattingRule())) {
                return true;
            }
            return phoneNumberUtil.H0(new StringBuilder(PhoneNumberUtil.L0(phoneNumber.getRawInput())), R, null);
        }
        return true;
    }

    private static String n(int i4, int i10) {
        if (i4 >= 0 && i10 > 0 && i10 >= i4) {
            return "{" + i4 + "," + i10 + com.alipay.sdk.util.i.f6967d;
        }
        throw new IllegalArgumentException();
    }

    private h p(CharSequence charSequence, int i4) {
        try {
            if (f35697o.matcher(charSequence).matches() && !f35693k.matcher(charSequence).find()) {
                if (this.f35703d.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0) {
                    if (i4 > 0 && !f35699q.matcher(charSequence).lookingAt()) {
                        char charAt = this.f35701b.charAt(i4 - 1);
                        if (k(charAt) || l(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i4;
                    if (length < this.f35701b.length()) {
                        char charAt2 = this.f35701b.charAt(length);
                        if (k(charAt2) || l(charAt2)) {
                            return null;
                        }
                    }
                }
                Phonenumber.PhoneNumber P0 = this.f35700a.P0(charSequence, this.f35702c);
                if (this.f35703d.a(P0, charSequence, this.f35700a, this)) {
                    P0.clearCountryCodeSource();
                    P0.clearRawInput();
                    P0.clearPreferredDomesticCarrierCode();
                    return new h(i4, charSequence.toString(), P0);
                }
            }
        } catch (NumberParseException unused) {
        }
        return null;
    }

    private static CharSequence q(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        return matcher.find() ? charSequence.subSequence(0, matcher.start()) : charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, a aVar) {
        StringBuilder K0 = PhoneNumberUtil.K0(charSequence, true);
        if (aVar.a(phoneNumberUtil, phoneNumber, K0, i(phoneNumberUtil, phoneNumber))) {
            return true;
        }
        Phonemetadata.PhoneMetadata b10 = e.b(phoneNumber.getCountryCode());
        String T = phoneNumberUtil.T(phoneNumber);
        if (b10 != null) {
            for (Phonemetadata.NumberFormat numberFormat : b10.getNumberFormatList()) {
                if (numberFormat.getLeadingDigitsPatternCount() <= 0 || this.f35708i.b(numberFormat.getLeadingDigitsPattern(0)).matcher(T).lookingAt()) {
                    if (aVar.a(phoneNumberUtil, phoneNumber, K0, j(phoneNumberUtil, phoneNumber, numberFormat))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f35705f == b.NOT_READY) {
            h h4 = h(this.f35707h);
            this.f35706g = h4;
            if (h4 == null) {
                this.f35705f = b.DONE;
            } else {
                this.f35707h = h4.a();
                this.f35705f = b.READY;
            }
        }
        return this.f35705f == b.READY;
    }

    @Override // java.util.Iterator
    /* renamed from: o */
    public h next() {
        if (hasNext()) {
            h hVar = this.f35706g;
            this.f35706g = null;
            this.f35705f = b.NOT_READY;
            return hVar;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
