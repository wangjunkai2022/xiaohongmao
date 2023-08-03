package shaded.org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
import shaded.org.apache.commons.codec.language.bm.c;

/* compiled from: Rule.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: f  reason: collision with root package name */
    public static final String f93599f = "ALL";

    /* renamed from: g  reason: collision with root package name */
    private static final String f93600g = "\"";

    /* renamed from: h  reason: collision with root package name */
    private static final String f93601h = "#include";

    /* renamed from: a  reason: collision with root package name */
    private final n f93603a;

    /* renamed from: b  reason: collision with root package name */
    private final String f93604b;

    /* renamed from: c  reason: collision with root package name */
    private final l f93605c;

    /* renamed from: d  reason: collision with root package name */
    private final n f93606d;

    /* renamed from: e  reason: collision with root package name */
    public static final n f93598e = new b();

    /* renamed from: i  reason: collision with root package name */
    private static final Map<NameType, Map<RuleType, Map<String, Map<String, List<f>>>>> f93602i = new EnumMap(NameType.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class a implements n {

        /* renamed from: a  reason: collision with root package name */
        Pattern f93607a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f93608b;

        a(String str) {
            this.f93608b = str;
            this.f93607a = Pattern.compile(str);
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return this.f93607a.matcher(charSequence).find();
        }
    }

    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    static class b implements n {
        b() {
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class c extends f {

        /* renamed from: j  reason: collision with root package name */
        private final int f93609j;

        /* renamed from: k  reason: collision with root package name */
        private final String f93610k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ int f93611l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f93612m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f93613n;

        /* renamed from: o  reason: collision with root package name */
        final /* synthetic */ String f93614o;

        /* renamed from: p  reason: collision with root package name */
        final /* synthetic */ String f93615p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, String str2, String str3, l lVar, int i4, String str4, String str5, String str6, String str7) {
            super(str, str2, str3, lVar);
            this.f93611l = i4;
            this.f93612m = str4;
            this.f93613n = str5;
            this.f93614o = str6;
            this.f93615p = str7;
            this.f93609j = i4;
            this.f93610k = str4;
        }

        public String toString() {
            return "Rule{line=" + this.f93609j + ", loc='" + this.f93610k + "', pat='" + this.f93613n + "', lcon='" + this.f93614o + "', rcon='" + this.f93615p + "'}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class d implements n {
        d() {
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class e implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93616a;

        e(String str) {
            this.f93616a = str;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return charSequence.equals(this.f93616a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* renamed from: shaded.org.apache.commons.codec.language.bm.f$f  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0841f implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93617a;

        C0841f(String str) {
            this.f93617a = str;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return f.v(charSequence, this.f93617a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class g implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93618a;

        g(String str) {
            this.f93618a = str;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return f.h(charSequence, this.f93618a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class h implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93619a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f93620b;

        h(String str, boolean z9) {
            this.f93619a = str;
            this.f93620b = z9;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return charSequence.length() == 1 && f.d(this.f93619a, charSequence.charAt(0)) == this.f93620b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class i implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f93622b;

        i(String str, boolean z9) {
            this.f93621a = str;
            this.f93622b = z9;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return charSequence.length() > 0 && f.d(this.f93621a, charSequence.charAt(0)) == this.f93622b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static class j implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f93623a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f93624b;

        j(String str, boolean z9) {
            this.f93623a = str;
            this.f93624b = z9;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.n
        public boolean a(CharSequence charSequence) {
            return charSequence.length() > 0 && f.d(this.f93623a, charSequence.charAt(charSequence.length() - 1)) == this.f93624b;
        }
    }

    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public interface l {
        Iterable<k> a();
    }

    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static final class m implements l {

        /* renamed from: a  reason: collision with root package name */
        private final List<k> f93628a;

        public m(List<k> list) {
            this.f93628a = list;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.l
        /* renamed from: b */
        public List<k> a() {
            return this.f93628a;
        }
    }

    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public interface n {
        boolean a(CharSequence charSequence);
    }

    static {
        NameType[] values;
        RuleType[] values2;
        for (NameType nameType : NameType.values()) {
            EnumMap enumMap = new EnumMap(RuleType.class);
            for (RuleType ruleType : RuleType.values()) {
                HashMap hashMap = new HashMap();
                for (String str : shaded.org.apache.commons.codec.language.bm.c.b(nameType).c()) {
                    try {
                        try {
                            hashMap.put(str, s(g(nameType, ruleType, str), e(nameType, ruleType, str)));
                        } finally {
                        }
                    } catch (IllegalStateException e4) {
                        throw new IllegalStateException("Problem processing " + e(nameType, ruleType, str), e4);
                    }
                }
                if (!ruleType.equals(RuleType.RULES)) {
                    try {
                        hashMap.put("common", s(g(nameType, ruleType, "common"), e(nameType, ruleType, "common")));
                    } finally {
                    }
                }
                enumMap.put((EnumMap) ruleType, (RuleType) Collections.unmodifiableMap(hashMap));
            }
            f93602i.put(nameType, Collections.unmodifiableMap(enumMap));
        }
    }

    public f(String str, String str2, String str3, l lVar) {
        this.f93604b = str;
        this.f93603a = t(str2 + "$");
        this.f93606d = t("^" + str3);
        this.f93605c = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(CharSequence charSequence, char c10) {
        for (int i4 = 0; i4 < charSequence.length(); i4++) {
            if (charSequence.charAt(i4) == c10) {
                return true;
            }
        }
        return false;
    }

    private static String e(NameType nameType, RuleType ruleType, String str) {
        return String.format("shaded/org/apache/commons/codec/language/bm/%s_%s_%s.txt", nameType.getName(), ruleType.getName(), str);
    }

    private static Scanner f(String str) {
        String format = String.format("shaded/org/apache/commons/codec/language/bm/%s.txt", str);
        InputStream resourceAsStream = shaded.org.apache.commons.codec.language.bm.c.class.getClassLoader().getResourceAsStream(format);
        if (resourceAsStream != null) {
            return new Scanner(resourceAsStream, "UTF-8");
        }
        throw new IllegalArgumentException("Unable to load resource: " + format);
    }

    private static Scanner g(NameType nameType, RuleType ruleType, String str) {
        String e4 = e(nameType, ruleType, str);
        InputStream resourceAsStream = shaded.org.apache.commons.codec.language.bm.c.class.getClassLoader().getResourceAsStream(e4);
        if (resourceAsStream != null) {
            return new Scanner(resourceAsStream, "UTF-8");
        }
        throw new IllegalArgumentException("Unable to load resource: " + e4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        int length = charSequence.length() - 1;
        for (int length2 = charSequence2.length() - 1; length2 >= 0; length2--) {
            if (charSequence.charAt(length) != charSequence2.charAt(length2)) {
                return false;
            }
            length--;
        }
        return true;
    }

    public static List<f> i(NameType nameType, RuleType ruleType, String str) {
        return j(nameType, ruleType, c.AbstractC0840c.b(new HashSet(Arrays.asList(str))));
    }

    public static List<f> j(NameType nameType, RuleType ruleType, c.AbstractC0840c abstractC0840c) {
        Map<String, List<f>> l10 = l(nameType, ruleType, abstractC0840c);
        ArrayList arrayList = new ArrayList();
        for (List<f> list : l10.values()) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public static Map<String, List<f>> k(NameType nameType, RuleType ruleType, String str) {
        Map<String, List<f>> map = f93602i.get(nameType).get(ruleType).get(str);
        if (map != null) {
            return map;
        }
        throw new IllegalArgumentException(String.format("No rules found for %s, %s, %s.", nameType.getName(), ruleType.getName(), str));
    }

    public static Map<String, List<f>> l(NameType nameType, RuleType ruleType, c.AbstractC0840c abstractC0840c) {
        return abstractC0840c.e() ? k(nameType, ruleType, abstractC0840c.c()) : k(nameType, ruleType, shaded.org.apache.commons.codec.language.bm.c.f93573b);
    }

    private static k q(String str) {
        int indexOf = str.indexOf("[");
        if (indexOf >= 0) {
            if (str.endsWith("]")) {
                return new k(str.substring(0, indexOf), c.AbstractC0840c.b(new HashSet(Arrays.asList(str.substring(indexOf + 1, str.length() - 1).split("[+]")))));
            }
            throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
        }
        return new k(str, shaded.org.apache.commons.codec.language.bm.c.f93576e);
    }

    private static l r(String str) {
        if (str.startsWith("(")) {
            if (str.endsWith(")")) {
                ArrayList arrayList = new ArrayList();
                String substring = str.substring(1, str.length() - 1);
                for (String str2 : substring.split("[|]")) {
                    arrayList.add(q(str2));
                }
                if (substring.startsWith("|") || substring.endsWith("|")) {
                    arrayList.add(new k("", shaded.org.apache.commons.codec.language.bm.c.f93576e));
                }
                return new m(arrayList);
            }
            throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
        }
        return q(str);
    }

    private static Map<String, List<f>> s(Scanner scanner, String str) {
        String str2;
        String w9;
        String w10;
        String w11;
        HashMap hashMap = new HashMap();
        int i4 = 0;
        int i10 = 0;
        boolean z9 = false;
        while (scanner.hasNextLine()) {
            int i11 = i10 + 1;
            String nextLine = scanner.nextLine();
            if (z9) {
                if (nextLine.endsWith("*/")) {
                    z9 = false;
                    i10 = i11;
                    i4 = 0;
                }
                i10 = i11;
                i4 = 0;
            } else {
                if (nextLine.startsWith("/*")) {
                    z9 = true;
                } else {
                    int indexOf = nextLine.indexOf("//");
                    String trim = (indexOf >= 0 ? nextLine.substring(i4, indexOf) : nextLine).trim();
                    if (trim.length() == 0) {
                        i10 = i11;
                    } else if (trim.startsWith(f93601h)) {
                        String trim2 = trim.substring(8).trim();
                        if (!trim2.contains(" ")) {
                            Scanner f10 = f(trim2);
                            try {
                                hashMap.putAll(s(f10, str + "->" + trim2));
                            } finally {
                                f10.close();
                            }
                        } else {
                            throw new IllegalArgumentException("Malformed import statement '" + nextLine + "' in " + str);
                        }
                    } else {
                        String[] split = trim.split("\\s+");
                        if (split.length == 4) {
                            try {
                                w9 = w(split[i4]);
                                w10 = w(split[1]);
                                w11 = w(split[2]);
                                str2 = "' in ";
                            } catch (IllegalArgumentException e4) {
                                e = e4;
                                str2 = "' in ";
                            }
                            try {
                                c cVar = new c(w9, w10, w11, r(w(split[3])), i11, str, w9, w10, w11);
                                String substring = ((f) cVar).f93604b.substring(0, 1);
                                List list = (List) hashMap.get(substring);
                                if (list == null) {
                                    list = new ArrayList();
                                    hashMap.put(substring, list);
                                }
                                list.add(cVar);
                            } catch (IllegalArgumentException e10) {
                                e = e10;
                                throw new IllegalStateException("Problem parsing line '" + i11 + str2 + str, e);
                            }
                        } else {
                            throw new IllegalArgumentException("Malformed rule statement split into " + split.length + " parts: " + nextLine + " in " + str);
                        }
                    }
                }
                i10 = i11;
                i4 = 0;
            }
        }
        return hashMap;
    }

    private static n t(String str) {
        boolean startsWith = str.startsWith("^");
        boolean endsWith = str.endsWith("$");
        int length = str.length();
        if (endsWith) {
            length--;
        }
        String substring = str.substring(startsWith ? 1 : 0, length);
        if (substring.contains("[")) {
            boolean startsWith2 = substring.startsWith("[");
            boolean endsWith2 = substring.endsWith("]");
            if (startsWith2 && endsWith2) {
                String substring2 = substring.substring(1, substring.length() - 1);
                if (!substring2.contains("[")) {
                    boolean startsWith3 = substring2.startsWith("^");
                    if (startsWith3) {
                        substring2 = substring2.substring(1);
                    }
                    boolean z9 = !startsWith3;
                    if (startsWith && endsWith) {
                        return new h(substring2, z9);
                    }
                    if (startsWith) {
                        return new i(substring2, z9);
                    }
                    if (endsWith) {
                        return new j(substring2, z9);
                    }
                }
            }
        } else if (startsWith && endsWith) {
            if (substring.length() == 0) {
                return new d();
            }
            return new e(substring);
        } else if ((startsWith || endsWith) && substring.length() == 0) {
            return f93598e;
        } else {
            if (startsWith) {
                return new C0841f(substring);
            }
            if (endsWith) {
                return new g(substring);
            }
        }
        return new a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean v(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        for (int i4 = 0; i4 < charSequence2.length(); i4++) {
            if (charSequence.charAt(i4) != charSequence2.charAt(i4)) {
                return false;
            }
        }
        return true;
    }

    private static String w(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        return str.endsWith("\"") ? str.substring(0, str.length() - 1) : str;
    }

    public n m() {
        return this.f93603a;
    }

    public String n() {
        return this.f93604b;
    }

    public l o() {
        return this.f93605c;
    }

    public n p() {
        return this.f93606d;
    }

    public boolean u(CharSequence charSequence, int i4) {
        if (i4 >= 0) {
            int length = this.f93604b.length() + i4;
            if (length <= charSequence.length() && charSequence.subSequence(i4, length).equals(this.f93604b) && this.f93606d.a(charSequence.subSequence(length, charSequence.length()))) {
                return this.f93603a.a(charSequence.subSequence(0, i4));
            }
            return false;
        }
        throw new IndexOutOfBoundsException("Can not match pattern at negative indexes");
    }

    /* compiled from: Rule.java */
    /* loaded from: classes5.dex */
    public static final class k implements l {

        /* renamed from: c  reason: collision with root package name */
        public static final Comparator<k> f93625c = new a();

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f93626a;

        /* renamed from: b  reason: collision with root package name */
        private final c.AbstractC0840c f93627b;

        /* compiled from: Rule.java */
        /* loaded from: classes5.dex */
        static class a implements Comparator<k> {
            a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(k kVar, k kVar2) {
                for (int i4 = 0; i4 < kVar.f93626a.length(); i4++) {
                    if (i4 >= kVar2.f93626a.length()) {
                        return 1;
                    }
                    int charAt = kVar.f93626a.charAt(i4) - kVar2.f93626a.charAt(i4);
                    if (charAt != 0) {
                        return charAt;
                    }
                }
                return kVar.f93626a.length() < kVar2.f93626a.length() ? -1 : 0;
            }
        }

        public k(CharSequence charSequence, c.AbstractC0840c abstractC0840c) {
            this.f93626a = new StringBuilder(charSequence);
            this.f93627b = abstractC0840c;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.f.l
        public Iterable<k> a() {
            return Collections.singleton(this);
        }

        public k c(CharSequence charSequence) {
            this.f93626a.append(charSequence);
            return this;
        }

        public c.AbstractC0840c d() {
            return this.f93627b;
        }

        public CharSequence e() {
            return this.f93626a;
        }

        @Deprecated
        public k f(k kVar) {
            return new k(this.f93626a.toString() + kVar.f93626a.toString(), this.f93627b.g(kVar.f93627b));
        }

        public k g(c.AbstractC0840c abstractC0840c) {
            return new k(this.f93626a.toString(), this.f93627b.f(abstractC0840c));
        }

        public String toString() {
            return this.f93626a.toString() + "[" + this.f93627b + "]";
        }

        public k(k kVar, k kVar2) {
            this(kVar.f93626a, kVar.f93627b);
            this.f93626a.append((CharSequence) kVar2.f93626a);
        }

        public k(k kVar, k kVar2, c.AbstractC0840c abstractC0840c) {
            this(kVar.f93626a, abstractC0840c);
            this.f93626a.append((CharSequence) kVar2.f93626a);
        }
    }
}
