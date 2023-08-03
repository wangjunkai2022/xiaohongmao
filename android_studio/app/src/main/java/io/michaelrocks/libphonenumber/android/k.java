package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.PhoneNumberUtil;
import io.michaelrocks.libphonenumber.android.Phonemetadata;
import io.michaelrocks.libphonenumber.android.Phonenumber;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PhoneNumberMatcher.java */
/* loaded from: classes3.dex */
final class k implements Iterator<j> {

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f71044j;

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f71049o;

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f71051q;

    /* renamed from: a  reason: collision with root package name */
    private final PhoneNumberUtil f71052a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f71053b;

    /* renamed from: c  reason: collision with root package name */
    private final String f71054c;

    /* renamed from: d  reason: collision with root package name */
    private final PhoneNumberUtil.Leniency f71055d;

    /* renamed from: e  reason: collision with root package name */
    private long f71056e;

    /* renamed from: f  reason: collision with root package name */
    private b f71057f = b.NOT_READY;

    /* renamed from: g  reason: collision with root package name */
    private j f71058g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f71059h = 0;

    /* renamed from: i  reason: collision with root package name */
    private final io.michaelrocks.libphonenumber.android.internal.c f71060i = new io.michaelrocks.libphonenumber.android.internal.c(32);

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f71045k = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f71046l = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f71047m = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f71048n = Pattern.compile(":[0-5]\\d");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern[] f71050p = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhoneNumberMatcher.java */
    /* loaded from: classes3.dex */
    public interface a {
        boolean a(PhoneNumberUtil util, Phonenumber.PhoneNumber number, StringBuilder normalizedCandidate, String[] expectedNumberGroups);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhoneNumberMatcher.java */
    /* loaded from: classes3.dex */
    public enum b {
        NOT_READY,
        READY,
        DONE
    }

