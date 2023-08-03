package shaded.org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

/* compiled from: Languages.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final String f93573b = "any";

    /* renamed from: c  reason: collision with root package name */
    private static final Map<NameType, c> f93574c = new EnumMap(NameType.class);

    /* renamed from: d  reason: collision with root package name */
    public static final AbstractC0840c f93575d;

    /* renamed from: e  reason: collision with root package name */
    public static final AbstractC0840c f93576e;

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f93577a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Languages.java */
    /* loaded from: classes5.dex */
    public static class a extends AbstractC0840c {
        a() {
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean a(String str) {
            return false;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public String c() {
            throw new NoSuchElementException("Can't fetch any language from the empty language set.");
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean d() {
            return true;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean e() {
            return false;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c f(AbstractC0840c abstractC0840c) {
            return abstractC0840c;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c g(AbstractC0840c abstractC0840c) {
            return this;
        }

        public String toString() {
            return "NO_LANGUAGES";
        }
    }

    /* compiled from: Languages.java */
    /* loaded from: classes5.dex */
    static class b extends AbstractC0840c {
        b() {
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean a(String str) {
            return true;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public String c() {
            throw new NoSuchElementException("Can't fetch any language from the any language set.");
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean d() {
            return false;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean e() {
            return false;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c f(AbstractC0840c abstractC0840c) {
            return abstractC0840c;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c g(AbstractC0840c abstractC0840c) {
            return abstractC0840c;
        }

        public String toString() {
            return "ANY_LANGUAGE";
        }
    }

    /* compiled from: Languages.java */
    /* renamed from: shaded.org.apache.commons.codec.language.bm.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC0840c {
        public static AbstractC0840c b(Set<String> set) {
            return set.isEmpty() ? c.f93575d : new d(set, null);
        }

        public abstract boolean a(String str);

        public abstract String c();

        public abstract boolean d();

        public abstract boolean e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract AbstractC0840c f(AbstractC0840c abstractC0840c);

        public abstract AbstractC0840c g(AbstractC0840c abstractC0840c);
    }

    /* compiled from: Languages.java */
    /* loaded from: classes5.dex */
    public static final class d extends AbstractC0840c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f93578a;

        /* synthetic */ d(Set set, a aVar) {
            this(set);
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean a(String str) {
            return this.f93578a.contains(str);
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public String c() {
            return this.f93578a.iterator().next();
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean d() {
            return this.f93578a.isEmpty();
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public boolean e() {
            return this.f93578a.size() == 1;
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c f(AbstractC0840c abstractC0840c) {
            if (abstractC0840c == c.f93575d) {
                return this;
            }
            if (abstractC0840c == c.f93576e) {
                return abstractC0840c;
            }
            HashSet hashSet = new HashSet(this.f93578a);
            for (String str : ((d) abstractC0840c).f93578a) {
                hashSet.add(str);
            }
            return AbstractC0840c.b(hashSet);
        }

        @Override // shaded.org.apache.commons.codec.language.bm.c.AbstractC0840c
        public AbstractC0840c g(AbstractC0840c abstractC0840c) {
            if (abstractC0840c == c.f93575d) {
                return abstractC0840c;
            }
            if (abstractC0840c == c.f93576e) {
                return this;
            }
            d dVar = (d) abstractC0840c;
            HashSet hashSet = new HashSet(Math.min(this.f93578a.size(), dVar.f93578a.size()));
            for (String str : this.f93578a) {
                if (dVar.f93578a.contains(str)) {
                    hashSet.add(str);
                }
            }
            return AbstractC0840c.b(hashSet);
        }

        public Set<String> h() {
            return this.f93578a;
        }

        public String toString() {
            return "Languages(" + this.f93578a.toString() + ")";
        }

        private d(Set<String> set) {
            this.f93578a = Collections.unmodifiableSet(set);
        }
    }

    static {
        NameType[] values;
        for (NameType nameType : NameType.values()) {
            f93574c.put(nameType, a(d(nameType)));
        }
        f93575d = new a();
        f93576e = new b();
    }

    private c(Set<String> set) {
        this.f93577a = set;
    }

    public static c a(String str) {
        HashSet hashSet = new HashSet();
        InputStream resourceAsStream = c.class.getClassLoader().getResourceAsStream(str);
        if (resourceAsStream != null) {
            Scanner scanner = new Scanner(resourceAsStream, "UTF-8");
            while (true) {
                boolean z9 = false;
                while (scanner.hasNextLine()) {
                    try {
                        String trim = scanner.nextLine().trim();
                        if (z9) {
                            if (trim.endsWith("*/")) {
                                break;
                            }
                        } else if (trim.startsWith("/*")) {
                            z9 = true;
                        } else if (trim.length() > 0) {
                            hashSet.add(trim);
                        }
                    } catch (Throwable th) {
                        scanner.close();
                        throw th;
                    }
                }
                scanner.close();
                return new c(Collections.unmodifiableSet(hashSet));
            }
        }
        throw new IllegalArgumentException("Unable to resolve required resource: " + str);
    }

    public static c b(NameType nameType) {
        return f93574c.get(nameType);
    }

    private static String d(NameType nameType) {
        return String.format("shaded/org/apache/commons/codec/language/bm/%s_languages.txt", nameType.getName());
    }

    public Set<String> c() {
        return this.f93577a;
    }
}
