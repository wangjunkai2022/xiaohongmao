package shaded.org.apache.commons.codec.language;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: DaitchMokotoffSoundex.java */
/* loaded from: classes5.dex */
public class f implements h9.h {

    /* renamed from: b  reason: collision with root package name */
    private static final String f93646b = "//";

    /* renamed from: c  reason: collision with root package name */
    private static final String f93647c = "\"";

    /* renamed from: d  reason: collision with root package name */
    private static final String f93648d = "*/";

    /* renamed from: e  reason: collision with root package name */
    private static final String f93649e = "/*";

    /* renamed from: f  reason: collision with root package name */
    private static final String f93650f = "shaded/org/apache/commons/codec/language/dmrules.txt";

    /* renamed from: g  reason: collision with root package name */
    private static final int f93651g = 6;

    /* renamed from: h  reason: collision with root package name */
    private static final Map<Character, List<c>> f93652h;

    /* renamed from: i  reason: collision with root package name */
    private static final Map<Character, Character> f93653i;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f93654a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DaitchMokotoffSoundex.java */
    /* loaded from: classes5.dex */
    public static class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(c cVar, c cVar2) {
            return cVar2.b() - cVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaitchMokotoffSoundex.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f93655a;

        /* renamed from: b  reason: collision with root package name */
        private String f93656b;

        /* renamed from: c  reason: collision with root package name */
        private String f93657c;

        /* synthetic */ b(a aVar) {
            this();
        }

        public b a() {
            b bVar = new b();
            bVar.f93655a.append(toString());
            bVar.f93657c = this.f93657c;
            return bVar;
        }

        public void b() {
            while (this.f93655a.length() < 6) {
                this.f93655a.append('0');
                this.f93656b = null;
            }
        }

        public void c(String str, boolean z9) {
            String str2 = this.f93657c;
            if ((str2 == null || !str2.endsWith(str) || z9) && this.f93655a.length() < 6) {
                this.f93655a.append(str);
                if (this.f93655a.length() > 6) {
                    StringBuilder sb = this.f93655a;
                    sb.delete(6, sb.length());
                }
                this.f93656b = null;
            }
            this.f93657c = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return toString().equals(((b) obj).toString());
            }
            return false;
        }

        public int hashCode() {
            return toString().hashCode();
        }

        public String toString() {
            if (this.f93656b == null) {
                this.f93656b = this.f93655a.toString();
            }
            return this.f93656b;
        }

