package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.i;
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
import shaded.org.apache.commons.codec.language.l;

/* loaded from: classes2.dex */
public class PhoneNumberUtil {
    private static final Map<Character, Character> A;
    private static final Map<Character, Character> B;
    private static final Map<Character, Character> C;
    private static final Pattern D;
    static final String E = "-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～";
    private static final String F = "\\p{Nd}";
    private static final String G;
    static final String H = "+＋";
    static final Pattern I;
    private static final Pattern J;
    private static final Pattern K;
    private static final String L = "[+＋\\p{Nd}]";
    private static final Pattern M;
    private static final String N = "[\\\\/] *x";
    static final Pattern O;
    private static final String P = "[[\\P{N}&&\\P{L}]&&[^#]]+$";
    static final Pattern Q;
    private static final Pattern R;
    private static final String S;
    private static final String T = " ext. ";
    private static final String U;
    static final String V;
    private static final Pattern W;
    private static final Pattern X;
    static final Pattern Y;
    private static final Pattern Z;

    /* renamed from: a0  reason: collision with root package name */
    private static final String f35518a0 = "$NP";

    /* renamed from: b0  reason: collision with root package name */
    private static final String f35519b0 = "$FG";

    /* renamed from: c0  reason: collision with root package name */
    private static final String f35520c0 = "$CC";

    /* renamed from: d0  reason: collision with root package name */
    private static final Pattern f35521d0;

    /* renamed from: e0  reason: collision with root package name */
    private static PhoneNumberUtil f35522e0 = null;

    /* renamed from: f0  reason: collision with root package name */
    public static final String f35523f0 = "001";

    /* renamed from: h  reason: collision with root package name */
    private static final Logger f35524h = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: i  reason: collision with root package name */
    static final int f35525i = 66;

    /* renamed from: j  reason: collision with root package name */
    private static final int f35526j = 2;

    /* renamed from: k  reason: collision with root package name */
    static final int f35527k = 17;

    /* renamed from: l  reason: collision with root package name */
    static final int f35528l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f35529m = 250;

    /* renamed from: n  reason: collision with root package name */
    private static final String f35530n = "ZZ";

    /* renamed from: o  reason: collision with root package name */
    private static final int f35531o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final String f35532p = "3";

    /* renamed from: q  reason: collision with root package name */
    private static final Map<Integer, String> f35533q;

    /* renamed from: r  reason: collision with root package name */
    private static final Set<Integer> f35534r;

    /* renamed from: s  reason: collision with root package name */
    private static final Set<Integer> f35535s;

    /* renamed from: t  reason: collision with root package name */
    static final char f35536t = '+';

    /* renamed from: u  reason: collision with root package name */
    private static final char f35537u = '*';

    /* renamed from: v  reason: collision with root package name */
    private static final String f35538v = ";ext=";

    /* renamed from: w  reason: collision with root package name */
    private static final String f35539w = "tel:";

    /* renamed from: x  reason: collision with root package name */
    private static final String f35540x = ";phone-context=";

    /* renamed from: y  reason: collision with root package name */
    private static final String f35541y = ";isub=";

    /* renamed from: z  reason: collision with root package name */
    private static final Map<Character, Character> f35542z;

    /* renamed from: a  reason: collision with root package name */
    private final f f35543a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, List<String>> f35544b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.i18n.phonenumbers.internal.a f35545c = com.google.i18n.phonenumbers.internal.b.b();

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f35546d = new HashSet(35);

    /* renamed from: e  reason: collision with root package name */
    private final com.google.i18n.phonenumbers.internal.c f35547e = new com.google.i18n.phonenumbers.internal.c(100);

    /* renamed from: f  reason: collision with root package name */
    private final Set<String> f35548f = new HashSet(320);

    /* renamed from: g  reason: collision with root package name */
    private final Set<Integer> f35549g = new HashSet();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class Leniency {
        public static final Leniency EXACT_GROUPING;
        public static final Leniency POSSIBLE;
        public static final Leniency STRICT_GROUPING;
        public static final Leniency VALID;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ Leniency[] f35550a;

        /* loaded from: classes2.dex */
        enum a extends Leniency {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, i iVar) {
                return phoneNumberUtil.u0(phoneNumber);
            }
        }

        /* loaded from: classes2.dex */
        enum b extends Leniency {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, i iVar) {
                if (phoneNumberUtil.z0(phoneNumber) && i.e(phoneNumber, charSequence.toString(), phoneNumberUtil)) {
                    return i.m(phoneNumber, phoneNumberUtil);
                }
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum c extends Leniency {

            /* loaded from: classes2.dex */
            class a implements i.a {
                a() {
                }

                @Override // com.google.i18n.phonenumbers.i.a
                public boolean a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
                    return i.b(phoneNumberUtil, phoneNumber, sb, strArr);
                }
            }

