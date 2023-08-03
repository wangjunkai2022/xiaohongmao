package io.michaelrocks.libphonenumber.android;

import android.content.Context;
import io.michaelrocks.libphonenumber.android.NumberParseException;
import io.michaelrocks.libphonenumber.android.Phonemetadata;
import io.michaelrocks.libphonenumber.android.Phonenumber;
import io.michaelrocks.libphonenumber.android.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* loaded from: classes3.dex */
public class PhoneNumberUtil {
    private static final Map<Character, Character> A;
    private static final Map<Character, Character> B;
    private static final Map<Character, Character> C;
    private static final Map<Character, Character> D;
    private static final Pattern E;
    static final String F = "-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～";
    private static final String G = "\\p{Nd}";
    private static final String H;
    static final String I = "+＋";
    static final Pattern J;
    private static final Pattern K;
    private static final Pattern L;
    private static final String M = "[+＋\\p{Nd}]";
    private static final Pattern N;
    private static final String O = "[\\\\/] *x";
    static final Pattern P;
    private static final String Q = "[[\\P{N}&&\\P{L}]&&[^#]]+$";
    static final Pattern R;
    private static final Pattern S;
    private static final String T;
    private static final String U = " ext. ";
    private static final String V = "(\\p{Nd}{1,7})";
    private static final String W;
    static final String X;
    private static final Pattern Y;
    private static final Pattern Z;

    /* renamed from: a0  reason: collision with root package name */
    static final Pattern f70861a0;

    /* renamed from: b0  reason: collision with root package name */
    private static final Pattern f70862b0;

    /* renamed from: c0  reason: collision with root package name */
    private static final String f70863c0 = "$NP";

    /* renamed from: d0  reason: collision with root package name */
    private static final String f70864d0 = "$FG";

    /* renamed from: e0  reason: collision with root package name */
    private static final String f70865e0 = "$CC";

    /* renamed from: f0  reason: collision with root package name */
    private static final Pattern f70866f0;

    /* renamed from: g0  reason: collision with root package name */
    public static final String f70867g0 = "001";

    /* renamed from: i  reason: collision with root package name */
    private static final Logger f70868i = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: j  reason: collision with root package name */
    static final int f70869j = 66;

    /* renamed from: k  reason: collision with root package name */
    private static final int f70870k = 2;

    /* renamed from: l  reason: collision with root package name */
    static final int f70871l = 17;

    /* renamed from: m  reason: collision with root package name */
    static final int f70872m = 3;

    /* renamed from: n  reason: collision with root package name */
    private static final int f70873n = 250;

    /* renamed from: o  reason: collision with root package name */
    private static final String f70874o = "ZZ";

    /* renamed from: p  reason: collision with root package name */
    private static final int f70875p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final String f70876q = "3";

    /* renamed from: r  reason: collision with root package name */
    private static final Map<Integer, String> f70877r;

    /* renamed from: s  reason: collision with root package name */
    private static final Set<Integer> f70878s;

    /* renamed from: t  reason: collision with root package name */
    private static final Set<Integer> f70879t;

    /* renamed from: u  reason: collision with root package name */
    static final char f70880u = '+';

    /* renamed from: v  reason: collision with root package name */
    private static final char f70881v = '*';

    /* renamed from: w  reason: collision with root package name */
    private static final String f70882w = ";ext=";

    /* renamed from: x  reason: collision with root package name */
    private static final String f70883x = "tel:";

    /* renamed from: y  reason: collision with root package name */
    private static final String f70884y = ";phone-context=";

    /* renamed from: z  reason: collision with root package name */
    private static final String f70885z = ";isub=";

    /* renamed from: a  reason: collision with root package name */
    private final h f70886a;

    /* renamed from: b  reason: collision with root package name */
    private volatile ShortNumberInfo f70887b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Integer, List<String>> f70888c;

    /* renamed from: d  reason: collision with root package name */
    private final io.michaelrocks.libphonenumber.android.internal.a f70889d = io.michaelrocks.libphonenumber.android.internal.b.b();

    /* renamed from: e  reason: collision with root package name */
    private final Set<String> f70890e = new HashSet(35);

    /* renamed from: f  reason: collision with root package name */
    private final io.michaelrocks.libphonenumber.android.internal.c f70891f = new io.michaelrocks.libphonenumber.android.internal.c(100);

    /* renamed from: g  reason: collision with root package name */
    private final Set<String> f70892g = new HashSet(320);

