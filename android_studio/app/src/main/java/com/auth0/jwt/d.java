package com.auth0.jwt;

import com.auth0.jwt.exceptions.JWTCreationException;
import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.impl.PayloadSerializer;
import com.auth0.jwt.impl.i;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: JWTCreator.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: d  reason: collision with root package name */
    private static final ObjectMapper f7053d;

    /* renamed from: e  reason: collision with root package name */
    private static final SimpleModule f7054e;

    /* renamed from: a  reason: collision with root package name */
    private final com.auth0.jwt.algorithms.a f7055a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7056b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7057c;

    /* compiled from: JWTCreator.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, Object> f7058a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f7059b = new HashMap();

        b() {
        }

        private void a(String str, Object obj) {
            if (obj == null) {
                this.f7058a.remove(str);
            } else {
                this.f7058a.put(str, obj);
            }
        }

        private void b(String str) {
            if (str == null) {
                throw new IllegalArgumentException("The Custom Claim's name can't be null.");
            }
        }

        private static boolean c(Object obj) {
            Class<?> cls = obj.getClass();
            return cls.isArray() ? cls == Integer[].class || cls == Long[].class || cls == String[].class : cls == String.class || cls == Integer.class || cls == Long.class || cls == Double.class || cls == Date.class || cls == Boolean.class;
        }

        private static boolean d(Object obj) {
            if (obj instanceof List) {
                return f((List) obj);
            }
            if (obj instanceof Map) {
                return g((Map) obj);
            }
            return c(obj);
        }

        private static boolean f(List<?> list) {
            for (Object obj : list) {
                if (obj != null && !d(obj)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static boolean g(java.util.Map<?, ?> r3) {
            /*
                java.util.Set r3 = r3.entrySet()
                java.util.Iterator r3 = r3.iterator()
            L8:
                boolean r0 = r3.hasNext()
                if (r0 == 0) goto L31
                java.lang.Object r0 = r3.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getValue()
                r2 = 0
                if (r1 == 0) goto L30
                boolean r1 = d(r1)
                if (r1 != 0) goto L22
                goto L30
            L22:
                java.lang.Object r1 = r0.getKey()
                if (r1 == 0) goto L30
                java.lang.Object r0 = r0.getKey()
                boolean r0 = r0 instanceof java.lang.String
                if (r0 != 0) goto L8
            L30:
                return r2
            L31:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.auth0.jwt.d.b.g(java.util.Map):boolean");
        }

        public b A(String str) {
            a(i.f7106f, str);
            return this;
        }

        public String e(com.auth0.jwt.algorithms.a aVar) throws IllegalArgumentException, JWTCreationException {
            if (aVar != null) {
                this.f7059b.put(i.f7101a, aVar.B());
                if (!this.f7059b.containsKey(i.f7103c)) {
                    this.f7059b.put(i.f7103c, "JWT");
                }
                String C = aVar.C();
                if (C != null) {
                    y(C);
                }
                return new d(aVar, this.f7059b, this.f7058a).c();
            }
            throw new IllegalArgumentException("The Algorithm cannot be null.");
        }

        public b h(String str, Integer[] numArr) throws IllegalArgumentException {
            b(str);
            a(str, numArr);
            return this;
        }

        public b i(String str, Long[] lArr) throws IllegalArgumentException {
            b(str);
            a(str, lArr);
            return this;
        }

        public b j(String str, String[] strArr) throws IllegalArgumentException {
            b(str);
            a(str, strArr);
            return this;
        }

        public b k(String... strArr) {
            a(i.f7111k, strArr);
            return this;
        }

        public b l(String str, Boolean bool) throws IllegalArgumentException {
            b(str);
            a(str, bool);
            return this;
        }

        public b m(String str, Double d4) throws IllegalArgumentException {
            b(str);
            a(str, d4);
            return this;
        }

        public b n(String str, Integer num) throws IllegalArgumentException {
            b(str);
            a(str, num);
            return this;
        }

        public b o(String str, Long l10) throws IllegalArgumentException {
            b(str);
            a(str, l10);
            return this;
        }

        public b p(String str, String str2) throws IllegalArgumentException {
            b(str);
            a(str, str2);
            return this;
        }

        public b q(String str, Date date) throws IllegalArgumentException {
            b(str);
            a(str, date);
            return this;
        }

        public b r(String str, List<?> list) throws IllegalArgumentException {
            b(str);
            if (list != null && !f(list)) {
                throw new IllegalArgumentException("Expected list containing Map, List, Boolean, Integer, Long, Double, String and Date");
            }
            a(str, list);
            return this;
        }

        public b s(String str, Map<String, ?> map) throws IllegalArgumentException {
            b(str);
            if (map != null && !g(map)) {
                throw new IllegalArgumentException("Expected map containing Map, List, Boolean, Integer, Long, Double, String and Date");
            }
            a(str, map);
            return this;
        }

        public b t(Date date) {
            a(i.f7107g, date);
            return this;
        }

        public b u(Map<String, Object> map) {
            if (map == null) {
                return this;
            }
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getValue() == null) {
                    this.f7059b.remove(entry.getKey());
                } else {
                    this.f7059b.put(entry.getKey(), entry.getValue());
                }
            }
            return this;
        }

        public b v(Date date) {
            a(i.f7109i, date);
            return this;
        }

        public b w(String str) {
            a(i.f7105e, str);
            return this;
        }

        public b x(String str) {
            a(i.f7110j, str);
            return this;
        }

        public b y(String str) {
            this.f7059b.put(i.f7104d, str);
            return this;
        }

        public b z(Date date) {
            a(i.f7108h, date);
            return this;
        }
    }

    static {
        ObjectMapper objectMapper = new ObjectMapper();
        f7053d = objectMapper;
        SimpleModule simpleModule = new SimpleModule();
        f7054e = simpleModule;
        simpleModule.addSerializer(com.auth0.jwt.impl.b.class, new PayloadSerializer());
        objectMapper.registerModule(simpleModule);
        objectMapper.configure(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() throws SignatureGenerationException {
        String H = shaded.org.apache.commons.codec.binary.d.H(this.f7056b.getBytes(StandardCharsets.UTF_8));
        String H2 = shaded.org.apache.commons.codec.binary.d.H(this.f7057c.getBytes(StandardCharsets.UTF_8));
        return String.format("%s.%s.%s", H, H2, shaded.org.apache.commons.codec.binary.d.H(this.f7055a.F(H.getBytes(StandardCharsets.UTF_8), H2.getBytes(StandardCharsets.UTF_8))));
    }

    private d(com.auth0.jwt.algorithms.a aVar, Map<String, Object> map, Map<String, Object> map2) throws JWTCreationException {
        this.f7055a = aVar;
        try {
            ObjectMapper objectMapper = f7053d;
            this.f7056b = objectMapper.writeValueAsString(map);
            this.f7057c = objectMapper.writeValueAsString(new com.auth0.jwt.impl.b(map2));
        } catch (JsonProcessingException e4) {
            throw new JWTCreationException("Some of the Claims couldn't be converted to a valid JSON format.", e4);
        }
    }
}
