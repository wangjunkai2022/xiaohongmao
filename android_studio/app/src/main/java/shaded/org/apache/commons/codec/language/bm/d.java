package shaded.org.apache.commons.codec.language.bm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import shaded.org.apache.commons.codec.language.bm.c;
import shaded.org.apache.commons.codec.language.bm.f;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: PhoneticEngine.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: f  reason: collision with root package name */
    private static final Map<NameType, Set<String>> f93579f;

    /* renamed from: g  reason: collision with root package name */
    private static final int f93580g = 20;

    /* renamed from: a  reason: collision with root package name */
    private final shaded.org.apache.commons.codec.language.bm.b f93581a;

    /* renamed from: b  reason: collision with root package name */
    private final NameType f93582b;

    /* renamed from: c  reason: collision with root package name */
    private final RuleType f93583c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f93584d;

    /* renamed from: e  reason: collision with root package name */
    private final int f93585e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhoneticEngine.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f93586a;

        static {
            int[] iArr = new int[NameType.values().length];
            f93586a = iArr;
            try {
                iArr[NameType.SEPHARDIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f93586a[NameType.ASHKENAZI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f93586a[NameType.GENERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhoneticEngine.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Set<f.k> f93587a;

        /* synthetic */ b(Set set, a aVar) {
            this(set);
        }

        public static b c(c.AbstractC0840c abstractC0840c) {
            return new b(new f.k("", abstractC0840c));
        }

        public void a(CharSequence charSequence) {
            for (f.k kVar : this.f93587a) {
                kVar.c(charSequence);
            }
        }

        public void b(f.l lVar, int i4) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(i4);
            loop0: for (f.k kVar : this.f93587a) {
                for (f.k kVar2 : lVar.a()) {
                    c.AbstractC0840c g4 = kVar.d().g(kVar2.d());
                    if (!g4.d()) {
                        f.k kVar3 = new f.k(kVar, kVar2, g4);
                        if (linkedHashSet.size() < i4) {
                            linkedHashSet.add(kVar3);
                            if (linkedHashSet.size() >= i4) {
                                break loop0;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            this.f93587a.clear();
            this.f93587a.addAll(linkedHashSet);
        }

        public Set<f.k> d() {
            return this.f93587a;
        }

        public String e() {
            StringBuilder sb = new StringBuilder();
            for (f.k kVar : this.f93587a) {
                if (sb.length() > 0) {
                    sb.append("|");
                }
                sb.append(kVar.e());
            }
            return sb.toString();
        }

        private b(f.k kVar) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            this.f93587a = linkedHashSet;
            linkedHashSet.add(kVar);
        }

        private b(Set<f.k> set) {
            this.f93587a = set;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhoneticEngine.java */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, List<f>> f93588a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f93589b;

        /* renamed from: c  reason: collision with root package name */
        private final b f93590c;

        /* renamed from: d  reason: collision with root package name */
        private int f93591d;

        /* renamed from: e  reason: collision with root package name */
        private final int f93592e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f93593f;

        public c(Map<String, List<f>> map, CharSequence charSequence, b bVar, int i4, int i10) {
            Objects.requireNonNull(map, "The finalRules argument must not be null");
            this.f93588a = map;
            this.f93590c = bVar;
            this.f93589b = charSequence;
            this.f93591d = i4;
            this.f93592e = i10;
        }

        public int a() {
            return this.f93591d;
        }

        public b b() {
            return this.f93590c;
        }

        public c c() {
            int i4;
            this.f93593f = false;
            Map<String, List<f>> map = this.f93588a;
            CharSequence charSequence = this.f93589b;
            int i10 = this.f93591d;
            List<f> list = map.get(charSequence.subSequence(i10, i10 + 1));
            if (list != null) {
                Iterator<f> it = list.iterator();
                i4 = 1;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    f next = it.next();
                    int length = next.n().length();
                    if (next.u(this.f93589b, this.f93591d)) {
                        this.f93590c.b(next.o(), this.f93592e);
                        this.f93593f = true;
                        i4 = length;
                        break;
                    }
                    i4 = length;
                }
            } else {
                i4 = 1;
            }
            this.f93591d += this.f93593f ? i4 : 1;
            return this;
        }

        public boolean d() {
            return this.f93593f;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(NameType.class);
        f93579f = enumMap;
        enumMap.put((EnumMap) NameType.ASHKENAZI, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("bar", "ben", "da", "de", "van", "von"))));
        enumMap.put((EnumMap) NameType.SEPHARDIC, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("al", "el", "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
        enumMap.put((EnumMap) NameType.GENERIC, (NameType) Collections.unmodifiableSet(new HashSet(Arrays.asList("da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
    }

    public d(NameType nameType, RuleType ruleType, boolean z9) {
        this(nameType, ruleType, z9, 20);
    }

    private b a(b bVar, Map<String, List<f>> map) {
        Objects.requireNonNull(map, "finalRules can not be null");
        if (map.isEmpty()) {
            return bVar;
        }
        TreeMap treeMap = new TreeMap(f.k.f93625c);
        for (f.k kVar : bVar.d()) {
            b c10 = b.c(kVar.d());
            String charSequence = kVar.e().toString();
            b bVar2 = c10;
            int i4 = 0;
            while (i4 < charSequence.length()) {
                c c11 = new c(map, charSequence, bVar2, i4, this.f93585e).c();
                boolean d4 = c11.d();
                bVar2 = c11.b();
                if (!d4) {
                    bVar2.a(charSequence.subSequence(i4, i4 + 1));
                }
                i4 = c11.a();
            }
            for (f.k kVar2 : bVar2.d()) {
                if (treeMap.containsKey(kVar2)) {
                    f.k g4 = ((f.k) treeMap.remove(kVar2)).g(kVar2.d());
                    treeMap.put(g4, g4);
                } else {
                    treeMap.put(kVar2, kVar2);
                }
            }
        }
        return new b(treeMap.keySet(), null);
    }

    private static String i(Iterable<String> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = iterable.iterator();
        if (it.hasNext()) {
            sb.append(it.next());
        }
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public String b(String str) {
        return c(str, this.f93581a.b(str));
    }

    public String c(String str, c.AbstractC0840c abstractC0840c) {
        String str2;
        String substring;
        String substring2;
        Map<String, List<f>> l10 = f.l(this.f93582b, RuleType.RULES, abstractC0840c);
        Map<String, List<f>> k10 = f.k(this.f93582b, this.f93583c, "common");
        Map<String, List<f>> l11 = f.l(this.f93582b, this.f93583c, abstractC0840c);
        String trim = str.toLowerCase(Locale.ENGLISH).replace(l.f93713d, ' ').trim();
        if (this.f93582b == NameType.GENERIC) {
            if (trim.length() >= 2 && trim.substring(0, 2).equals("d'")) {
                String str3 = "d" + trim.substring(2);
                return "(" + b(substring2) + ")-(" + b(str3) + ")";
            }
            for (String str4 : f93579f.get(this.f93582b)) {
                if (trim.startsWith(str4 + " ")) {
                    String str5 = str4 + trim.substring(str4.length() + 1);
                    return "(" + b(substring) + ")-(" + b(str5) + ")";
                }
            }
        }
        List<String> asList = Arrays.asList(trim.split("\\s+"));
        ArrayList<String> arrayList = new ArrayList();
        int i4 = a.f93586a[this.f93582b.ordinal()];
        if (i4 == 1) {
            for (String str6 : asList) {
                String[] split = str6.split("'");
                arrayList.add(split[split.length - 1]);
            }
            arrayList.removeAll(f93579f.get(this.f93582b));
        } else if (i4 == 2) {
            arrayList.addAll(asList);
            arrayList.removeAll(f93579f.get(this.f93582b));
        } else if (i4 == 3) {
            arrayList.addAll(asList);
        } else {
            throw new IllegalStateException("Unreachable case: " + this.f93582b);
        }
        if (this.f93584d) {
            str2 = i(arrayList, " ");
        } else if (arrayList.size() == 1) {
            str2 = (String) asList.iterator().next();
        } else {
            StringBuilder sb = new StringBuilder();
            for (String str7 : arrayList) {
                sb.append("-");
                sb.append(b(str7));
            }
            return sb.substring(1);
        }
        b c10 = b.c(abstractC0840c);
        int i10 = 0;
        while (i10 < str2.length()) {
            c c11 = new c(l10, str2, c10, i10, this.f93585e).c();
            i10 = c11.a();
            c10 = c11.b();
        }
        return a(a(c10, k10), l11).e();
    }

    public shaded.org.apache.commons.codec.language.bm.b d() {
        return this.f93581a;
    }

    public int e() {
        return this.f93585e;
    }

    public NameType f() {
        return this.f93582b;
    }

    public RuleType g() {
        return this.f93583c;
    }

    public boolean h() {
        return this.f93584d;
    }

    public d(NameType nameType, RuleType ruleType, boolean z9, int i4) {
        RuleType ruleType2 = RuleType.RULES;
        if (ruleType != ruleType2) {
            this.f93582b = nameType;
            this.f93583c = ruleType;
            this.f93584d = z9;
            this.f93581a = shaded.org.apache.commons.codec.language.bm.b.c(nameType);
            this.f93585e = i4;
            return;
        }
        throw new IllegalArgumentException("ruleType must not be " + ruleType2);
    }
}