            c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, i iVar) {
                String charSequence2 = charSequence.toString();
                if (phoneNumberUtil.z0(phoneNumber) && i.e(phoneNumber, charSequence2, phoneNumberUtil) && !i.d(phoneNumber, charSequence2) && i.m(phoneNumber, phoneNumberUtil)) {
                    return iVar.c(phoneNumber, charSequence, phoneNumberUtil, new a());
                }
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum d extends Leniency {

            /* loaded from: classes2.dex */
            class a implements i.a {
                a() {
                }

                @Override // com.google.i18n.phonenumbers.i.a
                public boolean a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
                    return i.a(phoneNumberUtil, phoneNumber, sb, strArr);
                }
            }

            d(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean a(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, i iVar) {
                String charSequence2 = charSequence.toString();
                if (phoneNumberUtil.z0(phoneNumber) && i.e(phoneNumber, charSequence2, phoneNumberUtil) && !i.d(phoneNumber, charSequence2) && i.m(phoneNumber, phoneNumberUtil)) {
                    return iVar.c(phoneNumber, charSequence, phoneNumberUtil, new a());
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
            f35550a = new Leniency[]{aVar, bVar, cVar, dVar};
        }

        private Leniency(String str, int i4) {
        }

        public static Leniency valueOf(String str) {
            return (Leniency) Enum.valueOf(Leniency.class, str);
        }

        public static Leniency[] values() {
            return (Leniency[]) f35550a.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean a(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, i iVar);

        /* synthetic */ Leniency(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* loaded from: classes2.dex */
    public enum MatchType {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* loaded from: classes2.dex */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes2.dex */
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

    /* loaded from: classes2.dex */
    public enum ValidationResult {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Iterable<h> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f35557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35558b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Leniency f35559c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f35560d;

        a(CharSequence charSequence, String str, Leniency leniency, long j4) {
            this.f35557a = charSequence;
            this.f35558b = str;
            this.f35559c = leniency;
            this.f35560d = j4;
        }

        @Override // java.lang.Iterable
        public Iterator<h> iterator() {
            return new i(PhoneNumberUtil.this, this.f35557a, this.f35558b, this.f35559c, this.f35560d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35562a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f35563b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f35564c;

        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            f35564c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35564c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35564c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35564c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35564c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f35564c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f35564c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f35564c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f35564c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f35564c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f35564c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f35563b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f35563b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f35563b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f35563b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
            f35562a = iArr3;
            try {
                iArr3[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f35562a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f35562a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f35562a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(54, g5.h.f67844h);
        f35533q = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f35534r = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f35535s = Collections.unmodifiableSet(hashSet2);
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
        A = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        B = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        Character valueOf = Character.valueOf(f35536t);
        hashMap5.put(valueOf, valueOf);
        Character valueOf2 = Character.valueOf(f35537u);
        hashMap5.put(valueOf2, valueOf2);
        hashMap5.put('#', '#');
        f35542z = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : unmodifiableMap.keySet()) {
            char charValue = ch.charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put(Character.valueOf(l.f93713d), Character.valueOf(l.f93713d));
        hashMap6.put((char) 65293, Character.valueOf(l.f93713d));
        hashMap6.put((char) 8208, Character.valueOf(l.f93713d));
        hashMap6.put((char) 8209, Character.valueOf(l.f93713d));
        hashMap6.put((char) 8210, Character.valueOf(l.f93713d));
        hashMap6.put(Character.valueOf(Typography.ndash), Character.valueOf(l.f93713d));
        hashMap6.put(Character.valueOf(Typography.mdash), Character.valueOf(l.f93713d));
        hashMap6.put((char) 8213, Character.valueOf(l.f93713d));
        hashMap6.put((char) 8722, Character.valueOf(l.f93713d));
        hashMap6.put(Character.valueOf(com.fasterxml.jackson.core.e.f13819f), Character.valueOf(com.fasterxml.jackson.core.e.f13819f));
        hashMap6.put((char) 65295, Character.valueOf(com.fasterxml.jackson.core.e.f13819f));
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        C = Collections.unmodifiableMap(hashMap6);
        D = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = A;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        G = sb2;
        I = Pattern.compile("[+＋]+");
        J = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        K = Pattern.compile("(\\p{Nd})");
        M = Pattern.compile(L);
        O = Pattern.compile(N);
        Q = Pattern.compile(P);
        R = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + F + "]*";
        S = str;
        String g4 = g(true);
        U = g4;
        V = g(false);
        W = Pattern.compile("(?:" + g4 + ")$", 66);
        X = Pattern.compile(str + "(?:" + g4 + ")?", 66);
        Y = Pattern.compile("(\\D+)");
        Z = Pattern.compile("(\\$\\d)");
        f35521d0 = Pattern.compile("\\(?\\$1\\)?");
        f35522e0 = null;
    }

    PhoneNumberUtil(f fVar, Map<Integer, List<String>> map) {
        this.f35543a = fVar;
        this.f35544b = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() == 1 && "001".equals(value.get(0))) {
                this.f35549g.add(entry.getKey());
            } else {
                this.f35548f.addAll(value);
            }
        }
        if (this.f35548f.remove("001")) {
            f35524h.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f35546d.addAll(map.get(1));
    }

    private boolean B0(String str) {
        return str != null && this.f35548f.contains(str);
    }

    static boolean C0(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return X.matcher(charSequence).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean D(String str) {
        return str.length() == 0 || f35521d0.matcher(str).matches();
    }

    private void D0(Phonenumber.PhoneNumber phoneNumber, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        if (!phoneNumber.hasExtension() || phoneNumber.getExtension().length() <= 0) {
            return;
        }
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            sb.append(f35538v);
            sb.append(phoneNumber.getExtension());
        } else if (phoneMetadata.hasPreferredExtnPrefix()) {
            sb.append(phoneMetadata.getPreferredExtnPrefix());
            sb.append(phoneNumber.getExtension());
        } else {
            sb.append(T);
            sb.append(phoneNumber.getExtension());
        }
    }

    private int G(String str) {
        Phonemetadata.PhoneMetadata R2 = R(str);
        if (R2 != null) {
            return R2.getCountryCode();
        }
        throw new IllegalArgumentException("Invalid region code: " + str);
    }

    public static String H(int i4) {
        Map<Integer, String> map = f35533q;
        return map.containsKey(Integer.valueOf(i4)) ? map.get(Integer.valueOf(i4)) : "";
    }

    static StringBuilder I0(StringBuilder sb) {
        if (R.matcher(sb).matches()) {
            sb.replace(0, sb.length(), M0(sb, B, true));
        } else {
            sb.replace(0, sb.length(), L0(sb));
        }
        return sb;
    }

    public static String J0(CharSequence charSequence) {
        return M0(charSequence, f35542z, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder K0(CharSequence charSequence, boolean z9) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i4 = 0; i4 < charSequence.length(); i4++) {
            char charAt = charSequence.charAt(i4);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (z9) {
                sb.append(charAt);
            }
        }
        return sb;
    }

    public static String L0(CharSequence charSequence) {
        return K0(charSequence, false).toString();
    }

    public static synchronized PhoneNumberUtil M() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            if (f35522e0 == null) {
                V0(h(e.f35677e));
            }
            phoneNumberUtil = f35522e0;
        }
        return phoneNumberUtil;
    }

    private static String M0(CharSequence charSequence, Map<Character, Character> map, boolean z9) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i4 = 0; i4 < charSequence.length(); i4++) {
            char charAt = charSequence.charAt(i4);
            Character ch = map.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!z9) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    private void R0(CharSequence charSequence, String str, boolean z9, boolean z10, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        int E0;
        if (charSequence != null) {
            if (charSequence.length() <= 250) {
                StringBuilder sb = new StringBuilder();
                String charSequence2 = charSequence.toString();
                a(charSequence2, sb);
                if (C0(sb)) {
                    if (z10 && !c(sb, str)) {
                        throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
                    }
                    if (z9) {
                        phoneNumber.setRawInput(charSequence2);
                    }
                    String F0 = F0(sb);
                    if (F0.length() > 0) {
                        phoneNumber.setExtension(F0);
                    }
                    Phonemetadata.PhoneMetadata R2 = R(str);
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        E0 = E0(sb, R2, sb2, z9, phoneNumber);
                    } catch (NumberParseException e4) {
                        Matcher matcher = I.matcher(sb);
                        if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE && matcher.lookingAt()) {
                            E0 = E0(sb.substring(matcher.end()), R2, sb2, z9, phoneNumber);
                            if (E0 == 0) {
                                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                            }
                        } else {
                            throw new NumberParseException(e4.getErrorType(), e4.getMessage());
                        }
                    }
                    if (E0 != 0) {
                        String Y2 = Y(E0);
                        if (!Y2.equals(str)) {
                            R2 = S(E0, Y2);
                        }
                    } else {
                        sb2.append(I0(sb));
                        if (str != null) {
                            phoneNumber.setCountryCode(R2.getCountryCode());
                        } else if (z9) {
                            phoneNumber.clearCountryCodeSource();
                        }
                    }
                    if (sb2.length() >= 2) {
                        if (R2 != null) {
                            StringBuilder sb3 = new StringBuilder();
                            StringBuilder sb4 = new StringBuilder(sb2);
                            H0(sb4, R2, sb3);
                            ValidationResult X0 = X0(sb4, R2);
                            if (X0 != ValidationResult.TOO_SHORT && X0 != ValidationResult.IS_POSSIBLE_LOCAL_ONLY && X0 != ValidationResult.INVALID_LENGTH) {
                                if (z9 && sb3.length() > 0) {
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

    private Phonemetadata.PhoneMetadata S(int i4, String str) {
        if ("001".equals(str)) {
            return Q(i4);
        }
        return R(str);
    }

    private boolean S0(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (matcher.lookingAt()) {
            int end = matcher.end();
            Matcher matcher2 = K.matcher(sb.substring(end));
            if (matcher2.find() && L0(matcher2.group(1)).equals("0")) {
                return false;
            }
            sb.delete(0, end);
            return true;
        }
        return false;
    }

    private void T0(int i4, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int i10 = b.f35563b[phoneNumberFormat.ordinal()];
        if (i10 == 1) {
            sb.insert(0, i4).insert(0, f35536t);
        } else if (i10 == 2) {
            sb.insert(0, " ").insert(0, i4).insert(0, f35536t);
        } else if (i10 != 3) {
        } else {
            sb.insert(0, "-").insert(0, i4).insert(0, f35536t).insert(0, f35539w);
        }
    }

    private boolean U0(String str, String str2, String str3) {
        String L0 = L0(str);
        if (L0.startsWith(str2)) {
            try {
                return z0(N0(L0.substring(str2.length()), str3));
            } catch (NumberParseException unused) {
            }
        }
        return false;
    }

    static synchronized void V0(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            f35522e0 = phoneNumberUtil;
        }
    }

    static void W0(CharSequence charSequence, Phonenumber.PhoneNumber phoneNumber) {
        if (charSequence.length() <= 1 || charSequence.charAt(0) != '0') {
            return;
        }
        phoneNumber.setItalianLeadingZero(true);
        int i4 = 1;
        while (i4 < charSequence.length() - 1 && charSequence.charAt(i4) == '0') {
            i4++;
        }
        if (i4 != 1) {
            phoneNumber.setNumberOfLeadingZeros(i4);
        }
    }

    private PhoneNumberType X(String str, Phonemetadata.PhoneMetadata phoneMetadata) {
        if (!t0(str, phoneMetadata.getGeneralDesc())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (t0(str, phoneMetadata.getPremiumRate())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (t0(str, phoneMetadata.getTollFree())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (t0(str, phoneMetadata.getSharedCost())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (t0(str, phoneMetadata.getVoip())) {
            return PhoneNumberType.VOIP;
        }
        if (t0(str, phoneMetadata.getPersonalNumber())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (t0(str, phoneMetadata.getPager())) {
            return PhoneNumberType.PAGER;
        }
        if (t0(str, phoneMetadata.getUan())) {
            return PhoneNumberType.UAN;
        }
        if (t0(str, phoneMetadata.getVoicemail())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (t0(str, phoneMetadata.getFixedLine())) {
            if (phoneMetadata.getSameMobileAndFixedLinePattern()) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            if (t0(str, phoneMetadata.getMobile())) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            return PhoneNumberType.FIXED_LINE;
        } else if (!phoneMetadata.getSameMobileAndFixedLinePattern() && t0(str, phoneMetadata.getMobile())) {
            return PhoneNumberType.MOBILE;
        } else {
            return PhoneNumberType.UNKNOWN;
        }
    }

    private ValidationResult X0(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata) {
        return Y0(charSequence, phoneMetadata, PhoneNumberType.UNKNOWN);
    }

    private ValidationResult Y0(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        List<Integer> possibleLengthList;
        Phonemetadata.PhoneNumberDesc V2 = V(phoneMetadata, phoneNumberType);
        ArrayList possibleLengthList2 = V2.getPossibleLengthList().isEmpty() ? phoneMetadata.getGeneralDesc().getPossibleLengthList() : V2.getPossibleLengthList();
        List<Integer> possibleLengthLocalOnlyList = V2.getPossibleLengthLocalOnlyList();
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!k(V(phoneMetadata, PhoneNumberType.FIXED_LINE))) {
                return Y0(charSequence, phoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata.PhoneNumberDesc V3 = V(phoneMetadata, PhoneNumberType.MOBILE);
            if (k(V3)) {
                ArrayList arrayList = new ArrayList(possibleLengthList2);
                if (V3.getPossibleLengthCount() == 0) {
                    possibleLengthList = phoneMetadata.getGeneralDesc().getPossibleLengthList();
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
        int length = charSequence.length();
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

    private void a(String str, StringBuilder sb) {
        int indexOf = str.indexOf(f35540x);
        if (indexOf >= 0) {
            int i4 = indexOf + 15;
            if (i4 < str.length() - 1 && str.charAt(i4) == '+') {
                int indexOf2 = str.indexOf(59, i4);
                if (indexOf2 > 0) {
                    sb.append(str.substring(i4, indexOf2));
                } else {
                    sb.append(str.substring(i4));
                }
            }
            int indexOf3 = str.indexOf(f35539w);
            sb.append(str.substring(indexOf3 >= 0 ? indexOf3 + 4 : 0, indexOf));
        } else {
            sb.append(n(str));
        }
        int indexOf4 = sb.indexOf(f35541y);
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    private String a0(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        String T2 = T(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata R2 = R(str);
            if (R2.hasLeadingDigits()) {
                if (this.f35547e.b(R2.getLeadingDigits()).matcher(T2).lookingAt()) {
                    return str;
                }
            } else if (X(T2, R2) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    private boolean c(CharSequence charSequence, String str) {
        if (B0(str)) {
            return true;
        }
        return (charSequence == null || charSequence.length() == 0 || !I.matcher(charSequence).lookingAt()) ? false : true;
    }

    public static String e(CharSequence charSequence) {
        return M0(charSequence, B, false);
    }

    private static Phonenumber.PhoneNumber f(Phonenumber.PhoneNumber phoneNumber) {
        Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
        phoneNumber2.setCountryCode(phoneNumber.getCountryCode());
        phoneNumber2.setNationalNumber(phoneNumber.getNationalNumber());
        if (phoneNumber.getExtension().length() > 0) {
            phoneNumber2.setExtension(phoneNumber.getExtension());
        }
        if (phoneNumber.isItalianLeadingZero()) {
            phoneNumber2.setItalianLeadingZero(true);
            phoneNumber2.setNumberOfLeadingZeros(phoneNumber.getNumberOfLeadingZeros());
        }
        return phoneNumber2;
    }

    private Set<PhoneNumberType> f0(Phonemetadata.PhoneMetadata phoneMetadata) {
        PhoneNumberType[] values;
        TreeSet treeSet = new TreeSet();
        for (PhoneNumberType phoneNumberType : PhoneNumberType.values()) {
            if (phoneNumberType != PhoneNumberType.FIXED_LINE_OR_MOBILE && phoneNumberType != PhoneNumberType.UNKNOWN && j(V(phoneMetadata, phoneNumberType))) {
                treeSet.add(phoneNumberType);
            }
        }
        return Collections.unmodifiableSet(treeSet);
    }

    private static String g(boolean z9) {
        String str = (f35538v + l(20)) + "|" + ("[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|anexo)[:\\.．]?[  \\t,-]*" + l(20) + "#?") + "|" + ("[  \\t,]*(?:[xｘ#＃~～]|int|ｉｎｔ)[:\\.．]?[  \\t,-]*" + l(9) + "#?") + "|" + ("[- ]+" + l(6) + "#");
        if (z9) {
            return str + "|" + ("[  \\t]*(?:,{2}|;)[:\\.．]?[  \\t,-]*" + l(15) + "#?") + "|" + ("[  \\t]*(?:,)+[:\\.．]?[  \\t,-]*" + l(9) + "#?");
        }
        return str;
    }

    public static PhoneNumberUtil h(d dVar) {
        if (dVar != null) {
            return i(new g(dVar));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    private static PhoneNumberUtil i(f fVar) {
        if (fVar != null) {
            return new PhoneNumberUtil(fVar, c.a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    private boolean i0(Phonenumber.PhoneNumber phoneNumber) {
        int countryCode = phoneNumber.getCountryCode();
        Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
        if (S2 == null) {
            return false;
        }
        return d(S2.getNumberFormatList(), T(phoneNumber)) != null;
    }

    private static boolean j(Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        return phoneNumberDesc.hasExampleNumber() || k(phoneNumberDesc) || phoneNumberDesc.hasNationalNumberPattern();
    }

    private boolean j0(int i4) {
        return this.f35544b.containsKey(Integer.valueOf(i4));
    }

    private static boolean k(Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        return (phoneNumberDesc.getPossibleLengthCount() == 1 && phoneNumberDesc.getPossibleLength(0) == -1) ? false : true;
    }

    private static String l(int i4) {
        return "(\\p{Nd}{1," + i4 + "})";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence n(CharSequence charSequence) {
        Matcher matcher = M.matcher(charSequence);
        if (matcher.find()) {
            CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
            Matcher matcher2 = Q.matcher(subSequence);
            if (matcher2.find()) {
                subSequence = subSequence.subSequence(0, matcher2.start());
            }
            Matcher matcher3 = O.matcher(subSequence);
            return matcher3.find() ? subSequence.subSequence(0, matcher3.start()) : subSequence;
        }
        return "";
    }

    private boolean n0(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        String valueOf = String.valueOf(phoneNumber.getNationalNumber());
        String valueOf2 = String.valueOf(phoneNumber2.getNationalNumber());
        return valueOf.endsWith(valueOf2) || valueOf2.endsWith(valueOf);
    }

    private String w(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat) {
        return x(str, phoneMetadata, phoneNumberFormat, null);
    }

    private String x(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        List<Phonemetadata.NumberFormat> numberFormatList;
        if (phoneMetadata.getIntlNumberFormatList().size() != 0 && phoneNumberFormat != PhoneNumberFormat.NATIONAL) {
            numberFormatList = phoneMetadata.getIntlNumberFormatList();
        } else {
            numberFormatList = phoneMetadata.getNumberFormatList();
        }
        Phonemetadata.NumberFormat d4 = d(numberFormatList, str);
        return d4 == null ? str : z(str, d4, phoneNumberFormat, charSequence);
    }

    private String z(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        String replaceAll;
        String format = numberFormat.getFormat();
        Matcher matcher = this.f35547e.b(numberFormat.getPattern()).matcher(str);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.NATIONAL;
        if (phoneNumberFormat == phoneNumberFormat2 && charSequence != null && charSequence.length() > 0 && numberFormat.getDomesticCarrierCodeFormattingRule().length() > 0) {
            replaceAll = matcher.replaceAll(Z.matcher(format).replaceFirst(numberFormat.getDomesticCarrierCodeFormattingRule().replace(f35520c0, charSequence)));
        } else {
            String nationalPrefixFormattingRule = numberFormat.getNationalPrefixFormattingRule();
            if (phoneNumberFormat == phoneNumberFormat2 && nationalPrefixFormattingRule != null && nationalPrefixFormattingRule.length() > 0) {
                replaceAll = matcher.replaceAll(Z.matcher(format).replaceFirst(nationalPrefixFormattingRule));
            } else {
                replaceAll = matcher.replaceAll(format);
            }
        }
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            Matcher matcher2 = J.matcher(replaceAll);
            if (matcher2.lookingAt()) {
                replaceAll = matcher2.replaceFirst("");
            }
            return matcher2.reset(replaceAll).replaceAll("-");
        }
        return replaceAll;
    }

    public String A(Phonenumber.PhoneNumber phoneNumber, String str, boolean z9) {
        String q9;
        int countryCode = phoneNumber.getCountryCode();
        String str2 = "";
        if (!j0(countryCode)) {
            return phoneNumber.hasRawInput() ? phoneNumber.getRawInput() : "";
        }
        Phonenumber.PhoneNumber clearExtension = new Phonenumber.PhoneNumber().mergeFrom(phoneNumber).clearExtension();
        String Y2 = Y(countryCode);
        PhoneNumberType W2 = W(clearExtension);
        boolean z10 = false;
        boolean z11 = W2 != PhoneNumberType.UNKNOWN;
        if (str.equals(Y2)) {
            PhoneNumberType phoneNumberType = PhoneNumberType.FIXED_LINE;
            z10 = (W2 == phoneNumberType || W2 == PhoneNumberType.MOBILE || W2 == PhoneNumberType.FIXED_LINE_OR_MOBILE) ? true : true;
            if (Y2.equals("CO") && W2 == phoneNumberType) {
                q9 = u(clearExtension, "3");
            } else if (Y2.equals("BR") && z10) {
                if (clearExtension.getPreferredDomesticCarrierCode().length() > 0) {
                    str2 = v(clearExtension, "");
                }
            } else if (countryCode == 1) {
                Phonemetadata.PhoneMetadata R2 = R(str);
                if (b(clearExtension) && X0(T(clearExtension), R2) != ValidationResult.TOO_SHORT) {
                    q9 = q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
                } else {
                    q9 = q(clearExtension, PhoneNumberFormat.NATIONAL);
                }
            } else if ((Y2.equals("001") || ((Y2.equals("MX") || Y2.equals("CL") || Y2.equals("UZ")) && z10)) && b(clearExtension)) {
                q9 = q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
            } else {
                q9 = q(clearExtension, PhoneNumberFormat.NATIONAL);
            }
            str2 = q9;
        } else if (z11 && b(clearExtension)) {
            if (z9) {
                return q(clearExtension, PhoneNumberFormat.INTERNATIONAL);
            }
            return q(clearExtension, PhoneNumberFormat.E164);
        }
        return z9 ? str2 : J0(str2);
    }

    public boolean A0(Phonenumber.PhoneNumber phoneNumber, String str) {
        int countryCode = phoneNumber.getCountryCode();
        Phonemetadata.PhoneMetadata S2 = S(countryCode, str);
        if (S2 != null) {
            return ("001".equals(str) || countryCode == G(str)) && X(T(phoneNumber), S2) != PhoneNumberType.UNKNOWN;
        }
        return false;
    }

    public String B(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (!B0(str)) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            logger.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
            return q(phoneNumber, PhoneNumberFormat.INTERNATIONAL);
        }
        int countryCode = phoneNumber.getCountryCode();
        String T2 = T(phoneNumber);
        if (j0(countryCode)) {
            if (countryCode == 1) {
                if (m0(str)) {
                    return countryCode + " " + q(phoneNumber, PhoneNumberFormat.NATIONAL);
                }
            } else if (countryCode == G(str)) {
                return q(phoneNumber, PhoneNumberFormat.NATIONAL);
            }
            Phonemetadata.PhoneMetadata R2 = R(str);
            String internationalPrefix = R2.getInternationalPrefix();
            if (R2.hasPreferredInternationalPrefix()) {
                internationalPrefix = R2.getPreferredInternationalPrefix();
            } else if (!D.matcher(internationalPrefix).matches()) {
                internationalPrefix = "";
            }
            Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
            StringBuilder sb = new StringBuilder(w(T2, S2, phoneNumberFormat));
            D0(phoneNumber, S2, phoneNumberFormat, sb);
            if (internationalPrefix.length() > 0) {
                sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, internationalPrefix);
            } else {
                T0(countryCode, phoneNumberFormat, sb);
            }
            return sb.toString();
        }
        return T2;
    }

    public String C(Phonenumber.PhoneNumber phoneNumber, String str) {
        String str2;
        int indexOf;
        String rawInput = phoneNumber.getRawInput();
        if (rawInput.length() == 0) {
            return B(phoneNumber, str);
        }
        int countryCode = phoneNumber.getCountryCode();
        if (j0(countryCode)) {
            String M0 = M0(rawInput, C, true);
            String T2 = T(phoneNumber);
            if (T2.length() > 3 && (indexOf = M0.indexOf(T2.substring(0, 3))) != -1) {
                M0 = M0.substring(indexOf);
            }
            Phonemetadata.PhoneMetadata R2 = R(str);
            if (countryCode == 1) {
                if (m0(str)) {
                    return countryCode + " " + M0;
                }
            } else if (R2 != null && countryCode == G(str)) {
                Phonemetadata.NumberFormat d4 = d(R2.getNumberFormatList(), T2);
                if (d4 == null) {
                    return M0;
                }
                Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                newBuilder.mergeFrom(d4);
                newBuilder.setPattern("(\\d+)(.*)");
                newBuilder.setFormat("$1$2");
                return y(M0, newBuilder.build(), PhoneNumberFormat.NATIONAL);
            }
            if (R2 != null) {
                str2 = R2.getInternationalPrefix();
                if (!D.matcher(str2).matches()) {
                    str2 = R2.getPreferredInternationalPrefix();
                }
            } else {
                str2 = "";
            }
            StringBuilder sb = new StringBuilder(M0);
            Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.INTERNATIONAL;
            D0(phoneNumber, S2, phoneNumberFormat, sb);
            if (str2.length() > 0) {
                sb.insert(0, " ").insert(0, countryCode).insert(0, " ").insert(0, str2);
            } else {
                if (!B0(str)) {
                    Logger logger = f35524h;
                    Level level = Level.WARNING;
                    logger.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
                }
                T0(countryCode, phoneNumberFormat, sb);
            }
            return sb.toString();
        }
        return rawInput;
    }

    public com.google.i18n.phonenumbers.b E(String str) {
        return new com.google.i18n.phonenumbers.b(str);
    }

    int E0(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb, boolean z9, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        Phonenumber.PhoneNumber.CountryCodeSource G0 = G0(sb2, phoneMetadata != null ? phoneMetadata.getInternationalPrefix() : "NonMatch");
        if (z9) {
            phoneNumber.setCountryCodeSource(G0);
        }
        if (G0 != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() > 2) {
                int m9 = m(sb2, sb);
                if (m9 != 0) {
                    phoneNumber.setCountryCode(m9);
                    return m9;
                }
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
        if (phoneMetadata != null) {
            int countryCode = phoneMetadata.getCountryCode();
            String valueOf = String.valueOf(countryCode);
            String sb3 = sb2.toString();
            if (sb3.startsWith(valueOf)) {
                StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                Phonemetadata.PhoneNumberDesc generalDesc = phoneMetadata.getGeneralDesc();
                H0(sb4, phoneMetadata, null);
                if ((!this.f35545c.a(sb2, generalDesc, false) && this.f35545c.a(sb4, generalDesc, false)) || X0(sb2, phoneMetadata) == ValidationResult.TOO_LONG) {
                    sb.append((CharSequence) sb4);
                    if (z9) {
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

    public int F(String str) {
        if (!B0(str)) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid or missing region code (");
            if (str == null) {
                str = "null";
            }
            sb.append(str);
            sb.append(") provided.");
            logger.log(level, sb.toString());
            return 0;
        }
        return G(str);
    }

    String F0(StringBuilder sb) {
        Matcher matcher = W.matcher(sb);
        if (matcher.find() && C0(sb.substring(0, matcher.start()))) {
            int groupCount = matcher.groupCount();
            for (int i4 = 1; i4 <= groupCount; i4++) {
                if (matcher.group(i4) != null) {
                    String group = matcher.group(i4);
                    sb.delete(matcher.start(), sb.length());
                    return group;
                }
            }
            return "";
        }
        return "";
    }

    Phonenumber.PhoneNumber.CountryCodeSource G0(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = I.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            I0(sb);
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern b10 = this.f35547e.b(str);
        I0(sb);
        return S0(b10, sb) ? Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean H0(StringBuilder sb, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String nationalPrefixForParsing = phoneMetadata.getNationalPrefixForParsing();
        if (length != 0 && nationalPrefixForParsing.length() != 0) {
            Matcher matcher = this.f35547e.b(nationalPrefixForParsing).matcher(sb);
            if (matcher.lookingAt()) {
                Phonemetadata.PhoneNumberDesc generalDesc = phoneMetadata.getGeneralDesc();
                boolean a10 = this.f35545c.a(sb, generalDesc, false);
                int groupCount = matcher.groupCount();
                String nationalPrefixTransformRule = phoneMetadata.getNationalPrefixTransformRule();
                if (nationalPrefixTransformRule != null && nationalPrefixTransformRule.length() != 0 && matcher.group(groupCount) != null) {
                    StringBuilder sb3 = new StringBuilder(sb);
                    sb3.replace(0, length, matcher.replaceFirst(nationalPrefixTransformRule));
                    if (!a10 || this.f35545c.a(sb3.toString(), generalDesc, false)) {
                        if (sb2 != null && groupCount > 1) {
                            sb2.append(matcher.group(1));
                        }
                        sb.replace(0, sb.length(), sb3.toString());
                        return true;
                    }
                    return false;
                } else if (!a10 || this.f35545c.a(sb.substring(matcher.end()), generalDesc, false)) {
                    if (sb2 != null && groupCount > 0 && matcher.group(groupCount) != null) {
                        sb2.append(matcher.group(1));
                    }
                    sb.delete(0, matcher.end());
                    return true;
                } else {
                    return false;
                }
            }
        }
        return false;
    }

    public Phonenumber.PhoneNumber I(String str) {
        return L(str, PhoneNumberType.FIXED_LINE);
    }

    public Phonenumber.PhoneNumber J(int i4) {
        Phonemetadata.PhoneMetadata Q2 = Q(i4);
        if (Q2 != null) {
            for (Phonemetadata.PhoneNumberDesc phoneNumberDesc : Arrays.asList(Q2.getMobile(), Q2.getTollFree(), Q2.getSharedCost(), Q2.getVoip(), Q2.getVoicemail(), Q2.getUan(), Q2.getPremiumRate())) {
                if (phoneNumberDesc != null) {
                    try {
                        if (phoneNumberDesc.hasExampleNumber()) {
                            return N0("+" + i4 + phoneNumberDesc.getExampleNumber(), f35530n);
                        }
                        continue;
                    } catch (NumberParseException e4) {
                        f35524h.log(Level.SEVERE, e4.toString());
                    }
                }
            }
            return null;
        }
        Logger logger = f35524h;
        Level level = Level.WARNING;
        logger.log(level, "Invalid or unknown country calling code provided: " + i4);
        return null;
    }

    public Phonenumber.PhoneNumber K(PhoneNumberType phoneNumberType) {
        for (String str : e0()) {
            Phonenumber.PhoneNumber L2 = L(str, phoneNumberType);
            if (L2 != null) {
                return L2;
            }
        }
        for (Integer num : d0()) {
            int intValue = num.intValue();
            Phonemetadata.PhoneNumberDesc V2 = V(Q(intValue), phoneNumberType);
            try {
            } catch (NumberParseException e4) {
                f35524h.log(Level.SEVERE, e4.toString());
            }
            if (V2.hasExampleNumber()) {
                return N0("+" + intValue + V2.getExampleNumber(), f35530n);
            }
            continue;
        }
        return null;
    }

    public Phonenumber.PhoneNumber L(String str, PhoneNumberType phoneNumberType) {
        if (!B0(str)) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + str);
            return null;
        }
        Phonemetadata.PhoneNumberDesc V2 = V(R(str), phoneNumberType);
        try {
            if (V2.hasExampleNumber()) {
                return N0(V2.getExampleNumber(), str);
            }
        } catch (NumberParseException e4) {
            f35524h.log(Level.SEVERE, e4.toString());
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
    public com.google.i18n.phonenumbers.Phonenumber.PhoneNumber N(java.lang.String r6) {
        /*
            r5 = this;
            boolean r0 = r5.B0(r6)
            r1 = 0
            if (r0 != 0) goto L20
            java.util.logging.Logger r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.f35524h
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
            com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata r0 = r5.R(r6)
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberType r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.FIXED_LINE
            com.google.i18n.phonenumbers.Phonemetadata$PhoneNumberDesc r0 = r5.V(r0, r2)
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
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r3 = r5.N0(r3, r6)     // Catch: com.google.i18n.phonenumbers.NumberParseException -> L4e
            boolean r4 = r5.z0(r3)     // Catch: com.google.i18n.phonenumbers.NumberParseException -> L4e
            if (r4 != 0) goto L4e
            return r3
        L4e:
            int r2 = r2 + (-1)
            goto L3b
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.N(java.lang.String):com.google.i18n.phonenumbers.Phonenumber$PhoneNumber");
    }

    public Phonenumber.PhoneNumber N0(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        O0(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    public int O(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata R2 = R(Z(phoneNumber));
        if (R2 == null) {
            return 0;
        }
        if (R2.hasNationalPrefix() || phoneNumber.isItalianLeadingZero()) {
            PhoneNumberType W2 = W(phoneNumber);
            int countryCode = phoneNumber.getCountryCode();
            if (!(W2 == PhoneNumberType.MOBILE && f35534r.contains(Integer.valueOf(countryCode))) && o0(W2, countryCode)) {
                return P(phoneNumber);
            }
            return 0;
        }
        return 0;
    }

    public void O0(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        R0(charSequence, str, false, true, phoneNumber);
    }

    public int P(Phonenumber.PhoneNumber phoneNumber) {
        Phonenumber.PhoneNumber phoneNumber2;
        if (phoneNumber.hasExtension()) {
            phoneNumber2 = new Phonenumber.PhoneNumber();
            phoneNumber2.mergeFrom(phoneNumber);
            phoneNumber2.clearExtension();
        } else {
            phoneNumber2 = phoneNumber;
        }
        String[] split = Y.split(q(phoneNumber2, PhoneNumberFormat.INTERNATIONAL));
        if (split.length <= 3) {
            return 0;
        }
        if (W(phoneNumber) == PhoneNumberType.MOBILE && !H(phoneNumber.getCountryCode()).equals("")) {
            return split[2].length() + split[3].length();
        }
        return split[2].length();
    }

    public Phonenumber.PhoneNumber P0(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        Q0(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata Q(int i4) {
        if (this.f35544b.containsKey(Integer.valueOf(i4))) {
            return this.f35543a.b(i4);
        }
        return null;
    }

    public void Q0(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        R0(charSequence, str, true, true, phoneNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata R(String str) {
        if (B0(str)) {
            return this.f35543a.a(str);
        }
        return null;
    }

    public String T(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.isItalianLeadingZero() && phoneNumber.getNumberOfLeadingZeros() > 0) {
            char[] cArr = new char[phoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.getNationalNumber());
        return sb.toString();
    }

    public String U(String str, boolean z9) {
        Phonemetadata.PhoneMetadata R2 = R(str);
        if (R2 == null) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid or missing region code (");
            if (str == null) {
                str = "null";
            }
            sb.append(str);
            sb.append(") provided.");
            logger.log(level, sb.toString());
            return null;
        }
        String nationalPrefix = R2.getNationalPrefix();
        if (nationalPrefix.length() == 0) {
            return null;
        }
        return z9 ? nationalPrefix.replace("~", "") : nationalPrefix;
    }

    Phonemetadata.PhoneNumberDesc V(Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        switch (b.f35564c[phoneNumberType.ordinal()]) {
            case 1:
                return phoneMetadata.getPremiumRate();
            case 2:
                return phoneMetadata.getTollFree();
            case 3:
                return phoneMetadata.getMobile();
            case 4:
            case 5:
                return phoneMetadata.getFixedLine();
            case 6:
                return phoneMetadata.getSharedCost();
            case 7:
                return phoneMetadata.getVoip();
            case 8:
                return phoneMetadata.getPersonalNumber();
            case 9:
                return phoneMetadata.getPager();
            case 10:
                return phoneMetadata.getUan();
            case 11:
                return phoneMetadata.getVoicemail();
            default:
                return phoneMetadata.getGeneralDesc();
        }
    }

    public PhoneNumberType W(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata S2 = S(phoneNumber.getCountryCode(), Z(phoneNumber));
        if (S2 == null) {
            return PhoneNumberType.UNKNOWN;
        }
        return X(T(phoneNumber), S2);
    }

    public String Y(int i4) {
        List<String> list = this.f35544b.get(Integer.valueOf(i4));
        return list == null ? f35530n : list.get(0);
    }

    public String Z(Phonenumber.PhoneNumber phoneNumber) {
        int countryCode = phoneNumber.getCountryCode();
        List<String> list = this.f35544b.get(Integer.valueOf(countryCode));
        if (list == null) {
            Logger logger = f35524h;
            Level level = Level.INFO;
            logger.log(level, "Missing/invalid country_code (" + countryCode + ")");
            return null;
        } else if (list.size() == 1) {
            return list.get(0);
        } else {
            return a0(phoneNumber, list);
        }
    }

    public boolean Z0(Phonenumber.PhoneNumber phoneNumber) {
        if (z0(phoneNumber)) {
            return true;
        }
        Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
        phoneNumber2.mergeFrom(phoneNumber);
        long nationalNumber = phoneNumber.getNationalNumber();
        do {
            nationalNumber /= 10;
            phoneNumber2.setNationalNumber(nationalNumber);
            if (y0(phoneNumber2) == ValidationResult.TOO_SHORT || nationalNumber == 0) {
                return false;
            }
        } while (!z0(phoneNumber2));
        phoneNumber.setNationalNumber(nationalNumber);
        return true;
    }

    public boolean b(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata R2 = R(Z(phoneNumber));
        if (R2 == null) {
            return true;
        }
        return !t0(T(phoneNumber), R2.getNoInternationalDialling());
    }

    public List<String> b0(int i4) {
        List<String> list = this.f35544b.get(Integer.valueOf(i4));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    public Set<Integer> c0() {
        return Collections.unmodifiableSet(this.f35544b.keySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.NumberFormat d(List<Phonemetadata.NumberFormat> list, String str) {
        for (Phonemetadata.NumberFormat numberFormat : list) {
            int leadingDigitsPatternCount = numberFormat.getLeadingDigitsPatternCount();
            if (leadingDigitsPatternCount == 0 || this.f35547e.b(numberFormat.getLeadingDigitsPattern(leadingDigitsPatternCount - 1)).matcher(str).lookingAt()) {
                if (this.f35547e.b(numberFormat.getPattern()).matcher(str).matches()) {
                    return numberFormat;
                }
            }
        }
        return null;
    }

    public Set<Integer> d0() {
        return Collections.unmodifiableSet(this.f35549g);
    }

    public Set<String> e0() {
        return Collections.unmodifiableSet(this.f35548f);
    }

    public Set<PhoneNumberType> g0(int i4) {
        Phonemetadata.PhoneMetadata Q2 = Q(i4);
        if (Q2 == null) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            logger.log(level, "Unknown country calling code for a non-geographical entity provided: " + i4);
            return Collections.unmodifiableSet(new TreeSet());
        }
        return f0(Q2);
    }

    public Set<PhoneNumberType> h0(String str) {
        if (!B0(str)) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + str);
            return Collections.unmodifiableSet(new TreeSet());
        }
        return f0(R(str));
    }

    public boolean k0(CharSequence charSequence) {
        if (C0(charSequence)) {
            StringBuilder sb = new StringBuilder(charSequence);
            F0(sb);
            return R.matcher(sb).matches();
        }
        return false;
    }

    public boolean l0(String str) {
        Phonemetadata.PhoneMetadata R2 = R(str);
        if (R2 == null) {
            Logger logger = f35524h;
            Level level = Level.WARNING;
            logger.log(level, "Invalid or unknown region code provided: " + str);
            return false;
        }
        return R2.getMobileNumberPortableRegion();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() != 0 && sb.charAt(0) != '0') {
            int length = sb.length();
            for (int i4 = 1; i4 <= 3 && i4 <= length; i4++) {
                int parseInt = Integer.parseInt(sb.substring(0, i4));
                if (this.f35544b.containsKey(Integer.valueOf(parseInt))) {
                    sb2.append(sb.substring(i4));
                    return parseInt;
                }
            }
        }
        return 0;
    }

    public boolean m0(String str) {
        return this.f35546d.contains(str);
    }

    public Iterable<h> o(CharSequence charSequence, String str) {
        return p(charSequence, str, Leniency.VALID, Long.MAX_VALUE);
    }

    public boolean o0(PhoneNumberType phoneNumberType, int i4) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f35535s.contains(Integer.valueOf(i4)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    public Iterable<h> p(CharSequence charSequence, String str, Leniency leniency, long j4) {
        return new a(charSequence, str, leniency, j4);
    }

    public boolean p0(Phonenumber.PhoneNumber phoneNumber) {
        return o0(W(phoneNumber), phoneNumber.getCountryCode());
    }

    public String q(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phoneNumber.getNationalNumber() == 0 && phoneNumber.hasRawInput()) {
            String rawInput = phoneNumber.getRawInput();
            if (rawInput.length() > 0) {
                return rawInput;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        r(phoneNumber, phoneNumberFormat, sb);
        return sb.toString();
    }

    public MatchType q0(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        Phonenumber.PhoneNumber f10 = f(phoneNumber);
        Phonenumber.PhoneNumber f11 = f(phoneNumber2);
        if (f10.hasExtension() && f11.hasExtension() && !f10.getExtension().equals(f11.getExtension())) {
            return MatchType.NO_MATCH;
        }
        int countryCode = f10.getCountryCode();
        int countryCode2 = f11.getCountryCode();
        if (countryCode != 0 && countryCode2 != 0) {
            if (f10.exactlySameAs(f11)) {
                return MatchType.EXACT_MATCH;
            }
            if (countryCode == countryCode2 && n0(f10, f11)) {
                return MatchType.SHORT_NSN_MATCH;
            }
            return MatchType.NO_MATCH;
        }
        f10.setCountryCode(countryCode2);
        if (f10.exactlySameAs(f11)) {
            return MatchType.NSN_MATCH;
        }
        if (n0(f10, f11)) {
            return MatchType.SHORT_NSN_MATCH;
        }
        return MatchType.NO_MATCH;
    }

    public void r(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        sb.setLength(0);
        int countryCode = phoneNumber.getCountryCode();
        String T2 = T(phoneNumber);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.E164;
        if (phoneNumberFormat == phoneNumberFormat2) {
            sb.append(T2);
            T0(countryCode, phoneNumberFormat2, sb);
        } else if (!j0(countryCode)) {
            sb.append(T2);
        } else {
            Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
            sb.append(w(T2, S2, phoneNumberFormat));
            D0(phoneNumber, S2, phoneNumberFormat, sb);
            T0(countryCode, phoneNumberFormat, sb);
        }
    }

    public MatchType r0(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        try {
            return q0(phoneNumber, N0(charSequence, f35530n));
        } catch (NumberParseException e4) {
            if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                String Y2 = Y(phoneNumber.getCountryCode());
                try {
                    if (!Y2.equals(f35530n)) {
                        MatchType q02 = q0(phoneNumber, N0(charSequence, Y2));
                        return q02 == MatchType.EXACT_MATCH ? MatchType.NSN_MATCH : q02;
                    }
                    Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                    R0(charSequence, null, false, false, phoneNumber2);
                    return q0(phoneNumber, phoneNumber2);
                } catch (NumberParseException unused) {
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }

    public String s(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, List<Phonemetadata.NumberFormat> list) {
        int countryCode = phoneNumber.getCountryCode();
        String T2 = T(phoneNumber);
        if (j0(countryCode)) {
            Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
            StringBuilder sb = new StringBuilder(20);
            Phonemetadata.NumberFormat d4 = d(list, T2);
            if (d4 == null) {
                sb.append(T2);
            } else {
                Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                newBuilder.mergeFrom(d4);
                String nationalPrefixFormattingRule = d4.getNationalPrefixFormattingRule();
                if (nationalPrefixFormattingRule.length() > 0) {
                    String nationalPrefix = S2.getNationalPrefix();
                    if (nationalPrefix.length() > 0) {
                        newBuilder.setNationalPrefixFormattingRule(nationalPrefixFormattingRule.replace(f35518a0, nationalPrefix).replace(f35519b0, "$1"));
                    } else {
                        newBuilder.clearNationalPrefixFormattingRule();
                    }
                }
                sb.append(y(T2, newBuilder.build(), phoneNumberFormat));
            }
            D0(phoneNumber, S2, phoneNumberFormat, sb);
            T0(countryCode, phoneNumberFormat, sb);
            return sb.toString();
        }
        return T2;
    }

    public MatchType s0(CharSequence charSequence, CharSequence charSequence2) {
        try {
            return r0(N0(charSequence, f35530n), charSequence2);
        } catch (NumberParseException e4) {
            if (e4.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                try {
                    return r0(N0(charSequence2, f35530n), charSequence);
                } catch (NumberParseException e10) {
                    if (e10.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                        try {
                            Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
                            Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                            R0(charSequence, null, false, false, phoneNumber);
                            R0(charSequence2, null, false, false, phoneNumber2);
                            return q0(phoneNumber, phoneNumber2);
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

    public String t(Phonenumber.PhoneNumber phoneNumber, String str) {
        String q9;
        String nationalPrefixFormattingRule;
        int indexOf;
        if (phoneNumber.hasRawInput() && !i0(phoneNumber)) {
            return phoneNumber.getRawInput();
        }
        if (!phoneNumber.hasCountryCodeSource()) {
            return q(phoneNumber, PhoneNumberFormat.NATIONAL);
        }
        int i4 = b.f35562a[phoneNumber.getCountryCodeSource().ordinal()];
        if (i4 == 1) {
            q9 = q(phoneNumber, PhoneNumberFormat.INTERNATIONAL);
        } else if (i4 == 2) {
            q9 = B(phoneNumber, str);
        } else if (i4 != 3) {
            String Y2 = Y(phoneNumber.getCountryCode());
            String U2 = U(Y2, true);
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
            q9 = q(phoneNumber, phoneNumberFormat);
            if (U2 != null && U2.length() != 0 && !U0(phoneNumber.getRawInput(), U2, Y2)) {
                Phonemetadata.NumberFormat d4 = d(R(Y2).getNumberFormatList(), T(phoneNumber));
                if (d4 != null && (indexOf = (nationalPrefixFormattingRule = d4.getNationalPrefixFormattingRule()).indexOf("$1")) > 0 && L0(nationalPrefixFormattingRule.substring(0, indexOf)).length() != 0) {
                    Phonemetadata.NumberFormat.Builder newBuilder = Phonemetadata.NumberFormat.newBuilder();
                    newBuilder.mergeFrom(d4);
                    newBuilder.clearNationalPrefixFormattingRule();
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(newBuilder.build());
                    q9 = s(phoneNumber, phoneNumberFormat, arrayList);
                }
            }
        } else {
            q9 = q(phoneNumber, PhoneNumberFormat.INTERNATIONAL).substring(1);
        }
        String rawInput = phoneNumber.getRawInput();
        return (q9 == null || rawInput.length() <= 0 || J0(q9).equals(J0(rawInput))) ? q9 : rawInput;
    }

    boolean t0(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        int length = str.length();
        List<Integer> possibleLengthList = phoneNumberDesc.getPossibleLengthList();
        if (possibleLengthList.size() <= 0 || possibleLengthList.contains(Integer.valueOf(length))) {
            return this.f35545c.a(str, phoneNumberDesc, false);
        }
        return false;
    }

    public String u(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        int countryCode = phoneNumber.getCountryCode();
        String T2 = T(phoneNumber);
        if (j0(countryCode)) {
            Phonemetadata.PhoneMetadata S2 = S(countryCode, Y(countryCode));
            StringBuilder sb = new StringBuilder(20);
            PhoneNumberFormat phoneNumberFormat = PhoneNumberFormat.NATIONAL;
            sb.append(x(T2, S2, phoneNumberFormat, charSequence));
            D0(phoneNumber, S2, phoneNumberFormat, sb);
            T0(countryCode, phoneNumberFormat, sb);
            return sb.toString();
        }
        return T2;
    }

    public boolean u0(Phonenumber.PhoneNumber phoneNumber) {
        ValidationResult y02 = y0(phoneNumber);
        return y02 == ValidationResult.IS_POSSIBLE || y02 == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    public String v(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        if (phoneNumber.getPreferredDomesticCarrierCode().length() > 0) {
            charSequence = phoneNumber.getPreferredDomesticCarrierCode();
        }
        return u(phoneNumber, charSequence);
    }

    public boolean v0(CharSequence charSequence, String str) {
        try {
            return u0(N0(charSequence, str));
        } catch (NumberParseException unused) {
            return false;
        }
    }

    public boolean w0(Phonenumber.PhoneNumber phoneNumber, PhoneNumberType phoneNumberType) {
        ValidationResult x02 = x0(phoneNumber, phoneNumberType);
        return x02 == ValidationResult.IS_POSSIBLE || x02 == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    public ValidationResult x0(Phonenumber.PhoneNumber phoneNumber, PhoneNumberType phoneNumberType) {
        String T2 = T(phoneNumber);
        int countryCode = phoneNumber.getCountryCode();
        if (!j0(countryCode)) {
            return ValidationResult.INVALID_COUNTRY_CODE;
        }
        return Y0(T2, S(countryCode, Y(countryCode)), phoneNumberType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String y(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat) {
        return z(str, numberFormat, phoneNumberFormat, null);
    }

    public ValidationResult y0(Phonenumber.PhoneNumber phoneNumber) {
        return x0(phoneNumber, PhoneNumberType.UNKNOWN);
    }

    public boolean z0(Phonenumber.PhoneNumber phoneNumber) {
        return A0(phoneNumber, Z(phoneNumber));
    }
}
