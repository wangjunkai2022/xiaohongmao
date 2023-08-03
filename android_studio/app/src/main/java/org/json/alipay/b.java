package org.json.alipay;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final Object f91709b = new a((byte) 0);

    /* renamed from: a  reason: collision with root package name */
    private Map f91710a;

    /* loaded from: classes5.dex */
    private static final class a {
        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }

        protected final Object clone() {
            return this;
        }

        public final boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        public final String toString() {
            return "null";
        }
    }

    public b() {
        this.f91710a = new HashMap();
    }

    public b(String str) {
        this(new c(str));
    }

    public b(Map map) {
        this.f91710a = map == null ? new HashMap() : map;
    }

    public b(c cVar) {
        this();
        if (cVar.e() != '{') {
            throw cVar.b("A JSONObject text must begin with '{'");
        }
        while (true) {
            char e4 = cVar.e();
            if (e4 == 0) {
                throw cVar.b("A JSONObject text must end with '}'");
            }
            if (e4 == '}') {
                return;
            }
            cVar.c();
            String obj = cVar.f().toString();
            char e10 = cVar.e();
            if (e10 == '=') {
                if (cVar.d() != '>') {
                    cVar.c();
                }
            } else if (e10 != ':') {
                throw cVar.b("Expected a ':' after a key");
            }
            Object f10 = cVar.f();
            if (obj == null) {
                throw new JSONException("Null key.");
            }
            if (f10 != null) {
                d(f10);
                this.f91710a.put(obj, f10);
            } else {
                this.f91710a.remove(obj);
            }
            char e11 = cVar.e();
            if (e11 != ',' && e11 != ';') {
                if (e11 != '}') {
                    throw cVar.b("Expected a ',' or '}'");
                }
                return;
            } else if (cVar.e() == '}') {
                return;
            } else {
                cVar.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Object obj) {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (!(obj instanceof Number)) {
            return ((obj instanceof Boolean) || (obj instanceof b) || (obj instanceof org.json.alipay.a)) ? obj.toString() : obj instanceof Map ? new b((Map) obj).toString() : obj instanceof Collection ? new org.json.alipay.a((Collection) obj).toString() : obj.getClass().isArray() ? new org.json.alipay.a(obj).toString() : f(obj.toString());
        }
        Number number = (Number) obj;
        d(number);
        String obj2 = number.toString();
        if (obj2.indexOf(46) <= 0 || obj2.indexOf(101) >= 0 || obj2.indexOf(69) >= 0) {
            return obj2;
        }
        while (obj2.endsWith("0")) {
            obj2 = obj2.substring(0, obj2.length() - 1);
        }
        return obj2.endsWith(".") ? obj2.substring(0, obj2.length() - 1) : obj2;
    }

    private static void d(Object obj) {
        if (obj != null) {
            if (obj instanceof Double) {
                Double d4 = (Double) obj;
                if (d4.isInfinite() || d4.isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            } else if (obj instanceof Float) {
                Float f10 = (Float) obj;
                if (f10.isInfinite() || f10.isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
        if (r4 == '<') goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String f(java.lang.String r8) {
        /*
            if (r8 == 0) goto L9f
            int r0 = r8.length()
            if (r0 != 0) goto La
            goto L9f
        La:
            int r0 = r8.length()
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            int r2 = r0 + 4
            r1.<init>(r2)
            r2 = 34
            r1.append(r2)
            r3 = 0
            r4 = 0
        L1c:
            if (r3 >= r0) goto L97
            char r5 = r8.charAt(r3)
            r6 = 12
            if (r5 == r6) goto L90
            r6 = 13
            if (r5 == r6) goto L8d
            r6 = 92
            if (r5 == r2) goto L86
            r7 = 47
            if (r5 == r7) goto L82
            if (r5 == r6) goto L86
            switch(r5) {
                case 8: goto L7c;
                case 9: goto L79;
                case 10: goto L76;
                default: goto L37;
            }
        L37:
            r4 = 32
            if (r5 < r4) goto L4b
            r4 = 128(0x80, float:1.794E-43)
            if (r5 < r4) goto L43
            r4 = 160(0xa0, float:2.24E-43)
            if (r5 < r4) goto L4b
        L43:
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r5 < r4) goto L89
            r4 = 8448(0x2100, float:1.1838E-41)
            if (r5 >= r4) goto L89
        L4b:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r6 = "000"
            r4.<init>(r6)
            java.lang.String r6 = java.lang.Integer.toHexString(r5)
            r4.append(r6)
            java.lang.String r4 = r4.toString()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "\\u"
            r6.<init>(r7)
            int r7 = r4.length()
            int r7 = r7 + (-4)
            java.lang.String r4 = r4.substring(r7)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            goto L7e
        L76:
            java.lang.String r4 = "\\n"
            goto L7e
        L79:
            java.lang.String r4 = "\\t"
            goto L7e
        L7c:
            java.lang.String r4 = "\\b"
        L7e:
            r1.append(r4)
            goto L93
        L82:
            r7 = 60
            if (r4 != r7) goto L89
        L86:
            r1.append(r6)
        L89:
            r1.append(r5)
            goto L93
        L8d:
            java.lang.String r4 = "\\r"
            goto L7e
        L90:
            java.lang.String r4 = "\\f"
            goto L7e
        L93:
            int r3 = r3 + 1
            r4 = r5
            goto L1c
        L97:
            r1.append(r2)
            java.lang.String r8 = r1.toString()
            return r8
        L9f:
            java.lang.String r8 = "\"\""
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.b.f(java.lang.String):java.lang.String");
    }

    public final Object a(String str) {
        Object obj = str == null ? null : this.f91710a.get(str);
        if (obj != null) {
            return obj;
        }
        throw new JSONException("JSONObject[" + f(str) + "] not found.");
    }

    public final Iterator c() {
        return this.f91710a.keySet().iterator();
    }

    public final boolean e(String str) {
        return this.f91710a.containsKey(str);
    }

    public String toString() {
        try {
            Iterator c10 = c();
            StringBuffer stringBuffer = new StringBuffer("{");
            while (c10.hasNext()) {
                if (stringBuffer.length() > 1) {
                    stringBuffer.append(',');
                }
                Object next = c10.next();
                stringBuffer.append(f(next.toString()));
                stringBuffer.append(':');
                stringBuffer.append(b(this.f91710a.get(next)));
            }
            stringBuffer.append('}');
            return stringBuffer.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