        private b() {
            this.f93655a = new StringBuilder();
            this.f93657c = null;
            this.f93656b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaitchMokotoffSoundex.java */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f93658a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f93659b;

        /* renamed from: c  reason: collision with root package name */
        private final String[] f93660c;

        /* renamed from: d  reason: collision with root package name */
        private final String[] f93661d;

        protected c(String str, String str2, String str3, String str4) {
            this.f93658a = str;
            this.f93659b = str2.split("\\|");
            this.f93660c = str3.split("\\|");
            this.f93661d = str4.split("\\|");
        }

        private boolean d(char c10) {
            return c10 == 'a' || c10 == 'e' || c10 == 'i' || c10 == 'o' || c10 == 'u';
        }

        public int b() {
            return this.f93658a.length();
        }

        public String[] c(String str, boolean z9) {
            if (z9) {
                return this.f93659b;
            }
            int b10 = b();
            if (b10 < str.length() ? d(str.charAt(b10)) : false) {
                return this.f93660c;
            }
            return this.f93661d;
        }

        public boolean e(String str) {
            return str.startsWith(this.f93658a);
        }

        public String toString() {
            return String.format("%s=(%s,%s,%s)", this.f93658a, Arrays.asList(this.f93659b), Arrays.asList(this.f93660c), Arrays.asList(this.f93661d));
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f93652h = hashMap;
        HashMap hashMap2 = new HashMap();
        f93653i = hashMap2;
        InputStream resourceAsStream = f.class.getClassLoader().getResourceAsStream(f93650f);
        if (resourceAsStream != null) {
            Scanner scanner = new Scanner(resourceAsStream, "UTF-8");
            try {
                d(scanner, f93650f, hashMap, hashMap2);
                scanner.close();
                for (Map.Entry entry : hashMap.entrySet()) {
                    Collections.sort((List) entry.getValue(), new a());
                }
                return;
            } catch (Throwable th) {
                scanner.close();
                throw th;
            }
        }
        throw new IllegalArgumentException("Unable to load resource: org/apache/commons/codec/language/dmrules.txt");
    }

    public f() {
        this(true);
    }

    private String b(String str) {
        char[] charArray;
        StringBuilder sb = new StringBuilder();
        for (char c10 : str.toCharArray()) {
            if (!Character.isWhitespace(c10)) {
                char lowerCase = Character.toLowerCase(c10);
                if (this.f93654a) {
                    Map<Character, Character> map = f93653i;
                    if (map.containsKey(Character.valueOf(lowerCase))) {
                        lowerCase = map.get(Character.valueOf(lowerCase)).charValue();
                    }
                }
                sb.append(lowerCase);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
        throw new java.lang.IllegalArgumentException("Malformed folding statement - patterns are not single characters: " + r4 + " in " + r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void d(java.util.Scanner r11, java.lang.String r12, java.util.Map<java.lang.Character, java.util.List<shaded.org.apache.commons.codec.language.f.c>> r13, java.util.Map<java.lang.Character, java.lang.Character> r14) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: shaded.org.apache.commons.codec.language.f.d(java.util.Scanner, java.lang.String, java.util.Map, java.util.Map):void");
    }

    private String[] g(String str, boolean z9) {
        String str2;
        int i4;
        String str3;
        if (str == null) {
            return null;
        }
        String b10 = b(str);
        LinkedHashSet<b> linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new b(null));
        int i10 = 0;
        char c10 = 0;
        while (i10 < b10.length()) {
            char charAt = b10.charAt(i10);
            if (!Character.isWhitespace(charAt)) {
                String substring = b10.substring(i10);
                List<c> list = f93652h.get(Character.valueOf(charAt));
                if (list != null) {
                    List arrayList = z9 ? new ArrayList() : Collections.EMPTY_LIST;
                    Iterator<c> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str2 = b10;
                            i4 = 1;
                            break;
                        }
                        c next = it.next();
                        if (next.e(substring)) {
                            if (z9) {
                                arrayList.clear();
                            }
                            String[] c11 = next.c(substring, c10 == 0);
                            boolean z10 = c11.length > 1 && z9;
                            for (b bVar : linkedHashSet) {
                                int length = c11.length;
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= length) {
                                        str3 = b10;
                                        break;
                                    }
                                    String str4 = c11[i11];
                                    b a10 = z10 ? bVar.a() : bVar;
                                    str3 = b10;
                                    a10.c(str4, (c10 == 'm' && charAt == 'n') || (c10 == 'n' && charAt == 'm'));
                                    if (z9) {
                                        arrayList.add(a10);
                                        i11++;
                                        b10 = str3;
                                    }
                                }
                                b10 = str3;
                            }
                            str2 = b10;
                            if (z9) {
                                linkedHashSet.clear();
                                linkedHashSet.addAll(arrayList);
                            }
                            i4 = 1;
                            i10 += next.b() - 1;
                        }
                    }
                    c10 = charAt;
                    i10 += i4;
                    b10 = str2;
                }
            }
            str2 = b10;
            i4 = 1;
            i10 += i4;
            b10 = str2;
        }
        String[] strArr = new String[linkedHashSet.size()];
        int i12 = 0;
        for (b bVar2 : linkedHashSet) {
            bVar2.b();
            strArr[i12] = bVar2.toString();
            i12++;
        }
        return strArr;
    }

    private static String h(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        return str.endsWith("\"") ? str.substring(0, str.length() - 1) : str;
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return c((String) obj);
        }
        throw new EncoderException("Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String");
    }

    @Override // h9.h
    public String c(String str) {
        if (str == null) {
            return null;
        }
        return g(str, false)[0];
    }

    public String f(String str) {
        String[] g4 = g(str, true);
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        for (String str2 : g4) {
            sb.append(str2);
            i4++;
            if (i4 < g4.length) {
                sb.append('|');
            }
        }
        return sb.toString();
    }

    public f(boolean z9) {
        this.f93654a = z9;
    }
}
