package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: ExternalTypeHandler.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final JavaType f14777a;

    /* renamed from: b  reason: collision with root package name */
    private final b[] f14778b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f14779c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f14780d;

    /* renamed from: e  reason: collision with root package name */
    private final t[] f14781e;

    /* compiled from: ExternalTypeHandler.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final JavaType f14782a;

        /* renamed from: b  reason: collision with root package name */
        private final List<b> f14783b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final Map<String, Object> f14784c = new HashMap();

        protected a(JavaType javaType) {
            this.f14782a = javaType;
        }

        private void a(String str, Integer num) {
            Object obj = this.f14784c.get(str);
            if (obj == null) {
                this.f14784c.put(str, num);
            } else if (obj instanceof List) {
                ((List) obj).add(num);
            } else {
                LinkedList linkedList = new LinkedList();
                linkedList.add(obj);
                linkedList.add(num);
                this.f14784c.put(str, linkedList);
            }
        }

        public void b(SettableBeanProperty settableBeanProperty, com.fasterxml.jackson.databind.jsontype.b bVar) {
            Integer valueOf = Integer.valueOf(this.f14783b.size());
            this.f14783b.add(new b(settableBeanProperty, bVar));
            a(settableBeanProperty.getName(), valueOf);
            a(bVar.getPropertyName(), valueOf);
        }

        public d c(BeanPropertyMap beanPropertyMap) {
            int size = this.f14783b.size();
            b[] bVarArr = new b[size];
            for (int i4 = 0; i4 < size; i4++) {
                b bVar = this.f14783b.get(i4);
                SettableBeanProperty find = beanPropertyMap.find(bVar.d());
                if (find != null) {
                    bVar.g(find);
                }
                bVarArr[i4] = bVar;
            }
            return new d(this.f14782a, bVarArr, this.f14784c, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExternalTypeHandler.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SettableBeanProperty f14785a;

        /* renamed from: b  reason: collision with root package name */
        private final com.fasterxml.jackson.databind.jsontype.b f14786b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14787c;

        /* renamed from: d  reason: collision with root package name */
        private SettableBeanProperty f14788d;

        public b(SettableBeanProperty settableBeanProperty, com.fasterxml.jackson.databind.jsontype.b bVar) {
            this.f14785a = settableBeanProperty;
            this.f14786b = bVar;
            this.f14787c = bVar.getPropertyName();
        }

        public String a() {
            Class<?> defaultImpl = this.f14786b.getDefaultImpl();
            if (defaultImpl == null) {
                return null;
            }
            return this.f14786b.getTypeIdResolver().e(null, defaultImpl);
        }

        public SettableBeanProperty b() {
            return this.f14785a;
        }

        public SettableBeanProperty c() {
            return this.f14788d;
        }

        public String d() {
            return this.f14787c;
        }

        public boolean e() {
            return this.f14786b.hasDefaultImpl();
        }

        public boolean f(String str) {
            return str.equals(this.f14787c);
        }

        public void g(SettableBeanProperty settableBeanProperty) {
            this.f14788d = settableBeanProperty;
        }
    }

    protected d(JavaType javaType, b[] bVarArr, Map<String, Object> map, String[] strArr, t[] tVarArr) {
        this.f14777a = javaType;
        this.f14778b = bVarArr;
        this.f14779c = map;
        this.f14780d = strArr;
        this.f14781e = tVarArr;
    }

    private final boolean c(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj, String str2, int i4) throws IOException {
        boolean z9 = false;
        if (this.f14778b[i4].f(str)) {
            if (obj != null && this.f14781e[i4] != null) {
                z9 = true;
            }
            if (z9) {
                b(jsonParser, deserializationContext, obj, i4, str2);
                this.f14781e[i4] = null;
            } else {
                this.f14780d[i4] = str2;
            }
            return true;
        }
        return false;
    }

    public static a d(JavaType javaType) {
        return new a(javaType);
    }

    protected final Object a(JsonParser jsonParser, DeserializationContext deserializationContext, int i4, String str) throws IOException {
        JsonParser j22 = this.f14781e[i4].j2(jsonParser);
        if (j22.y1() == JsonToken.VALUE_NULL) {
            return null;
        }
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.G1();
        bufferForInputBuffering.P1(str);
        bufferForInputBuffering.H(j22);
        bufferForInputBuffering.R0();
        JsonParser j23 = bufferForInputBuffering.j2(jsonParser);
        j23.y1();
        return this.f14778b[i4].b().deserialize(j23, deserializationContext);
    }

    protected final void b(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i4, String str) throws IOException {
        if (str == null) {
            deserializationContext.reportInputMismatch(this.f14777a, "Internal error in external Type Id handling: `null` type id passed", new Object[0]);
        }
        JsonParser j22 = this.f14781e[i4].j2(jsonParser);
        if (j22.y1() == JsonToken.VALUE_NULL) {
            this.f14778b[i4].b().set(obj, null);
            return;
        }
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.G1();
        bufferForInputBuffering.P1(str);
        bufferForInputBuffering.H(j22);
        bufferForInputBuffering.R0();
        JsonParser j23 = bufferForInputBuffering.j2(jsonParser);
        j23.y1();
        this.f14778b[i4].b().deserializeAndSet(j23, deserializationContext, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        if (r13.isEnabled(com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object e(com.fasterxml.jackson.core.JsonParser r12, com.fasterxml.jackson.databind.DeserializationContext r13, com.fasterxml.jackson.databind.deser.impl.i r14, com.fasterxml.jackson.databind.deser.impl.g r15) throws java.io.IOException {
        /*
            r11 = this;
            com.fasterxml.jackson.databind.deser.impl.d$b[] r0 = r11.f14778b
            int r0 = r0.length
            java.lang.Object[] r1 = new java.lang.Object[r0]
            r2 = 0
            r3 = 0
        L7:
            if (r3 >= r0) goto Lce
            java.lang.String[] r4 = r11.f14780d
            r4 = r4[r3]
            com.fasterxml.jackson.databind.deser.impl.d$b[] r5 = r11.f14778b
            r5 = r5[r3]
            r6 = 1
            if (r4 != 0) goto L47
            com.fasterxml.jackson.databind.util.t[] r7 = r11.f14781e
            r7 = r7[r3]
            if (r7 == 0) goto Lca
            com.fasterxml.jackson.core.JsonToken r7 = r7.n2()
            com.fasterxml.jackson.core.JsonToken r8 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            if (r7 != r8) goto L24
            goto Lca
        L24:
            boolean r7 = r5.e()
            if (r7 != 0) goto L42
            com.fasterxml.jackson.databind.JavaType r7 = r11.f14777a
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r8 = r5.b()
            java.lang.String r8 = r8.getName()
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r9 = r5.d()
            r6[r2] = r9
            java.lang.String r9 = "Missing external type id property '%s'"
            r13.reportPropertyInputMismatch(r7, r8, r9, r6)
            goto L7d
        L42:
            java.lang.String r4 = r5.a()
            goto L7d
        L47:
            com.fasterxml.jackson.databind.util.t[] r7 = r11.f14781e
            r7 = r7[r3]
            if (r7 != 0) goto L7d
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r7 = r5.b()
            boolean r8 = r7.isRequired()
            if (r8 != 0) goto L5f
            com.fasterxml.jackson.databind.DeserializationFeature r8 = com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY
            boolean r8 = r13.isEnabled(r8)
            if (r8 == 0) goto L7d
        L5f:
            com.fasterxml.jackson.databind.JavaType r8 = r11.f14777a
            java.lang.String r9 = r7.getName()
            r10 = 2
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r7 = r7.getName()
            r10[r2] = r7
            com.fasterxml.jackson.databind.deser.impl.d$b[] r7 = r11.f14778b
            r7 = r7[r3]
            java.lang.String r7 = r7.d()
            r10[r6] = r7
            java.lang.String r6 = "Missing property '%s' for external type id '%s'"
            r13.reportPropertyInputMismatch(r8, r9, r6, r10)
        L7d:
            com.fasterxml.jackson.databind.util.t[] r6 = r11.f14781e
            r6 = r6[r3]
            if (r6 == 0) goto L89
            java.lang.Object r6 = r11.a(r12, r13, r3, r4)
            r1[r3] = r6
        L89:
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r6 = r5.b()
            int r7 = r6.getCreatorIndex()
            if (r7 < 0) goto Lca
            r7 = r1[r3]
            r14.b(r6, r7)
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r5 = r5.c()
            if (r5 == 0) goto Lca
            int r6 = r5.getCreatorIndex()
            if (r6 < 0) goto Lca
            com.fasterxml.jackson.databind.JavaType r6 = r5.getType()
            java.lang.Class<java.lang.String> r7 = java.lang.String.class
            boolean r6 = r6.hasRawClass(r7)
            if (r6 == 0) goto Lb1
            goto Lc7
        Lb1:
            com.fasterxml.jackson.databind.util.t r6 = r13.bufferForInputBuffering(r12)
            r6.P1(r4)
            com.fasterxml.jackson.databind.d r4 = r5.getValueDeserializer()
            com.fasterxml.jackson.core.JsonParser r7 = r6.l2()
            java.lang.Object r4 = r4.deserialize(r7, r13)
            r6.close()
        Lc7:
            r14.b(r5, r4)
        Lca:
            int r3 = r3 + 1
            goto L7
        Lce:
            java.lang.Object r12 = r15.a(r13, r14)
        Ld2:
            if (r2 >= r0) goto Lea
            com.fasterxml.jackson.databind.deser.impl.d$b[] r13 = r11.f14778b
            r13 = r13[r2]
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r13 = r13.b()
            int r14 = r13.getCreatorIndex()
            if (r14 >= 0) goto Le7
            r14 = r1[r2]
            r13.set(r12, r14)
        Le7:
            int r2 = r2 + 1
            goto Ld2
        Lea:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.d.e(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.deser.impl.i, com.fasterxml.jackson.databind.deser.impl.g):java.lang.Object");
    }

    public Object f(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        int length = this.f14778b.length;
        for (int i4 = 0; i4 < length; i4++) {
            String str = this.f14780d[i4];
            b bVar = this.f14778b[i4];
            if (str == null) {
                t tVar = this.f14781e[i4];
                if (tVar != null) {
                    if (tVar.n2().isScalarValue()) {
                        JsonParser j22 = tVar.j2(jsonParser);
                        j22.y1();
                        SettableBeanProperty b10 = bVar.b();
                        Object deserializeIfNatural = com.fasterxml.jackson.databind.jsontype.b.deserializeIfNatural(j22, deserializationContext, b10.getType());
                        if (deserializeIfNatural != null) {
                            b10.set(obj, deserializeIfNatural);
                        }
                    }
                    if (!bVar.e()) {
                        deserializationContext.reportPropertyInputMismatch(this.f14777a, bVar.b().getName(), "Missing external type id property '%s' (and no 'defaultImpl' specified)", bVar.d());
                    } else {
                        str = bVar.a();
                        if (str == null) {
                            deserializationContext.reportPropertyInputMismatch(this.f14777a, bVar.b().getName(), "Invalid default type id for property '%s': `null` returned by TypeIdResolver", bVar.d());
                        }
                    }
                }
            } else if (this.f14781e[i4] == null) {
                SettableBeanProperty b11 = bVar.b();
                if (b11.isRequired() || deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                    deserializationContext.reportPropertyInputMismatch(obj.getClass(), b11.getName(), "Missing property '%s' for external type id '%s'", b11.getName(), bVar.d());
                }
                return obj;
            }
            b(jsonParser, deserializationContext, obj, i4, str);
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
        if (r10.f14781e[r0] != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        if (r10.f14780d[r0] != null) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean g(com.fasterxml.jackson.core.JsonParser r11, com.fasterxml.jackson.databind.DeserializationContext r12, java.lang.String r13, java.lang.Object r14) throws java.io.IOException {
        /*
            r10 = this;
            java.util.Map<java.lang.String, java.lang.Object> r0 = r10.f14779c
            java.lang.Object r0 = r0.get(r13)
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            boolean r2 = r0 instanceof java.util.List
            r3 = 1
            if (r2 == 0) goto L6f
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r14 = r0.iterator()
            java.lang.Object r0 = r14.next()
            java.lang.Integer r0 = (java.lang.Integer) r0
            com.fasterxml.jackson.databind.deser.impl.d$b[] r1 = r10.f14778b
            int r2 = r0.intValue()
            r1 = r1[r2]
            boolean r13 = r1.f(r13)
            if (r13 == 0) goto L4d
            java.lang.String r12 = r11.S0()
            r11.U1()
            java.lang.String[] r11 = r10.f14780d
            int r13 = r0.intValue()
            r11[r13] = r12
        L38:
            boolean r11 = r14.hasNext()
            if (r11 == 0) goto L6e
            java.lang.String[] r11 = r10.f14780d
            java.lang.Object r13 = r14.next()
            java.lang.Integer r13 = (java.lang.Integer) r13
            int r13 = r13.intValue()
            r11[r13] = r12
            goto L38
        L4d:
            com.fasterxml.jackson.databind.util.t r11 = r12.bufferAsCopyOfValue(r11)
            com.fasterxml.jackson.databind.util.t[] r12 = r10.f14781e
            int r13 = r0.intValue()
            r12[r13] = r11
        L59:
            boolean r12 = r14.hasNext()
            if (r12 == 0) goto L6e
            com.fasterxml.jackson.databind.util.t[] r12 = r10.f14781e
            java.lang.Object r13 = r14.next()
            java.lang.Integer r13 = (java.lang.Integer) r13
            int r13 = r13.intValue()
            r12[r13] = r11
            goto L59
        L6e:
            return r3
        L6f:
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            com.fasterxml.jackson.databind.deser.impl.d$b[] r2 = r10.f14778b
            r2 = r2[r0]
            boolean r13 = r2.f(r13)
            if (r13 == 0) goto L94
            java.lang.String[] r13 = r10.f14780d
            java.lang.String r2 = r11.g1()
            r13[r0] = r2
            r11.U1()
            if (r14 == 0) goto La5
            com.fasterxml.jackson.databind.util.t[] r13 = r10.f14781e
            r13 = r13[r0]
            if (r13 == 0) goto La5
        L92:
            r1 = 1
            goto La5
        L94:
            com.fasterxml.jackson.databind.util.t r13 = r12.bufferAsCopyOfValue(r11)
            com.fasterxml.jackson.databind.util.t[] r2 = r10.f14781e
            r2[r0] = r13
            if (r14 == 0) goto La5
            java.lang.String[] r13 = r10.f14780d
            r13 = r13[r0]
            if (r13 == 0) goto La5
            goto L92
        La5:
            if (r1 == 0) goto Lba
            java.lang.String[] r13 = r10.f14780d
            r9 = r13[r0]
            r1 = 0
            r13[r0] = r1
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r14
            r8 = r0
            r4.b(r5, r6, r7, r8, r9)
            com.fasterxml.jackson.databind.util.t[] r11 = r10.f14781e
            r11[r0] = r1
        Lba:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.d.g(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.String, java.lang.Object):boolean");
    }

    public boolean h(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Object obj2 = this.f14779c.get(str);
        boolean z9 = false;
        if (obj2 == null) {
            return false;
        }
        String S0 = jsonParser.S0();
        if (obj2 instanceof List) {
            for (Integer num : (List) obj2) {
                if (c(jsonParser, deserializationContext, str, obj, S0, num.intValue())) {
                    z9 = true;
                }
            }
            return z9;
        }
        return c(jsonParser, deserializationContext, str, obj, S0, ((Integer) obj2).intValue());
    }

    public d i() {
        return new d(this);
    }

    protected d(d dVar) {
        this.f14777a = dVar.f14777a;
        b[] bVarArr = dVar.f14778b;
        this.f14778b = bVarArr;
        this.f14779c = dVar.f14779c;
        int length = bVarArr.length;
        this.f14780d = new String[length];
        this.f14781e = new t[length];
    }
}
