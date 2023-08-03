package shaded.org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import shaded.org.apache.commons.codec.language.bm.c;

/* compiled from: Lang.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<NameType, b> f93566c = new EnumMap(NameType.class);

    /* renamed from: d  reason: collision with root package name */
    private static final String f93567d = "shaded/org/apache/commons/codec/language/bm/%s_lang.txt";

    /* renamed from: a  reason: collision with root package name */
    private final c f93568a;

    /* renamed from: b  reason: collision with root package name */
    private final List<C0839b> f93569b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Lang.java */
    /* renamed from: shaded.org.apache.commons.codec.language.bm.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0839b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f93570a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<String> f93571b;

        /* renamed from: c  reason: collision with root package name */
        private final Pattern f93572c;

        public boolean c(String str) {
            return this.f93572c.matcher(str).find();
        }

        private C0839b(Pattern pattern, Set<String> set, boolean z9) {
            this.f93572c = pattern;
            this.f93571b = set;
            this.f93570a = z9;
        }
    }

    static {
        NameType[] values;
        for (NameType nameType : NameType.values()) {
            f93566c.put(nameType, d(String.format(f93567d, nameType.getName()), c.b(nameType)));
        }
    }

    private b(List<C0839b> list, c cVar) {
        this.f93569b = Collections.unmodifiableList(list);
        this.f93568a = cVar;
    }

    public static b c(NameType nameType) {
        return f93566c.get(nameType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00aa, code lost:
        throw new java.lang.IllegalArgumentException("Malformed line '" + r4 + "' in language resource '" + r9 + "'");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static shaded.org.apache.commons.codec.language.bm.b d(java.lang.String r9, shaded.org.apache.commons.codec.language.bm.c r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Class<shaded.org.apache.commons.codec.language.bm.b> r1 = shaded.org.apache.commons.codec.language.bm.b.class
            java.lang.ClassLoader r1 = r1.getClassLoader()
            java.io.InputStream r1 = r1.getResourceAsStream(r9)
            if (r1 == 0) goto Lb9
            java.util.Scanner r2 = new java.util.Scanner
            java.lang.String r3 = "UTF-8"
            r2.<init>(r1, r3)
            r1 = 0
        L19:
            r3 = 0
        L1a:
            boolean r4 = r2.hasNextLine()     // Catch: java.lang.Throwable -> Lb4
            if (r4 == 0) goto Lab
            java.lang.String r4 = r2.nextLine()     // Catch: java.lang.Throwable -> Lb4
            r5 = 1
            if (r3 == 0) goto L30
        */
        //  java.lang.String r5 = "*/"
        /*
            boolean r4 = r4.endsWith(r5)     // Catch: java.lang.Throwable -> Lb4
            if (r4 == 0) goto L1a
            goto L19
        L30:
            java.lang.String r6 = "/*"
            boolean r6 = r4.startsWith(r6)     // Catch: java.lang.Throwable -> Lb4
            if (r6 == 0) goto L3a
            r3 = 1
            goto L1a
        L3a:
            java.lang.String r6 = "//"
            int r6 = r4.indexOf(r6)     // Catch: java.lang.Throwable -> Lb4
            if (r6 < 0) goto L47
            java.lang.String r6 = r4.substring(r1, r6)     // Catch: java.lang.Throwable -> Lb4
            goto L48
        L47:
            r6 = r4
        L48:
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Lb4
            int r7 = r6.length()     // Catch: java.lang.Throwable -> Lb4
            if (r7 != 0) goto L53
            goto L1a
        L53:
            java.lang.String r7 = "\\s+"
            java.lang.String[] r6 = r6.split(r7)     // Catch: java.lang.Throwable -> Lb4
            int r7 = r6.length     // Catch: java.lang.Throwable -> Lb4
            r8 = 3
            if (r7 != r8) goto L87
            r4 = r6[r1]     // Catch: java.lang.Throwable -> Lb4
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Throwable -> Lb4
            r5 = r6[r5]     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r7 = "\\+"
            java.lang.String[] r5 = r5.split(r7)     // Catch: java.lang.Throwable -> Lb4
            r7 = 2
            r6 = r6[r7]     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r7 = "true"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> Lb4
            shaded.org.apache.commons.codec.language.bm.b$b r7 = new shaded.org.apache.commons.codec.language.bm.b$b     // Catch: java.lang.Throwable -> Lb4
            java.util.HashSet r8 = new java.util.HashSet     // Catch: java.lang.Throwable -> Lb4
            java.util.List r5 = java.util.Arrays.asList(r5)     // Catch: java.lang.Throwable -> Lb4
            r8.<init>(r5)     // Catch: java.lang.Throwable -> Lb4
            r5 = 0
            r7.<init>(r4, r8, r6)     // Catch: java.lang.Throwable -> Lb4
            r0.add(r7)     // Catch: java.lang.Throwable -> Lb4
            goto L1a
        L87:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lb4
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb4
            r0.<init>()     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r1 = "Malformed line '"
            r0.append(r1)     // Catch: java.lang.Throwable -> Lb4
            r0.append(r4)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r1 = "' in language resource '"
            r0.append(r1)     // Catch: java.lang.Throwable -> Lb4
            r0.append(r9)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r9 = "'"
            r0.append(r9)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r9 = r0.toString()     // Catch: java.lang.Throwable -> Lb4
            r10.<init>(r9)     // Catch: java.lang.Throwable -> Lb4
            throw r10     // Catch: java.lang.Throwable -> Lb4
        Lab:
            r2.close()
            shaded.org.apache.commons.codec.language.bm.b r9 = new shaded.org.apache.commons.codec.language.bm.b
            r9.<init>(r0, r10)
            return r9
        Lb4:
            r9 = move-exception
            r2.close()
            throw r9
        Lb9:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Unable to resolve required resource:org/apache/commons/codec/language/bm/%s_lang.txt"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: shaded.org.apache.commons.codec.language.bm.b.d(java.lang.String, shaded.org.apache.commons.codec.language.bm.c):shaded.org.apache.commons.codec.language.bm.b");
    }

    public String a(String str) {
        c.AbstractC0840c b10 = b(str);
        return b10.e() ? b10.c() : c.f93573b;
    }

    public c.AbstractC0840c b(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        HashSet hashSet = new HashSet(this.f93568a.c());
        for (C0839b c0839b : this.f93569b) {
            if (c0839b.c(lowerCase)) {
                if (c0839b.f93570a) {
                    hashSet.retainAll(c0839b.f93571b);
                } else {
                    hashSet.removeAll(c0839b.f93571b);
                }
            }
        }
        c.AbstractC0840c b10 = c.AbstractC0840c.b(hashSet);
        return b10.equals(c.f93575d) ? c.f93576e : b10;
    }
}