    /* renamed from: h  reason: collision with root package name */
    private final Set<Integer> f70893h = new HashSet();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class Leniency {
        public static final Leniency EXACT_GROUPING;
        public static final Leniency POSSIBLE;
        public static final Leniency STRICT_GROUPING;
        public static final Leniency VALID;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ Leniency[] f70894a;

        /* loaded from: classes3.dex */
        enum a extends Leniency {
            a(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override // io.michaelrocks.libphonenumber.android.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, k matcher) {
                return util.v0(number);
            }
        }

        /* loaded from: classes3.dex */
        enum b extends Leniency {
            b(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override // io.michaelrocks.libphonenumber.android.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, k matcher) {
                if (util.A0(number) && k.e(number, candidate.toString(), util)) {
                    return k.m(number, util);
                }
                return false;
            }
        }

        /* loaded from: classes3.dex */
        enum c extends Leniency {

            /* loaded from: classes3.dex */
            class a implements k.a {
                a() {
                }

                @Override // io.michaelrocks.libphonenumber.android.k.a
                public boolean a(PhoneNumberUtil util, Phonenumber.PhoneNumber number, StringBuilder normalizedCandidate, String[] expectedNumberGroups) {
                    return k.b(util, number, normalizedCandidate, expectedNumberGroups);
                }
            }

            c(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override // io.michaelrocks.libphonenumber.android.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, k matcher) {
                String charSequence = candidate.toString();
                if (util.A0(number) && k.e(number, charSequence, util) && !k.d(number, charSequence) && k.m(number, util)) {
                    return matcher.c(number, candidate, util, new a());
                }
                return false;
            }
        }

        /* loaded from: classes3.dex */
        enum d extends Leniency {

            /* loaded from: classes3.dex */
            class a implements k.a {
                a() {
                }

                @Override // io.michaelrocks.libphonenumber.android.k.a
                public boolean a(PhoneNumberUtil util, Phonenumber.PhoneNumber number, StringBuilder normalizedCandidate, String[] expectedNumberGroups) {
                    return k.a(util, number, normalizedCandidate, expectedNumberGroups);
                }
            }

            d(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override // io.michaelrocks.libphonenumber.android.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, k matcher) {
                String charSequence = candidate.toString();
                if (util.A0(number) && k.e(number, charSequence, util) && !k.d(number, charSequence) && k.m(number, util)) {
                    return matcher.c(number, candidate, util, new a());
                }
                return false;
            }
        }

        static {
            a aVar = new a("POSSIBLE", 0);
            POSSIBLE = aVar;
            b bVar = new b("VALID", 1);
            VALID = bVar;
            c cVar = new c("STRICT_GROUPING", 2);
            STRICT_GROUPING = cVar;
            d dVar = new d("EXACT_GROUPING", 3);
            EXACT_GROUPING = dVar;
            f70894a = new Leniency[]{aVar, bVar, cVar, dVar};
        }

        private Leniency(String $enum$name, int $enum$ordinal) {
        }

        public static Leniency valueOf(String name) {
            return (Leniency) Enum.valueOf(Leniency.class, name);
        }

        public static Leniency[] values() {
            return (Leniency[]) f70894a.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean a(Phonenumber.PhoneNumber number, CharSequence candidate, PhoneNumberUtil util, k matcher);

        /* synthetic */ Leniency(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* loaded from: classes3.dex */
    public enum MatchType {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* loaded from: classes3.dex */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes3.dex */
    public enum PhoneNumberType {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* loaded from: classes3.dex */
    public enum ValidationResult {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Iterable<j> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f70901a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f70902b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Leniency f70903c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f70904d;

        a(final CharSequence val$maxTries, final String val$leniency, final Leniency val$defaultRegion, final long val$text) {
            this.f70901a = val$maxTries;
            this.f70902b = val$leniency;
            this.f70903c = val$defaultRegion;
            this.f70904d = val$text;
        }

        @Override // java.lang.Iterable
        public Iterator<j> iterator() {
            return new k(PhoneNumberUtil.this, this.f70901a, this.f70902b, this.f70903c, this.f70904d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f70906a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f70907b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f70908c;

        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            f70908c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70908c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70908c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f70908c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f70908c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f70908c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f70908c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f70908c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f70908c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f70908c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f70908c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f70907b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f70907b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f70907b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f70907b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
            f70906a = iArr3;
            try {
                iArr3[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f70906a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f70906a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f70906a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(54, g5.h.f67844h);
        f70877r = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f70878s = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f70879t = Collections.unmodifiableSet(hashSet2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put('0', '0');
        hashMap2.put('1', '1');
        hashMap2.put('2', '2');
        hashMap2.put('3', '3');
        hashMap2.put('4', '4');
        hashMap2.put('5', '5');
        hashMap2.put('6', '6');
        hashMap2.put('7', '7');
        hashMap2.put('8', '8');
        hashMap2.put('9', '9');
        HashMap hashMap3 = new HashMap(40);
        hashMap3.put('A', '2');
        hashMap3.put('B', '2');
        hashMap3.put('C', '2');
        hashMap3.put('D', '3');
        hashMap3.put('E', '3');
        hashMap3.put('F', '3');
        hashMap3.put('G', '4');
        hashMap3.put('H', '4');
        hashMap3.put('I', '4');
        hashMap3.put('J', '5');
        hashMap3.put('K', '5');
        hashMap3.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_LT), '5');
        hashMap3.put('M', '6');
        hashMap3.put('N', '6');
        hashMap3.put('O', '6');
        hashMap3.put('P', '7');
        hashMap3.put('Q', '7');
        hashMap3.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_REGULAR), '7');
        hashMap3.put('S', '7');
        hashMap3.put('T', '8');
        hashMap3.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_UT), '8');
        hashMap3.put('V', '8');
        hashMap3.put('W', '9');
        hashMap3.put('X', '9');
        hashMap3.put('Y', '9');
        hashMap3.put(Character.valueOf(Matrix.MATRIX_TYPE_ZERO), '9');
        Map<Character, Character> unmodifiableMap = Collections.unmodifiableMap(hashMap3);
        B = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        C = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        Character valueOf = Character.valueOf(f70880u);
        hashMap5.put(valueOf, valueOf);
        Character valueOf2 = Character.valueOf(f70881v);
        hashMap5.put(valueOf2, valueOf2);
        hashMap5.put('#', '#');
        A = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : unmodifiableMap.keySet()) {
            char charValue = ch.charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put(Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d), Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 65293, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 8208, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 8209, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 8210, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put(Character.valueOf(Typography.ndash), Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put(Character.valueOf(Typography.mdash), Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 8213, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put((char) 8722, Character.valueOf(shaded.org.apache.commons.codec.language.l.f93713d));
        hashMap6.put(Character.valueOf(com.fasterxml.jackson.core.e.f13819f), Character.valueOf(com.fasterxml.jackson.core.e.f13819f));
        hashMap6.put((char) 65295, Character.valueOf(com.fasterxml.jackson.core.e.f13819f));
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        D = Collections.unmodifiableMap(hashMap6);
        E = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = B;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        H = sb2;
        J = Pattern.compile("[+＋]+");
        K = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        L = Pattern.compile("(\\p{Nd})");
        N = Pattern.compile(M);
        P = Pattern.compile(O);
        R = Pattern.compile(Q);
        S = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + G + "]*";
        T = str;
        String g4 = g(",;xｘ#＃~～");
        W = g4;
        X = g("xｘ#＃~～");
        Y = Pattern.compile("(?:" + g4 + ")$", 66);
        Z = Pattern.compile(str + "(?:" + g4 + ")?", 66);
        f70861a0 = Pattern.compile("(\\D+)");
        f70862b0 = Pattern.compile("(\\$\\d)");
        f70866f0 = Pattern.compile("\\(?\\$1\\)?");
    }

    PhoneNumberUtil(h metadataSource, Map<Integer, List<String>> countryCallingCodeToRegionCodeMap) {
        this.f70886a = metadataSource;
        this.f70888c = countryCallingCodeToRegionCodeMap;
        for (Map.Entry<Integer, List<String>> entry : countryCallingCodeToRegionCodeMap.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() == 1 && "001".equals(value.get(0))) {
                this.f70893h.add(entry.getKey());
            } else {
                this.f70892g.addAll(value);
            }
        }
        if (this.f70892g.remove("001")) {
            f70868i.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f70890e.addAll(countryCallingCodeToRegionCodeMap.get(1));
    }

    private boolean C0(String regionCode) {
        return regionCode != null && this.f70892g.contains(regionCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean D(String nationalPrefixFormattingRule) {
        return nationalPrefixFormattingRule.length() == 0 || f70866f0.matcher(nationalPrefixFormattingRule).matches();
    }

    static boolean D0(CharSequence number) {
        if (number.length() < 2) {
            return false;
        }
        return Z.matcher(number).matches();
    }

    private void E0(Phonenumber.PhoneNumber number, Phonemetadata.PhoneMetadata metadata, PhoneNumberFormat numberFormat, StringBuilder formattedNumber) {
        if (!number.hasExtension() || number.getExtension().length() <= 0) {
            return;
        }
        if (numberFormat == PhoneNumberFormat.RFC3966) {
            formattedNumber.append(f70882w);
            formattedNumber.append(number.getExtension());
        } else if (metadata.hasPreferredExtnPrefix()) {
            formattedNumber.append(metadata.getPreferredExtnPrefix());
            formattedNumber.append(number.getExtension());
        } else {
            formattedNumber.append(U);
            formattedNumber.append(number.getExtension());
        }
    }

    private int G(String regionCode) {
        Phonemetadata.PhoneMetadata Q2 = Q(regionCode);
        if (Q2 != null) {
            return Q2.getCountryCode();
        }
        throw new IllegalArgumentException("Invalid region code: " + regionCode);
    }

    public static String H(int countryCallingCode) {
        Map<Integer, String> map = f70877r;
        return map.containsKey(Integer.valueOf(countryCallingCode)) ? map.get(Integer.valueOf(countryCallingCode)) : "";
    }

    static StringBuilder J0(StringBuilder number) {
        if (S.matcher(number).matches()) {
            number.replace(0, number.length(), N0(number, C, true));
        } else {
            number.replace(0, number.length(), M0(number));
        }
        return number;
    }

    public static String K0(CharSequence number) {
        return N0(number, A, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder L0(CharSequence number, boolean keepNonDigits) {
        StringBuilder sb = new StringBuilder(number.length());
        for (int i4 = 0; i4 < number.length(); i4++) {
            char charAt = number.charAt(i4);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (keepNonDigits) {
                sb.append(charAt);
            }
        }
        return sb;
    }

    public static String M0(CharSequence number) {
        return L0(number, false).toString();
    }

    private static String N0(CharSequence number, Map<Character, Character> normalizationReplacements, boolean removeNonMatches) {
        StringBuilder sb = new StringBuilder(number.length());
        for (int i4 = 0; i4 < number.length(); i4++) {
            char charAt = number.charAt(i4);
            Character ch = normalizationReplacements.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!removeNonMatches) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    private Phonemetadata.PhoneMetadata R(int countryCallingCode, String regionCode) {
        if ("001".equals(regionCode)) {
            return P(countryCallingCode);
        }
        return Q(regionCode);
    }

    private void S0(CharSequence numberToParse, String defaultRegion, boolean keepRawInput, boolean checkRegion, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        int F0;
        if (numberToParse != null) {
            if (numberToParse.length() <= 250) {
                StringBuilder sb = new StringBuilder();
                String charSequence = numberToParse.toString();
                a(charSequence, sb);
                if (D0(sb)) {
                    if (checkRegion && !c(sb, defaultRegion)) {
                        throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
                    }
                    if (keepRawInput) {
                        phoneNumber.setRawInput(charSequence);
                    }
                    String G0 = G0(sb);
                    if (G0.length() > 0) {
                        phoneNumber.setExtension(G0);
                    }
                    Phonemetadata.PhoneMetadata Q2 = Q(defaultRegion);
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        F0 = F0(sb, Q2, sb2, keepRawInput, phoneNumber);
                    } catch (NumberParseException e4) {
                        Matcher matcher = J.matcher(sb);
                        if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE && matcher.lookingAt()) {
                            F0 = F0(sb.substring(matcher.end()), Q2, sb2, keepRawInput, phoneNumber);
                            if (F0 == 0) {
                                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                            }
                        } else {
                            throw new NumberParseException(e4.getErrorType(), e4.getMessage());
                        }
                    }
                    if (F0 != 0) {
                        String Y2 = Y(F0);
                        if (!Y2.equals(defaultRegion)) {
                            Q2 = R(F0, Y2);
                        }
                    } else {
                        sb2.append(J0(sb));
                        if (defaultRegion != null) {
                            phoneNumber.setCountryCode(Q2.getCountryCode());
                        } else if (keepRawInput) {
                            phoneNumber.clearCountryCodeSource();
                        }
                    }
                    if (sb2.length() >= 2) {
                        if (Q2 != null) {
                            StringBuilder sb3 = new StringBuilder();
                            StringBuilder sb4 = new StringBuilder(sb2);
                            I0(sb4, Q2, sb3);
                            ValidationResult X0 = X0(sb4, Q2);
                            if (X0 != ValidationResult.TOO_SHORT && X0 != ValidationResult.IS_POSSIBLE_LOCAL_ONLY && X0 != ValidationResult.INVALID_LENGTH) {
                                if (keepRawInput && sb3.length() > 0) {
                                    phoneNumber.setPreferredDomesticCarrierCode(sb3.toString());
                                }
                                sb2 = sb4;
                            }
                        }
                        int length = sb2.length();
                        if (length < 2) {
                            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                        }
                        if (length <= 17) {
                            W0(sb2, phoneNumber);
                            phoneNumber.setNationalNumber(Long.parseLong(sb2.toString()));
                            return;
                        }
                        throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
                    }
                    throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                }
                throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            }
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        }
        throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
    }

    private boolean T0(Pattern iddPattern, StringBuilder number) {
        Matcher matcher = iddPattern.matcher(number);
        if (matcher.lookingAt()) {
            int end = matcher.end();
            Matcher matcher2 = L.matcher(number.substring(end));
            if (matcher2.find() && M0(matcher2.group(1)).equals("0")) {
                return false;
            }
            number.delete(0, end);
            return true;
        }
        return false;
    }

    private void U0(int countryCallingCode, PhoneNumberFormat numberFormat, StringBuilder formattedNumber) {
        int i4 = b.f70907b[numberFormat.ordinal()];
        if (i4 == 1) {
            formattedNumber.insert(0, countryCallingCode).insert(0, f70880u);
        } else if (i4 == 2) {
            formattedNumber.insert(0, " ").insert(0, countryCallingCode).insert(0, f70880u);
        } else if (i4 != 3) {
        } else {
            formattedNumber.insert(0, "-").insert(0, countryCallingCode).insert(0, f70880u).insert(0, f70883x);
        }
    }

    private boolean V0(String rawInput, String nationalPrefix, String regionCode) {
        String M0 = M0(rawInput);
        if (M0.startsWith(nationalPrefix)) {
            try {
                return A0(O0(M0.substring(nationalPrefix.length()), regionCode));
            } catch (NumberParseException unused) {
            }
        }
        return false;
    }

    static void W0(CharSequence nationalNumber, Phonenumber.PhoneNumber phoneNumber) {
        if (nationalNumber.length() <= 1 || nationalNumber.charAt(0) != '0') {
            return;
        }
        phoneNumber.setItalianLeadingZero(true);
        int i4 = 1;
        while (i4 < nationalNumber.length() - 1 && nationalNumber.charAt(i4) == '0') {
            i4++;
        }
        if (i4 != 1) {
            phoneNumber.setNumberOfLeadingZeros(i4);
        }
    }

    private PhoneNumberType X(String nationalNumber, Phonemetadata.PhoneMetadata metadata) {
        if (!u0(nationalNumber, metadata.getGeneralDesc())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (u0(nationalNumber, metadata.getPremiumRate())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (u0(nationalNumber, metadata.getTollFree())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (u0(nationalNumber, metadata.getSharedCost())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (u0(nationalNumber, metadata.getVoip())) {
            return PhoneNumberType.VOIP;
        }
        if (u0(nationalNumber, metadata.getPersonalNumber())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (u0(nationalNumber, metadata.getPager())) {
            return PhoneNumberType.PAGER;
        }
        if (u0(nationalNumber, metadata.getUan())) {
            return PhoneNumberType.UAN;
        }
        if (u0(nationalNumber, metadata.getVoicemail())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (u0(nationalNumber, metadata.getFixedLine())) {
            if (metadata.getSameMobileAndFixedLinePattern()) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            if (u0(nationalNumber, metadata.getMobile())) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            return PhoneNumberType.FIXED_LINE;
        } else if (!metadata.getSameMobileAndFixedLinePattern() && u0(nationalNumber, metadata.getMobile())) {
            return PhoneNumberType.MOBILE;
        } else {
            return PhoneNumberType.UNKNOWN;
        }
    }

    private ValidationResult X0(CharSequence number, Phonemetadata.PhoneMetadata metadata) {
        return Y0(number, metadata, PhoneNumberType.UNKNOWN);
    }

    private ValidationResult Y0(CharSequence number, Phonemetadata.PhoneMetadata metadata, PhoneNumberType type) {
        List<Integer> possibleLengthList;
        Phonemetadata.PhoneNumberDesc V2 = V(metadata, type);
        ArrayList possibleLengthList2 = V2.getPossibleLengthList().isEmpty() ? metadata.getGeneralDesc().getPossibleLengthList() : V2.getPossibleLengthList();
        List<Integer> possibleLengthLocalOnlyList = V2.getPossibleLengthLocalOnlyList();
        if (type == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!l(V(metadata, PhoneNumberType.FIXED_LINE))) {
                return Y0(number, metadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata.PhoneNumberDesc V3 = V(metadata, PhoneNumberType.MOBILE);
            if (l(V3)) {
                ArrayList arrayList = new ArrayList(possibleLengthList2);
                if (V3.getPossibleLengthList().size() == 0) {
                    possibleLengthList = metadata.getGeneralDesc().getPossibleLengthList();
                } else {
                    possibleLengthList = V3.getPossibleLengthList();
                }
                arrayList.addAll(possibleLengthList);
                Collections.sort(arrayList);
                if (possibleLengthLocalOnlyList.isEmpty()) {
                    possibleLengthLocalOnlyList = V3.getPossibleLengthLocalOnlyList();
                } else {
                    ArrayList arrayList2 = new ArrayList(possibleLengthLocalOnlyList);
                    arrayList2.addAll(V3.getPossibleLengthLocalOnlyList());
                    Collections.sort(arrayList2);
                    possibleLengthLocalOnlyList = arrayList2;
                }
                possibleLengthList2 = arrayList;
            }
        }
        if (possibleLengthList2.get(0).intValue() == -1) {
            return ValidationResult.INVALID_LENGTH;
        }
        int length = number.length();
        if (possibleLengthLocalOnlyList.contains(Integer.valueOf(length))) {
            return ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = possibleLengthList2.get(0).intValue();
        if (intValue == length) {
            return ValidationResult.IS_POSSIBLE;
        }
        if (intValue > length) {
            return ValidationResult.TOO_SHORT;
        }
        if (possibleLengthList2.get(possibleLengthList2.size() - 1).intValue() < length) {
            return ValidationResult.TOO_LONG;
        }
        return possibleLengthList2.subList(1, possibleLengthList2.size()).contains(Integer.valueOf(length)) ? ValidationResult.IS_POSSIBLE : ValidationResult.INVALID_LENGTH;
    }

    private void a(String numberToParse, StringBuilder nationalNumber) {
        int indexOf = numberToParse.indexOf(f70884y);
        if (indexOf >= 0) {
            int i4 = indexOf + 15;
            if (i4 < numberToParse.length() - 1 && numberToParse.charAt(i4) == '+') {
                int indexOf2 = numberToParse.indexOf(59, i4);
                if (indexOf2 > 0) {
                    nationalNumber.append(numberToParse.substring(i4, indexOf2));
                } else {
                    nationalNumber.append(numberToParse.substring(i4));
                }
            }
            int indexOf3 = numberToParse.indexOf(f70883x);
            nationalNumber.append(numberToParse.substring(indexOf3 >= 0 ? indexOf3 + 4 : 0, indexOf));
        } else {
            nationalNumber.append(n(numberToParse));
        }
        int indexOf4 = nationalNumber.indexOf(f70885z);
        if (indexOf4 > 0) {
            nationalNumber.delete(indexOf4, nationalNumber.length());
        }
    }

    private String a0(Phonenumber.PhoneNumber number, List<String> regionCodes) {
        String T2 = T(number);
        for (String str : regionCodes) {
            Phonemetadata.PhoneMetadata Q2 = Q(str);
            if (Q2.hasLeadingDigits()) {
                if (this.f70891f.b(Q2.getLeadingDigits()).matcher(T2).lookingAt()) {
                    return str;
                }
            } else if (X(T2, Q2) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    private boolean c(CharSequence numberToParse, String defaultRegion) {
        if (C0(defaultRegion)) {
            return true;
        }
        return (numberToParse == null || numberToParse.length() == 0 || !J.matcher(numberToParse).lookingAt()) ? false : true;
    }

    public static String e(CharSequence number) {
        return N0(number, C, false);
    }

    private static Phonenumber.PhoneNumber f(Phonenumber.PhoneNumber phoneNumberIn) {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        phoneNumber.setCountryCode(phoneNumberIn.getCountryCode());
        phoneNumber.setNationalNumber(phoneNumberIn.getNationalNumber());
        if (phoneNumberIn.getExtension().length() > 0) {
            phoneNumber.setExtension(phoneNumberIn.getExtension());
        }
        if (phoneNumberIn.isItalianLeadingZero()) {
            phoneNumber.setItalianLeadingZero(true);
            phoneNumber.setNumberOfLeadingZeros(phoneNumberIn.getNumberOfLeadingZeros());
        }
        return phoneNumber;
    }

    private static String g(String singleExtnSymbols) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|[" + singleExtnSymbols + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*" + V + "#?|[- ]+(" + G + "{1,5})#";
    }

    private Set<PhoneNumberType> g0(Phonemetadata.PhoneMetadata metadata) {
        PhoneNumberType[] values;
        TreeSet treeSet = new TreeSet();
        for (PhoneNumberType phoneNumberType : PhoneNumberType.values()) {
            if (phoneNumberType != PhoneNumberType.FIXED_LINE_OR_MOBILE && phoneNumberType != PhoneNumberType.UNKNOWN && k(V(metadata, phoneNumberType))) {
                treeSet.add(phoneNumberType);
            }
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public static PhoneNumberUtil h(Context context) {
        if (context != null) {
            return i(new c(context.getAssets()));
        }
        throw new IllegalArgumentException("context could not be null.");
    }

    public static PhoneNumberUtil i(f metadataLoader) {
        if (metadataLoader != null) {
            return j(new i(metadataLoader));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    public static PhoneNumberUtil j(h metadataSource) {
        if (metadataSource != null) {
            return new PhoneNumberUtil(metadataSource, e.a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    private boolean j0(Phonenumber.PhoneNumber number) {
        int countryCode = number.getCountryCode();
        Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
        if (R2 == null) {
            return false;
        }
        return d(R2.numberFormats(), T(number)) != null;
    }

    private static boolean k(Phonemetadata.PhoneNumberDesc desc) {
        return desc.hasExampleNumber() || l(desc) || desc.hasNationalNumberPattern();
    }

    private boolean k0(int countryCallingCode) {
        return this.f70888c.containsKey(Integer.valueOf(countryCallingCode));
    }

    private static boolean l(Phonemetadata.PhoneNumberDesc desc) {
        return (desc.getPossibleLengthCount() == 1 && desc.getPossibleLength(0) == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence n(CharSequence number) {
        Matcher matcher = N.matcher(number);
        if (matcher.find()) {
            CharSequence subSequence = number.subSequence(matcher.start(), number.length());
            Matcher matcher2 = R.matcher(subSequence);
            if (matcher2.find()) {
                subSequence = subSequence.subSequence(0, matcher2.start());
            }
            Matcher matcher3 = P.matcher(subSequence);
            return matcher3.find() ? subSequence.subSequence(0, matcher3.start()) : subSequence;
        }
        return "";
    }

    private boolean o0(Phonenumber.PhoneNumber firstNumber, Phonenumber.PhoneNumber secondNumber) {
        String valueOf = String.valueOf(firstNumber.getNationalNumber());
        String valueOf2 = String.valueOf(secondNumber.getNationalNumber());
        return valueOf.endsWith(valueOf2) || valueOf2.endsWith(valueOf);
    }

    private String w(String number, Phonemetadata.PhoneMetadata metadata, PhoneNumberFormat numberFormat) {
        return x(number, metadata, numberFormat, null);
    }

    private String x(String number, Phonemetadata.PhoneMetadata metadata, PhoneNumberFormat numberFormat, CharSequence carrierCode) {
        List<Phonemetadata.NumberFormat> numberFormats;
        if (metadata.intlNumberFormats().size() != 0 && numberFormat != PhoneNumberFormat.NATIONAL) {
            numberFormats = metadata.intlNumberFormats();
        } else {
            numberFormats = metadata.numberFormats();
        }
        Phonemetadata.NumberFormat d4 = d(numberFormats, number);
        return d4 == null ? number : z(number, d4, numberFormat, carrierCode);
    }

    private String z(String nationalNumber, Phonemetadata.NumberFormat formattingPattern, PhoneNumberFormat numberFormat, CharSequence carrierCode) {
        String replaceAll;
        String format = formattingPattern.getFormat();
        Matcher matcher = this.f70891f.b(formattingPattern.getPattern()).matcher(nationalNumber);
        PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
        if (numberFormat == phoneNumberFormat && carrierCode != null && carrierCode.length() > 0 && formattingPattern.getDomesticCarrierCodeFormattingRule().length() > 0) {
            replaceAll = matcher.replaceAll(f70862b0.matcher(format).replaceFirst(formattingPattern.getDomesticCarrierCodeFormattingRule().replace(f70865e0, carrierCode)));
        } else {
            String nationalPrefixFormattingRule = formattingPattern.getNationalPrefixFormattingRule();
            if (numberFormat == phoneNumberFormat && nationalPrefixFormattingRule != null && nationalPrefixFormattingRule.length() > 0) {
                replaceAll = matcher.replaceAll(f70862b0.matcher(format).replaceFirst(nationalPrefixFormattingRule));
            } else {
                replaceAll = matcher.replaceAll(format);
            }
        }
        if (numberFormat == PhoneNumberFormat.RFC3966) {
            Matcher matcher2 = K.matcher(replaceAll);
            if (matcher2.lookingAt()) {
                replaceAll = matcher2.replaceFirst("");
            }
            return matcher2.reset(replaceAll).replaceAll("-");
        }
        return replaceAll;
    }

    public String A(Phonenumber.PhoneNumber number, String regionCallingFrom, boolean withFormatting) {
        String q9;
        int countryCode = number.getCountryCode();
        String str = "";
        if (!k0(countryCode)) {
            return number.hasRawInput() ? number.getRawInput() : "";
        }
        Phonenumber.PhoneNumber clearExtension = new Phonenumber.PhoneNumber().mergeFrom(number).clearExtension();
        String Y2 = Y(countryCode);
        PhoneNumberType W2 = W(clearExtension);
        boolean z9 = false;
        boolean z10 = W2 != PhoneNumberType.UNKNOWN;
        if (regionCallingFrom.equals(Y2)) {
            PhoneNumberType phoneNumberType = PhoneNumberType.FIXED_LINE;
            z9 = (W2 == phoneNumberType || W2 == PhoneNumberType.MOBILE || W2 == PhoneNumberType.FIXED_LINE_OR_MOBILE) ? true : true;
            if (Y2.equals("CO") && W2 == phoneNumberType) {
                q9 = u(clearExtension, "3");
            } else if (Y2.equals("BR") && z9) {
                if (clearExtension.getPreferredDomesticCarrierCode().length() > 0) {
                    str = v(clearExtension, "");
                }
            } else if (countryCode == 1) {
                Phonemetadata.PhoneMetadata Q2 = Q(regionCallingFrom);
                if (b(clearExtension) && X0(T(clearExtension), Q2) != ValidationResult.TOO_SHORT) {
                    q9 = q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
                } else {
                    q9 = q(clearExtension, PhoneNumberFormat.NATIONAL);
                }
            } else if ((Y2.equals("001") || ((Y2.equals("MX") || Y2.equals("CL") || Y2.equals("UZ")) && z9)) && b(clearExtension)) {
                q9 = q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
            } else {
                q9 = q(clearExtension, PhoneNumberFormat.NATIONAL);
            }
            str = q9;
        } else if (z10 && b(clearExtension)) {
            if (withFormatting) {
                return q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
            }
            return q(clearExtension, PhoneNumberFormat.E164);
        }
        return withFormatting ? str : K0(str);
    }

    public boolean A0(Phonenumber.PhoneNumber number) {
        return B0(number, Z(number));
    }

    public String B(Phonenumber.PhoneNumber number, String regionCallingFrom) {
        if (!C0(regionCallingFrom)) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            logger.log(level, "Trying to format number from invalid region " + regionCallingFrom + ". International formatting applied.");
            return q(number, PhoneNumberFormat.INTERNATIONAL);
        }
        int countryCode = number.getCountryCode();
        String T2 = T(number);
        if (k0(countryCode)) {
            if (countryCode == 1) {
                if (n0(regionCallingFrom)) {
                    return countryCode + " " + q(number, PhoneNumberFormat.NATIONAL);
                }
            } else if (countryCode == G(regionCallingFrom)) {
                return q(number, PhoneNumberFormat.NATIONAL);
            }
            Phonemetadata.PhoneMetadata Q2 = Q(regionCallingFrom);
            String internationalPrefix = Q2.getInternationalPrefix();
            if (!E.matcher(internationalPrefix).matches()) {
                internationalPrefix = Q2.hasPreferredInternationalPrefix() ? Q2.getPreferredInternationalPrefix() : "";
            }
            Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
            StringBuilder sb = new StringBuilder(w(T2, R2, phoneNumberFormat));
            E0(number, R2, phoneNumberFormat, sb);
            if (internationalPrefix.length() > 0) {
                sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, internationalPrefix);
            } else {
                U0(countryCode, phoneNumberFormat, sb);
            }
            return sb.toString();
        }
        return T2;
    }

    public boolean B0(Phonenumber.PhoneNumber number, String regionCode) {
        int countryCode = number.getCountryCode();
        Phonemetadata.PhoneMetadata R2 = R(countryCode, regionCode);
        if (R2 != null) {
            return ("001".equals(regionCode) || countryCode == G(regionCode)) && X(T(number), R2) != PhoneNumberType.UNKNOWN;
        }
        return false;
    }

    public String C(Phonenumber.PhoneNumber number, String regionCallingFrom) {
        String str;
        int indexOf;
        String rawInput = number.getRawInput();
        if (rawInput.length() == 0) {
            return B(number, regionCallingFrom);
        }
        int countryCode = number.getCountryCode();
        if (k0(countryCode)) {
            String N0 = N0(rawInput, D, true);
            String T2 = T(number);
            if (T2.length() > 3 && (indexOf = N0.indexOf(T2.substring(0, 3))) != -1) {
                N0 = N0.substring(indexOf);
            }
            Phonemetadata.PhoneMetadata Q2 = Q(regionCallingFrom);
            if (countryCode == 1) {
                if (n0(regionCallingFrom)) {
                    return countryCode + " " + N0;
                }
            } else if (Q2 != null && countryCode == G(regionCallingFrom)) {
                Phonemetadata.NumberFormat d4 = d(Q2.numberFormats(), T2);
                if (d4 == null) {
                    return N0;
                }
                Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                newBuilder.mergeFrom(d4);
                newBuilder.setPattern("(\\d+)(.*)");
                newBuilder.setFormat("$1$2");
                return y(N0, newBuilder, PhoneNumberFormat.NATIONAL);
            }
            if (Q2 != null) {
                str = Q2.getInternationalPrefix();
                if (!E.matcher(str).matches()) {
                    str = Q2.getPreferredInternationalPrefix();
                }
            } else {
                str = "";
            }
            StringBuilder sb = new StringBuilder(N0);
            Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
            E0(number, R2, phoneNumberFormat, sb);
            if (str.length() > 0) {
                sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, str);
            } else {
                if (!C0(regionCallingFrom)) {
                    Logger logger = f70868i;
                    Level level = Level.WARNING;
                    logger.log(level, "Trying to format number from invalid region " + regionCallingFrom + ". International formatting applied.");
                }
                U0(countryCode, phoneNumberFormat, sb);
            }
            return sb.toString();
        }
        return rawInput;
    }

    public io.michaelrocks.libphonenumber.android.b E(String regionCode) {
        return new io.michaelrocks.libphonenumber.android.b(this, regionCode);
    }

    public int F(String regionCode) {
        if (!C0(regionCode)) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid or missing region code (");
            if (regionCode == null) {
                regionCode = "null";
            }
            sb.append(regionCode);
            sb.append(") provided.");
            logger.log(level, sb.toString());
            return 0;
        }
        return G(regionCode);
    }

    int F0(CharSequence number, Phonemetadata.PhoneMetadata defaultRegionMetadata, StringBuilder nationalNumber, boolean keepRawInput, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        if (number.length() == 0) {
            return 0;
        }
        StringBuilder sb = new StringBuilder(number);
        Phonenumber.PhoneNumber.CountryCodeSource H0 = H0(sb, defaultRegionMetadata != null ? defaultRegionMetadata.getInternationalPrefix() : "NonMatch");
        if (keepRawInput) {
            phoneNumber.setCountryCodeSource(H0);
        }
        if (H0 != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (sb.length() > 2) {
                int m9 = m(sb, nationalNumber);
                if (m9 != 0) {
                    phoneNumber.setCountryCode(m9);
                    return m9;
                }
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
        if (defaultRegionMetadata != null) {
            int countryCode = defaultRegionMetadata.getCountryCode();
            String valueOf = String.valueOf(countryCode);
            String sb2 = sb.toString();
            if (sb2.startsWith(valueOf)) {
                StringBuilder sb3 = new StringBuilder(sb2.substring(valueOf.length()));
                Phonemetadata.PhoneNumberDesc generalDesc = defaultRegionMetadata.getGeneralDesc();
                I0(sb3, defaultRegionMetadata, null);
                if ((!this.f70889d.a(sb, generalDesc, false) && this.f70889d.a(sb3, generalDesc, false)) || X0(sb, defaultRegionMetadata) == ValidationResult.TOO_LONG) {
                    nationalNumber.append((CharSequence) sb3);
                    if (keepRawInput) {
                        phoneNumber.setCountryCodeSource(Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    phoneNumber.setCountryCode(countryCode);
                    return countryCode;
                }
            }
        }
        phoneNumber.setCountryCode(0);
        return 0;
    }

    String G0(StringBuilder number) {
        Matcher matcher = Y.matcher(number);
        if (matcher.find() && D0(number.substring(0, matcher.start()))) {
            int groupCount = matcher.groupCount();
            for (int i4 = 1; i4 <= groupCount; i4++) {
                if (matcher.group(i4) != null) {
                    String group = matcher.group(i4);
                    number.delete(matcher.start(), number.length());
                    return group;
                }
            }
            return "";
        }
        return "";
    }

    Phonenumber.PhoneNumber.CountryCodeSource H0(StringBuilder number, String possibleIddPrefix) {
        if (number.length() == 0) {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = J.matcher(number);
        if (matcher.lookingAt()) {
            number.delete(0, matcher.end());
            J0(number);
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern b10 = this.f70891f.b(possibleIddPrefix);
        J0(number);
        return T0(b10, number) ? Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    public Phonenumber.PhoneNumber I(String regionCode) {
        return L(regionCode, PhoneNumberType.FIXED_LINE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean I0(StringBuilder number, Phonemetadata.PhoneMetadata metadata, StringBuilder carrierCode) {
        int length = number.length();
        String nationalPrefixForParsing = metadata.getNationalPrefixForParsing();
        if (length != 0 && nationalPrefixForParsing.length() != 0) {
            Matcher matcher = this.f70891f.b(nationalPrefixForParsing).matcher(number);
            if (matcher.lookingAt()) {
                Phonemetadata.PhoneNumberDesc generalDesc = metadata.getGeneralDesc();
                boolean a10 = this.f70889d.a(number, generalDesc, false);
                int groupCount = matcher.groupCount();
                String nationalPrefixTransformRule = metadata.getNationalPrefixTransformRule();
                if (nationalPrefixTransformRule != null && nationalPrefixTransformRule.length() != 0 && matcher.group(groupCount) != null) {
                    StringBuilder sb = new StringBuilder(number);
                    sb.replace(0, length, matcher.replaceFirst(nationalPrefixTransformRule));
                    if (!a10 || this.f70889d.a(sb.toString(), generalDesc, false)) {
                        if (carrierCode != null && groupCount > 1) {
                            carrierCode.append(matcher.group(1));
                        }
                        number.replace(0, number.length(), sb.toString());
                        return true;
                    }
                    return false;
                } else if (!a10 || this.f70889d.a(number.substring(matcher.end()), generalDesc, false)) {
                    if (carrierCode != null && groupCount > 0 && matcher.group(groupCount) != null) {
                        carrierCode.append(matcher.group(1));
                    }
                    number.delete(0, matcher.end());
                    return true;
                } else {
                    return false;
                }
            }
        }
        return false;
    }

    public Phonenumber.PhoneNumber J(int countryCallingCode) {
        Phonemetadata.PhoneMetadata P2 = P(countryCallingCode);
        if (P2 != null) {
            for (Phonemetadata.PhoneNumberDesc phoneNumberDesc : Arrays.asList(P2.getMobile(), P2.getTollFree(), P2.getSharedCost(), P2.getVoip(), P2.getVoicemail(), P2.getUan(), P2.getPremiumRate())) {
                if (phoneNumberDesc != null) {
                    try {
                        if (phoneNumberDesc.hasExampleNumber()) {
                            return O0("+" + countryCallingCode + phoneNumberDesc.getExampleNumber(), f70874o);
                        }
                        continue;
                    } catch (NumberParseException e4) {
                        f70868i.log(Level.SEVERE, e4.toString());
                    }
                }
            }
            return null;
        }
        Logger logger = f70868i;
        Level level = Level.WARNING;
        logger.log(level, "Invalid or unknown country calling code provided: " + countryCallingCode);
        return null;
    }

    public Phonenumber.PhoneNumber K(PhoneNumberType type) {
        for (String str : f0()) {
            Phonenumber.PhoneNumber L2 = L(str, type);
            if (L2 != null) {
                return L2;
            }
        }
        for (Integer num : e0()) {
            int intValue = num.intValue();
            Phonemetadata.PhoneNumberDesc V2 = V(P(intValue), type);
            try {
            } catch (NumberParseException e4) {
                f70868i.log(Level.SEVERE, e4.toString());
            }
            if (V2.hasExampleNumber()) {
                return O0("+" + intValue + V2.getExampleNumber(), f70874o);
            }
            continue;
        }
        return null;
    }

    public Phonenumber.PhoneNumber L(String regionCode, PhoneNumberType type) {
        if (!C0(regionCode)) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + regionCode);
            return null;
        }
        Phonemetadata.PhoneNumberDesc V2 = V(Q(regionCode), type);
        try {
            if (V2.hasExampleNumber()) {
                return O0(V2.getExampleNumber(), regionCode);
            }
        } catch (NumberParseException e4) {
            f70868i.log(Level.SEVERE, e4.toString());
        }
        return null;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:150)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:457)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:358)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:84)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:59)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:318)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public io.michaelrocks.libphonenumber.android.Phonenumber.PhoneNumber M(java.lang.String r6) {
        /*
            r5 = this;
            boolean r0 = r5.C0(r6)
            r1 = 0
            if (r0 != 0) goto L20
            java.util.logging.Logger r0 = io.michaelrocks.libphonenumber.android.PhoneNumberUtil.f70868i
            java.util.logging.Level r2 = java.util.logging.Level.WARNING
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Invalid or unknown region code provided: "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r6 = r3.toString()
            r0.log(r2, r6)
            return r1
        L20:
            io.michaelrocks.libphonenumber.android.Phonemetadata$PhoneMetadata r0 = r5.Q(r6)
            io.michaelrocks.libphonenumber.android.PhoneNumberUtil$PhoneNumberType r2 = io.michaelrocks.libphonenumber.android.PhoneNumberUtil.PhoneNumberType.FIXED_LINE
            io.michaelrocks.libphonenumber.android.Phonemetadata$PhoneNumberDesc r0 = r5.V(r0, r2)
            boolean r2 = r0.hasExampleNumber()
            if (r2 != 0) goto L31
            return r1
        L31:
            java.lang.String r0 = r0.getExampleNumber()
            int r2 = r0.length()
            int r2 = r2 + (-1)
        L3b:
            r3 = 2
            if (r2 < r3) goto L51
            r3 = 0
            java.lang.String r3 = r0.substring(r3, r2)
            io.michaelrocks.libphonenumber.android.Phonenumber$PhoneNumber r3 = r5.O0(r3, r6)     // Catch: io.michaelrocks.libphonenumber.android.NumberParseException -> L4e
            boolean r4 = r5.A0(r3)     // Catch: io.michaelrocks.libphonenumber.android.NumberParseException -> L4e
            if (r4 != 0) goto L4e
            return r3
        L4e:
            int r2 = r2 + (-1)
            goto L3b
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.michaelrocks.libphonenumber.android.PhoneNumberUtil.M(java.lang.String):io.michaelrocks.libphonenumber.android.Phonenumber$PhoneNumber");
    }

    public int N(Phonenumber.PhoneNumber number) {
        Phonemetadata.PhoneMetadata Q2 = Q(Z(number));
        if (Q2 == null) {
            return 0;
        }
        if (Q2.hasNationalPrefix() || number.isItalianLeadingZero()) {
            PhoneNumberType W2 = W(number);
            int countryCode = number.getCountryCode();
            if (!(W2 == PhoneNumberType.MOBILE && f70878s.contains(Integer.valueOf(countryCode))) && p0(W2, countryCode)) {
                return O(number);
            }
            return 0;
        }
        return 0;
    }

    public int O(Phonenumber.PhoneNumber number) {
        Phonenumber.PhoneNumber phoneNumber;
        if (number.hasExtension()) {
            phoneNumber = new Phonenumber.PhoneNumber();
            phoneNumber.mergeFrom(number);
            phoneNumber.clearExtension();
        } else {
            phoneNumber = number;
        }
        String[] split = f70861a0.split(q(phoneNumber, PhoneNumberFormat.INTERNATIONAL));
        if (split.length <= 3) {
            return 0;
        }
        if (W(number) == PhoneNumberType.MOBILE && !H(number.getCountryCode()).equals("")) {
            return split[2].length() + split[3].length();
        }
        return split[2].length();
    }

    public Phonenumber.PhoneNumber O0(CharSequence numberToParse, String defaultRegion) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        P0(numberToParse, defaultRegion, phoneNumber);
        return phoneNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata P(int countryCallingCode) {
        if (this.f70888c.containsKey(Integer.valueOf(countryCallingCode))) {
            return this.f70886a.b(countryCallingCode);
        }
        return null;
    }

    public void P0(CharSequence numberToParse, String defaultRegion, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        S0(numberToParse, defaultRegion, false, true, phoneNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata Q(String regionCode) {
        if (C0(regionCode)) {
            return this.f70886a.a(regionCode);
        }
        return null;
    }

    public Phonenumber.PhoneNumber Q0(CharSequence numberToParse, String defaultRegion) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        R0(numberToParse, defaultRegion, phoneNumber);
        return phoneNumber;
    }

    public void R0(CharSequence numberToParse, String defaultRegion, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        S0(numberToParse, defaultRegion, true, true, phoneNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h S() {
        return this.f70886a;
    }

    public String T(Phonenumber.PhoneNumber number) {
        StringBuilder sb = new StringBuilder();
        if (number.isItalianLeadingZero() && number.getNumberOfLeadingZeros() > 0) {
            char[] cArr = new char[number.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(number.getNationalNumber());
        return sb.toString();
    }

    public String U(String regionCode, boolean stripNonDigits) {
        Phonemetadata.PhoneMetadata Q2 = Q(regionCode);
        if (Q2 == null) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid or missing region code (");
            if (regionCode == null) {
                regionCode = "null";
            }
            sb.append(regionCode);
            sb.append(") provided.");
            logger.log(level, sb.toString());
            return null;
        }
        String nationalPrefix = Q2.getNationalPrefix();
        if (nationalPrefix.length() == 0) {
            return null;
        }
        return stripNonDigits ? nationalPrefix.replace("~", "") : nationalPrefix;
    }

    Phonemetadata.PhoneNumberDesc V(Phonemetadata.PhoneMetadata metadata, PhoneNumberType type) {
        switch (b.f70908c[type.ordinal()]) {
            case 1:
                return metadata.getPremiumRate();
            case 2:
                return metadata.getTollFree();
            case 3:
                return metadata.getMobile();
            case 4:
            case 5:
                return metadata.getFixedLine();
            case 6:
                return metadata.getSharedCost();
            case 7:
                return metadata.getVoip();
            case 8:
                return metadata.getPersonalNumber();
            case 9:
                return metadata.getPager();
            case 10:
                return metadata.getUan();
            case 11:
                return metadata.getVoicemail();
            default:
                return metadata.getGeneralDesc();
        }
    }

    public PhoneNumberType W(Phonenumber.PhoneNumber number) {
        Phonemetadata.PhoneMetadata R2 = R(number.getCountryCode(), Z(number));
        if (R2 == null) {
            return PhoneNumberType.UNKNOWN;
        }
        return X(T(number), R2);
    }

    public String Y(int countryCallingCode) {
        List<String> list = this.f70888c.get(Integer.valueOf(countryCallingCode));
        return list == null ? f70874o : list.get(0);
    }

    public String Z(Phonenumber.PhoneNumber number) {
        int countryCode = number.getCountryCode();
        List<String> list = this.f70888c.get(Integer.valueOf(countryCode));
        if (list == null) {
            Logger logger = f70868i;
            Level level = Level.INFO;
            logger.log(level, "Missing/invalid country_code (" + countryCode + ")");
            return null;
        } else if (list.size() == 1) {
            return list.get(0);
        } else {
            return a0(number, list);
        }
    }

    public boolean Z0(Phonenumber.PhoneNumber number) {
        if (A0(number)) {
            return true;
        }
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        phoneNumber.mergeFrom(number);
        long nationalNumber = number.getNationalNumber();
        do {
            nationalNumber /= 10;
            phoneNumber.setNationalNumber(nationalNumber);
            if (z0(phoneNumber) == ValidationResult.TOO_SHORT || nationalNumber == 0) {
                return false;
            }
        } while (!A0(phoneNumber));
        number.setNationalNumber(nationalNumber);
        return true;
    }

    public boolean b(Phonenumber.PhoneNumber number) {
        Phonemetadata.PhoneMetadata Q2 = Q(Z(number));
        if (Q2 == null) {
            return true;
        }
        return !u0(T(number), Q2.getNoInternationalDialling());
    }

    public List<String> b0(int countryCallingCode) {
        List<String> list = this.f70888c.get(Integer.valueOf(countryCallingCode));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    public ShortNumberInfo c0() {
        if (this.f70887b == null) {
            synchronized (this) {
                if (this.f70887b == null) {
                    this.f70887b = new ShortNumberInfo(this.f70886a, io.michaelrocks.libphonenumber.android.internal.b.b());
                }
            }
        }
        return this.f70887b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.NumberFormat d(List<Phonemetadata.NumberFormat> availableFormats, String nationalNumber) {
        for (Phonemetadata.NumberFormat numberFormat : availableFormats) {
            int leadingDigitsPatternSize = numberFormat.leadingDigitsPatternSize();
            if (leadingDigitsPatternSize == 0 || this.f70891f.b(numberFormat.getLeadingDigitsPattern(leadingDigitsPatternSize - 1)).matcher(nationalNumber).lookingAt()) {
                if (this.f70891f.b(numberFormat.getPattern()).matcher(nationalNumber).matches()) {
                    return numberFormat;
                }
            }
        }
        return null;
    }

    public Set<Integer> d0() {
        return Collections.unmodifiableSet(this.f70888c.keySet());
    }

    public Set<Integer> e0() {
        return Collections.unmodifiableSet(this.f70893h);
    }

    public Set<String> f0() {
        return Collections.unmodifiableSet(this.f70892g);
    }

    public Set<PhoneNumberType> h0(int countryCallingCode) {
        Phonemetadata.PhoneMetadata P2 = P(countryCallingCode);
        if (P2 == null) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            logger.log(level, "Unknown country calling code for a non-geographical entity provided: " + countryCallingCode);
            return Collections.unmodifiableSet(new TreeSet());
        }
        return g0(P2);
    }

    public Set<PhoneNumberType> i0(String regionCode) {
        if (!C0(regionCode)) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + regionCode);
            return Collections.unmodifiableSet(new TreeSet());
        }
        return g0(Q(regionCode));
    }

    public boolean l0(CharSequence number) {
        if (D0(number)) {
            StringBuilder sb = new StringBuilder(number);
            G0(sb);
            return S.matcher(sb).matches();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m(StringBuilder fullNumber, StringBuilder nationalNumber) {
        if (fullNumber.length() != 0 && fullNumber.charAt(0) != '0') {
            int length = fullNumber.length();
            for (int i4 = 1; i4 <= 3 && i4 <= length; i4++) {
                int parseInt = Integer.parseInt(fullNumber.substring(0, i4));
                if (this.f70888c.containsKey(Integer.valueOf(parseInt))) {
                    nationalNumber.append(fullNumber.substring(i4));
                    return parseInt;
                }
            }
        }
        return 0;
    }

    public boolean m0(String regionCode) {
        Phonemetadata.PhoneMetadata Q2 = Q(regionCode);
        if (Q2 == null) {
            Logger logger = f70868i;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + regionCode);
            return false;
        }
        return Q2.isMobileNumberPortableRegion();
    }

    public boolean n0(String regionCode) {
        return this.f70890e.contains(regionCode);
    }

    public Iterable<j> o(CharSequence text, String defaultRegion) {
        return p(text, defaultRegion, Leniency.VALID, Long.MAX_VALUE);
    }

    public Iterable<j> p(final CharSequence text, final String defaultRegion, final Leniency leniency, final long maxTries) {
        return new a(text, defaultRegion, leniency, maxTries);
    }

    public boolean p0(PhoneNumberType phoneNumberType, int countryCallingCode) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f70879t.contains(Integer.valueOf(countryCallingCode)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    public String q(Phonenumber.PhoneNumber number, PhoneNumberFormat numberFormat) {
        if (number.getNationalNumber() == 0 && number.hasRawInput()) {
            String rawInput = number.getRawInput();
            if (rawInput.length() > 0) {
                return rawInput;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        r(number, numberFormat, sb);
        return sb.toString();
    }

    public boolean q0(Phonenumber.PhoneNumber phoneNumber) {
        return p0(W(phoneNumber), phoneNumber.getCountryCode());
    }

    public void r(Phonenumber.PhoneNumber number, PhoneNumberFormat numberFormat, StringBuilder formattedNumber) {
        formattedNumber.setLength(0);
        int countryCode = number.getCountryCode();
        String T2 = T(number);
        PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.E164;
        if (numberFormat == phoneNumberFormat) {
            formattedNumber.append(T2);
            U0(countryCode, phoneNumberFormat, formattedNumber);
        } else if (!k0(countryCode)) {
            formattedNumber.append(T2);
        } else {
            Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
            formattedNumber.append(w(T2, R2, numberFormat));
            E0(number, R2, numberFormat, formattedNumber);
            U0(countryCode, numberFormat, formattedNumber);
        }
    }

    public MatchType r0(Phonenumber.PhoneNumber firstNumberIn, Phonenumber.PhoneNumber secondNumberIn) {
        Phonenumber.PhoneNumber f10 = f(firstNumberIn);
        Phonenumber.PhoneNumber f11 = f(secondNumberIn);
        if (f10.hasExtension() && f11.hasExtension() && !f10.getExtension().equals(f11.getExtension())) {
            return MatchType.NO_MATCH;
        }
        int countryCode = f10.getCountryCode();
        int countryCode2 = f11.getCountryCode();
        if (countryCode != 0 && countryCode2 != 0) {
            if (f10.exactlySameAs(f11)) {
                return MatchType.EXACT_MATCH;
            }
            if (countryCode == countryCode2 && o0(f10, f11)) {
                return MatchType.SHORT_NSN_MATCH;
            }
            return MatchType.NO_MATCH;
        }
        f10.setCountryCode(countryCode2);
        if (f10.exactlySameAs(f11)) {
            return MatchType.NSN_MATCH;
        }
        if (o0(f10, f11)) {
            return MatchType.SHORT_NSN_MATCH;
        }
        return MatchType.NO_MATCH;
    }

    public String s(Phonenumber.PhoneNumber number, PhoneNumberFormat numberFormat, List<Phonemetadata.NumberFormat> userDefinedFormats) {
        int countryCode = number.getCountryCode();
        String T2 = T(number);
        if (k0(countryCode)) {
            Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
            StringBuilder sb = new StringBuilder(20);
            Phonemetadata.NumberFormat d4 = d(userDefinedFormats, T2);
            if (d4 == null) {
                sb.append(T2);
            } else {
                Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                newBuilder.mergeFrom(d4);
                String nationalPrefixFormattingRule = d4.getNationalPrefixFormattingRule();
                if (nationalPrefixFormattingRule.length() > 0) {
                    String nationalPrefix = R2.getNationalPrefix();
                    if (nationalPrefix.length() > 0) {
                        newBuilder.setNationalPrefixFormattingRule(nationalPrefixFormattingRule.replace(f70863c0, nationalPrefix).replace(f70864d0, "$1"));
                    } else {
                        newBuilder.clearNationalPrefixFormattingRule();
                    }
                }
                sb.append(y(T2, newBuilder, numberFormat));
            }
            E0(number, R2, numberFormat, sb);
            U0(countryCode, numberFormat, sb);
            return sb.toString();
        }
        return T2;
    }

    public MatchType s0(Phonenumber.PhoneNumber firstNumber, CharSequence secondNumber) {
        try {
            return r0(firstNumber, O0(secondNumber, f70874o));
        } catch (NumberParseException e4) {
            if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                String Y2 = Y(firstNumber.getCountryCode());
                try {
                    if (!Y2.equals(f70874o)) {
                        MatchType r02 = r0(firstNumber, O0(secondNumber, Y2));
                        return r02 == MatchType.EXACT_MATCH ? MatchType.NSN_MATCH : r02;
                    }
                    Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
                    S0(secondNumber, null, false, false, phoneNumber);
                    return r0(firstNumber, phoneNumber);
                } catch (NumberParseException unused) {
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }

    public String t(Phonenumber.PhoneNumber number, String regionCallingFrom) {
        String q9;
        String nationalPrefixFormattingRule;
        int indexOf;
        if (number.hasRawInput() && !j0(number)) {
            return number.getRawInput();
        }
        if (!number.hasCountryCodeSource()) {
            return q(number, PhoneNumberFormat.NATIONAL);
        }
        int i4 = b.f70906a[number.getCountryCodeSource().ordinal()];
        if (i4 == 1) {
            q9 = q(number, PhoneNumberFormat.INTERNATIONAL);
        } else if (i4 == 2) {
            q9 = B(number, regionCallingFrom);
        } else if (i4 != 3) {
            String Y2 = Y(number.getCountryCode());
            String U2 = U(Y2, true);
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
            q9 = q(number, phoneNumberFormat);
            if (U2 != null && U2.length() != 0 && !V0(number.getRawInput(), U2, Y2)) {
                Phonemetadata.NumberFormat d4 = d(Q(Y2).numberFormats(), T(number));
                if (d4 != null && (indexOf = (nationalPrefixFormattingRule = d4.getNationalPrefixFormattingRule()).indexOf("$1")) > 0 && M0(nationalPrefixFormattingRule.substring(0, indexOf)).length() != 0) {
                    Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                    newBuilder.mergeFrom(d4);
                    newBuilder.clearNationalPrefixFormattingRule();
                    List<Phonemetadata.NumberFormat> arrayList = new ArrayList<>(1);
                    arrayList.add(newBuilder);
                    q9 = s(number, phoneNumberFormat, arrayList);
                }
            }
        } else {
            q9 = q(number, PhoneNumberFormat.INTERNATIONAL).substring(1);
        }
        String rawInput = number.getRawInput();
        return (q9 == null || rawInput.length() <= 0 || K0(q9).equals(K0(rawInput))) ? q9 : rawInput;
    }

    public MatchType t0(CharSequence firstNumber, CharSequence secondNumber) {
        try {
            return s0(O0(firstNumber, f70874o), secondNumber);
        } catch (NumberParseException e4) {
            if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                try {
                    return s0(O0(secondNumber, f70874o), firstNumber);
                } catch (NumberParseException e10) {
                    if (e10.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                        try {
                            Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
                            Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                            S0(firstNumber, null, false, false, phoneNumber);
                            S0(secondNumber, null, false, false, phoneNumber2);
                            return r0(phoneNumber, phoneNumber2);
                        } catch (NumberParseException unused) {
                            return MatchType.NOT_A_NUMBER;
                        }
                    }
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }

    public String u(Phonenumber.PhoneNumber number, CharSequence carrierCode) {
        int countryCode = number.getCountryCode();
        String T2 = T(number);
        if (k0(countryCode)) {
            Phonemetadata.PhoneMetadata R2 = R(countryCode, Y(countryCode));
            StringBuilder sb = new StringBuilder(20);
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
            sb.append(x(T2, R2, phoneNumberFormat, carrierCode));
            E0(number, R2, phoneNumberFormat, sb);
            U0(countryCode, phoneNumberFormat, sb);
            return sb.toString();
        }
        return T2;
    }

    boolean u0(String nationalNumber, Phonemetadata.PhoneNumberDesc numberDesc) {
        int length = nationalNumber.length();
        List<Integer> possibleLengthList = numberDesc.getPossibleLengthList();
        if (possibleLengthList.size() <= 0 || possibleLengthList.contains(Integer.valueOf(length))) {
            return this.f70889d.a(nationalNumber, numberDesc, false);
        }
        return false;
    }

    public String v(Phonenumber.PhoneNumber number, CharSequence fallbackCarrierCode) {
        if (number.getPreferredDomesticCarrierCode().length() > 0) {
            fallbackCarrierCode = number.getPreferredDomesticCarrierCode();
        }
        return u(number, fallbackCarrierCode);
    }

    public boolean v0(Phonenumber.PhoneNumber number) {
        ValidationResult z02 = z0(number);
        return z02 == ValidationResult.IS_POSSIBLE || z02 == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    public boolean w0(CharSequence number, String regionDialingFrom) {
        try {
            return v0(O0(number, regionDialingFrom));
        } catch (NumberParseException unused) {
            return false;
        }
    }

    public boolean x0(Phonenumber.PhoneNumber number, PhoneNumberType type) {
        ValidationResult y02 = y0(number, type);
        return y02 == ValidationResult.IS_POSSIBLE || y02 == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String y(String nationalNumber, Phonemetadata.NumberFormat formattingPattern, PhoneNumberFormat numberFormat) {
        return z(nationalNumber, formattingPattern, numberFormat, null);
    }

    public ValidationResult y0(Phonenumber.PhoneNumber number, PhoneNumberType type) {
        String T2 = T(number);
        int countryCode = number.getCountryCode();
        if (!k0(countryCode)) {
            return ValidationResult.INVALID_COUNTRY_CODE;
        }
        return Y0(T2, R(countryCode, Y(countryCode)), type);
    }

    public ValidationResult z0(Phonenumber.PhoneNumber number) {
        return y0(number, PhoneNumberType.UNKNOWN);
    }
}