    static {
        String str = "[^(\\[（［)\\]）］]";
        f71049o = Pattern.compile("(?:[(\\[（［])?(?:" + str + "+[)\\]）］])?" + str + "+(?:[(\\[（［]" + str + "+[)\\]）］])" + n(0, 3) + str + "*");
        String n9 = n(0, 2);
        String n10 = n(0, 4);
        String n11 = n(0, 20);
        String str2 = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]" + n10;
        String str3 = "\\p{Nd}" + n(1, 20);
        String str4 = "[" + ("(\\[（［+＋") + "]";
        f71051q = Pattern.compile(str4);
        f71044j = Pattern.compile("(?:" + str4 + str2 + ")" + n9 + str3 + "(?:" + str2 + str3 + ")" + n11 + "(?:" + PhoneNumberUtil.X + ")?", 66);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(PhoneNumberUtil util, String text, String country, PhoneNumberUtil.Leniency leniency, long maxTries) {
        if (util == null || leniency == null) {
            throw null;
        }
        if (maxTries >= 0) {
            this.f71052a = util;
            this.f71053b = text == null ? "" : text;
            this.f71054c = country;
            this.f71055d = leniency;
            this.f71056e = maxTries;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(PhoneNumberUtil util, Phonenumber.PhoneNumber number, StringBuilder normalizedCandidate, String[] formattedNumberGroups) {
        String[] split = PhoneNumberUtil.f70861a0.split(normalizedCandidate.toString());
        int length = number.hasExtension() ? split.length - 2 : split.length - 1;
        if (split.length == 1 || split[length].contains(util.T(number))) {
            return true;
        }
        int length2 = formattedNumberGroups.length - 1;
        while (length2 > 0 && length >= 0) {
            if (!split[length].equals(formattedNumberGroups[length2])) {
                return false;
            }
            length2--;
            length--;
        }
        return length >= 0 && split[length].endsWith(formattedNumberGroups[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(PhoneNumberUtil util, Phonenumber.PhoneNumber number, StringBuilder normalizedCandidate, String[] formattedNumberGroups) {
        int i4;
        if (number.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(number.getCountryCode());
            i4 = normalizedCandidate.indexOf(num) + num.length();
        } else {
            i4 = 0;
        }
        for (int i10 = 0; i10 < formattedNumberGroups.length; i10++) {
            int indexOf = normalizedCandidate.indexOf(formattedNumberGroups[i10], i4);
            if (indexOf < 0) {
                return false;
            }
            i4 = indexOf + formattedNumberGroups[i10].length();
            if (i10 == 0 && i4 < normalizedCandidate.length() && util.U(util.Y(number.getCountryCode()), true) != null && Character.isDigit(normalizedCandidate.charAt(i4))) {
                return normalizedCandidate.substring(i4 - formattedNumberGroups[i10].length()).startsWith(util.T(number));
            }
        }
        return normalizedCandidate.substring(i4).contains(number.getExtension());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Phonenumber.PhoneNumber number, String candidate) {
        int indexOf;
        int indexOf2 = candidate.indexOf(47);
        if (indexOf2 >= 0 && (indexOf = candidate.indexOf(47, indexOf2 + 1)) >= 0) {
            if ((number.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || number.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN) && PhoneNumberUtil.M0(candidate.substring(0, indexOf2)).equals(Integer.toString(number.getCountryCode()))) {
                return candidate.substring(indexOf + 1).contains("/");
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(Phonenumber.PhoneNumber number, String candidate, PhoneNumberUtil util) {
        int i4 = 0;
        while (i4 < candidate.length() - 1) {
            char charAt = candidate.charAt(i4);
            if (charAt == 'x' || charAt == 'X') {
                int i10 = i4 + 1;
                char charAt2 = candidate.charAt(i10);
                if (charAt2 != 'x' && charAt2 != 'X') {
                    if (!PhoneNumberUtil.M0(candidate.substring(i4)).equals(number.getExtension())) {
                        return false;
                    }
                } else if (util.s0(number, candidate.substring(i10)) != PhoneNumberUtil.MatchType.NSN_MATCH) {
                    return false;
                } else {
                    i4 = i10;
                }
            }
            i4++;
        }
        return true;
    }

    private j f(CharSequence candidate, int offset) {
        for (Pattern pattern : f71050p) {
            Matcher matcher = pattern.matcher(candidate);
            boolean z9 = true;
            while (matcher.find() && this.f71056e > 0) {
                if (z9) {
                    j p9 = p(q(PhoneNumberUtil.R, candidate.subSequence(0, matcher.start())), offset);
                    if (p9 != null) {
                        return p9;
                    }
                    this.f71056e--;
                    z9 = false;
                }
                j p10 = p(q(PhoneNumberUtil.R, matcher.group(1)), matcher.start(1) + offset);
                if (p10 != null) {
                    return p10;
                }
                this.f71056e--;
            }
        }
        return null;
    }

    private j g(CharSequence candidate, int offset) {
        if (f71046l.matcher(candidate).find()) {
            return null;
        }
        if (f71047m.matcher(candidate).find()) {
            if (f71048n.matcher(this.f71053b.toString().substring(candidate.length() + offset)).lookingAt()) {
                return null;
            }
        }
        j p9 = p(candidate, offset);
        return p9 != null ? p9 : f(candidate, offset);
    }

    private j h(int index) {
        Matcher matcher = f71044j.matcher(this.f71053b);
        while (this.f71056e > 0 && matcher.find(index)) {
            int start = matcher.start();
            CharSequence q9 = q(PhoneNumberUtil.P, this.f71053b.subSequence(start, matcher.end()));
            j g4 = g(q9, start);
            if (g4 != null) {
                return g4;
            }
            index = start + q9.length();
            this.f71056e--;
        }
        return null;
    }

    private static String[] i(PhoneNumberUtil util, Phonenumber.PhoneNumber number) {
        String q9 = util.q(number, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
        int indexOf = q9.indexOf(59);
        if (indexOf < 0) {
            indexOf = q9.length();
        }
        return q9.substring(q9.indexOf(45) + 1, indexOf).split("-");
    }

    private static String[] j(PhoneNumberUtil util, Phonenumber.PhoneNumber number, Phonemetadata.NumberFormat formattingPattern) {
        return util.y(util.T(number), formattingPattern, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
    }

    private static boolean k(char character) {
        return character == '%' || Character.getType(character) == 26;
    }

    static boolean l(char letter) {
        if (Character.isLetter(letter) || Character.getType(letter) == 6) {
            Character.UnicodeBlock of = Character.UnicodeBlock.of(letter);
            return of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m(Phonenumber.PhoneNumber number, PhoneNumberUtil util) {
        Phonemetadata.PhoneMetadata Q;
        if (number.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY && (Q = util.Q(util.Y(number.getCountryCode()))) != null) {
            Phonemetadata.NumberFormat d4 = util.d(Q.numberFormats(), util.T(number));
            if (d4 == null || d4.getNationalPrefixFormattingRule().length() <= 0 || d4.getNationalPrefixOptionalWhenFormatting() || PhoneNumberUtil.D(d4.getNationalPrefixFormattingRule())) {
                return true;
            }
            return util.I0(new StringBuilder(PhoneNumberUtil.M0(number.getRawInput())), Q, null);
        }
        return true;
    }

    private static String n(int lower, int upper) {
        if (lower >= 0 && upper > 0 && upper >= lower) {
            return "{" + lower + "," + upper + com.alipay.sdk.util.i.f6967d;
        }
        throw new IllegalArgumentException();
    }

    private j p(CharSequence candidate, int offset) {
        try {
            if (f71049o.matcher(candidate).matches() && !f71045k.matcher(candidate).find()) {
                if (this.f71055d.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0) {
                    if (offset > 0 && !f71051q.matcher(candidate).lookingAt()) {
                        char charAt = this.f71053b.charAt(offset - 1);
                        if (k(charAt) || l(charAt)) {
                            return null;
                        }
                    }
                    int length = candidate.length() + offset;
                    if (length < this.f71053b.length()) {
                        char charAt2 = this.f71053b.charAt(length);
                        if (k(charAt2) || l(charAt2)) {
                            return null;
                        }
                    }
                }
                Phonenumber.PhoneNumber Q0 = this.f71052a.Q0(candidate, this.f71054c);
                if (this.f71055d.a(Q0, candidate, this.f71052a, this)) {
                    Q0.clearCountryCodeSource();
                    Q0.clearRawInput();
                    Q0.clearPreferredDomesticCarrierCode();
                    return new j(offset, candidate.toString(), Q0);
                }
            }
        } catch (NumberParseException unused) {
        }
        return null;
    }

    private static CharSequence q(Pattern pattern, CharSequence candidate) {
        Matcher matcher = pattern.matcher(candidate);
        return matcher.find() ? candidate.subSequence(0, matcher.start()) : candidate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, a checker) {
        StringBuilder L0 = PhoneNumberUtil.L0(candidate, true);
        if (checker.a(util, number, L0, i(util, number))) {
            return true;
        }
        Phonemetadata.PhoneMetadata c10 = util.S().c(number.getCountryCode());
        String T = util.T(number);
        if (c10 != null) {
            for (Phonemetadata.NumberFormat numberFormat : c10.numberFormats()) {
                if (numberFormat.leadingDigitsPatternSize() <= 0 || this.f71060i.b(numberFormat.getLeadingDigitsPattern(0)).matcher(T).lookingAt()) {
                    if (checker.a(util, number, L0, j(util, number, numberFormat))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f71057f == b.NOT_READY) {
            j h4 = h(this.f71059h);
            this.f71058g = h4;
            if (h4 == null) {
                this.f71057f = b.DONE;
            } else {
                this.f71059h = h4.a();
                this.f71057f = b.READY;
            }
        }
        return this.f71057f == b.READY;
    }

    @Override // java.util.Iterator
    /* renamed from: o */
    public j next() {
        if (hasNext()) {
            j jVar = this.f71058g;
            this.f71058g = null;
            this.f71057f = b.NOT_READY;
            return jVar;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
