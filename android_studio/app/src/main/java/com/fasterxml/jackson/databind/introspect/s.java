package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.stream.Collectors;

/* compiled from: POJOPropertyBuilder.java */
/* loaded from: classes.dex */
public class s extends k implements Comparable<s> {

    /* renamed from: m  reason: collision with root package name */
    private static final AnnotationIntrospector.ReferenceProperty f15339m = AnnotationIntrospector.ReferenceProperty.f("");

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f15340b;

    /* renamed from: c  reason: collision with root package name */
    protected final MapperConfig<?> f15341c;

    /* renamed from: d  reason: collision with root package name */
    protected final AnnotationIntrospector f15342d;

    /* renamed from: e  reason: collision with root package name */
    protected final PropertyName f15343e;

    /* renamed from: f  reason: collision with root package name */
    protected final PropertyName f15344f;

    /* renamed from: g  reason: collision with root package name */
    protected g<AnnotatedField> f15345g;

    /* renamed from: h  reason: collision with root package name */
    protected g<AnnotatedParameter> f15346h;

    /* renamed from: i  reason: collision with root package name */
    protected g<AnnotatedMethod> f15347i;

    /* renamed from: j  reason: collision with root package name */
    protected g<AnnotatedMethod> f15348j;

    /* renamed from: k  reason: collision with root package name */
    protected transient PropertyMetadata f15349k;

    /* renamed from: l  reason: collision with root package name */
    protected transient AnnotationIntrospector.ReferenceProperty f15350l;

    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    class a implements i<Class<?>[]> {
        a() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.s.i
        /* renamed from: b */
        public Class<?>[] a(AnnotatedMember annotatedMember) {
            return s.this.f15342d.findViews(annotatedMember);
        }
    }

    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    class b implements i<AnnotationIntrospector.ReferenceProperty> {
        b() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.s.i
        /* renamed from: b */
        public AnnotationIntrospector.ReferenceProperty a(AnnotatedMember annotatedMember) {
            return s.this.f15342d.findReferenceType(annotatedMember);
        }
    }

    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    class c implements i<Boolean> {
        c() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.s.i
        /* renamed from: b */
        public Boolean a(AnnotatedMember annotatedMember) {
            return s.this.f15342d.isTypeId(annotatedMember);
        }
    }

    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    class d implements i<p> {
        d() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.s.i
        /* renamed from: b */
        public p a(AnnotatedMember annotatedMember) {
            p findObjectIdInfo = s.this.f15342d.findObjectIdInfo(annotatedMember);
            return findObjectIdInfo != null ? s.this.f15342d.findObjectReferenceInfo(annotatedMember, findObjectIdInfo) : findObjectIdInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    public class e implements i<JsonProperty.Access> {
        e() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.s.i
        /* renamed from: b */
        public JsonProperty.Access a(AnnotatedMember annotatedMember) {
            return s.this.f15342d.findPropertyAccess(annotatedMember);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15356a;

        static {
            int[] iArr = new int[JsonProperty.Access.values().length];
            f15356a = iArr;
            try {
                iArr[JsonProperty.Access.READ_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15356a[JsonProperty.Access.READ_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15356a[JsonProperty.Access.WRITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15356a[JsonProperty.Access.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    public static final class g<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f15357a;

        /* renamed from: b  reason: collision with root package name */
        public final g<T> f15358b;

        /* renamed from: c  reason: collision with root package name */
        public final PropertyName f15359c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f15360d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f15361e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f15362f;

        public g(T t9, g<T> gVar, PropertyName propertyName, boolean z9, boolean z10, boolean z11) {
            this.f15357a = t9;
            this.f15358b = gVar;
            PropertyName propertyName2 = (propertyName == null || propertyName.isEmpty()) ? null : propertyName;
            this.f15359c = propertyName2;
            if (z9) {
                if (propertyName2 != null) {
                    if (!propertyName.hasSimpleName()) {
                        z9 = false;
                    }
                } else {
                    throw new IllegalArgumentException("Cannot pass true for 'explName' if name is null/empty");
                }
            }
            this.f15360d = z9;
            this.f15361e = z10;
            this.f15362f = z11;
        }

        protected g<T> a(g<T> gVar) {
            g<T> gVar2 = this.f15358b;
            if (gVar2 == null) {
                return c(gVar);
            }
            return c(gVar2.a(gVar));
        }

        public g<T> b() {
            g<T> gVar = this.f15358b;
            if (gVar == null) {
                return this;
            }
            g<T> b10 = gVar.b();
            if (this.f15359c != null) {
                if (b10.f15359c == null) {
                    return c(null);
                }
                return c(b10);
            } else if (b10.f15359c != null) {
                return b10;
            } else {
                boolean z9 = this.f15361e;
                if (z9 == b10.f15361e) {
                    return c(b10);
                }
                return z9 ? c(null) : b10;
            }
        }

        public g<T> c(g<T> gVar) {
            return gVar == this.f15358b ? this : new g<>(this.f15357a, gVar, this.f15359c, this.f15360d, this.f15361e, this.f15362f);
        }

        public g<T> d(T t9) {
            return t9 == this.f15357a ? this : new g<>(t9, this.f15358b, this.f15359c, this.f15360d, this.f15361e, this.f15362f);
        }

        public g<T> e() {
            g<T> e4;
            if (this.f15362f) {
                g<T> gVar = this.f15358b;
                if (gVar == null) {
                    return null;
                }
                return gVar.e();
            }
            g<T> gVar2 = this.f15358b;
            return (gVar2 == null || (e4 = gVar2.e()) == this.f15358b) ? this : c(e4);
        }

        public g<T> f() {
            return this.f15358b == null ? this : new g<>(this.f15357a, null, this.f15359c, this.f15360d, this.f15361e, this.f15362f);
        }

        public g<T> g() {
            g<T> gVar = this.f15358b;
            g<T> g4 = gVar == null ? null : gVar.g();
            return this.f15361e ? c(g4) : g4;
        }

        public String toString() {
            String format = String.format("%s[visible=%b,ignore=%b,explicitName=%b]", this.f15357a.toString(), Boolean.valueOf(this.f15361e), Boolean.valueOf(this.f15362f), Boolean.valueOf(this.f15360d));
            if (this.f15358b != null) {
                return format + ", " + this.f15358b.toString();
            }
            return format;
        }
    }

    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    protected static class h<T extends AnnotatedMember> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private g<T> f15363a;

        public h(g<T> gVar) {
            this.f15363a = gVar;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public T next() {
            g<T> gVar = this.f15363a;
            if (gVar != null) {
                T t9 = gVar.f15357a;
                this.f15363a = gVar.f15358b;
                return t9;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15363a != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: POJOPropertyBuilder.java */
    /* loaded from: classes.dex */
    public interface i<T> {
        T a(AnnotatedMember annotatedMember);
    }

    public s(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z9, PropertyName propertyName) {
        this(mapperConfig, annotationIntrospector, z9, propertyName, propertyName);
    }

    private <T> boolean E(g<T> gVar) {
        while (gVar != null) {
            if (gVar.f15359c != null && gVar.f15360d) {
                return true;
            }
            gVar = gVar.f15358b;
        }
        return false;
    }

    private <T> boolean F(g<T> gVar) {
        while (gVar != null) {
            PropertyName propertyName = gVar.f15359c;
            if (propertyName != null && propertyName.hasSimpleName()) {
                return true;
            }
            gVar = gVar.f15358b;
        }
        return false;
    }

    private <T> boolean G(g<T> gVar) {
        while (gVar != null) {
            if (gVar.f15362f) {
                return true;
            }
            gVar = gVar.f15358b;
        }
        return false;
    }

    private <T> boolean I(g<T> gVar) {
        while (gVar != null) {
            if (gVar.f15361e) {
                return true;
            }
            gVar = gVar.f15358b;
        }
        return false;
    }

    private <T extends AnnotatedMember> g<T> J(g<T> gVar, com.fasterxml.jackson.databind.introspect.i iVar) {
        AnnotatedMember annotatedMember = (AnnotatedMember) gVar.f15357a.withAnnotations(iVar);
        g<T> gVar2 = gVar.f15358b;
        g gVar3 = gVar;
        if (gVar2 != null) {
            gVar3 = (g<T>) gVar.c(J(gVar2, iVar));
        }
        return gVar3.d(annotatedMember);
    }

    private void K(Collection<PropertyName> collection, Map<PropertyName, s> map, g<?> gVar) {
        for (g gVar2 = gVar; gVar2 != null; gVar2 = gVar2.f15358b) {
            PropertyName propertyName = gVar2.f15359c;
            if (gVar2.f15360d && propertyName != null) {
                s sVar = map.get(propertyName);
                if (sVar == null) {
                    sVar = new s(this.f15341c, this.f15342d, this.f15340b, this.f15344f, propertyName);
                    map.put(propertyName, sVar);
                }
                if (gVar == this.f15345g) {
                    sVar.f15345g = gVar2.c(sVar.f15345g);
                } else if (gVar == this.f15347i) {
                    sVar.f15347i = gVar2.c(sVar.f15347i);
                } else if (gVar == this.f15348j) {
                    sVar.f15348j = gVar2.c(sVar.f15348j);
                } else if (gVar == this.f15346h) {
                    sVar.f15346h = gVar2.c(sVar.f15346h);
                } else {
                    throw new IllegalStateException("Internal error: mismatched accessors, property: " + this);
                }
            } else if (gVar2.f15361e) {
                throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name " + com.fasterxml.jackson.databind.util.g.g0(this.f15343e) + "): found multiple explicit names: " + collection + ", but also implicit accessor: " + gVar2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.Set<com.fasterxml.jackson.databind.PropertyName> L(com.fasterxml.jackson.databind.introspect.s.g<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> r2, java.util.Set<com.fasterxml.jackson.databind.PropertyName> r3) {
        /*
            r1 = this;
        L0:
            if (r2 == 0) goto L1a
            boolean r0 = r2.f15360d
            if (r0 == 0) goto L17
            com.fasterxml.jackson.databind.PropertyName r0 = r2.f15359c
            if (r0 != 0) goto Lb
            goto L17
        Lb:
            if (r3 != 0) goto L12
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
        L12:
            com.fasterxml.jackson.databind.PropertyName r0 = r2.f15359c
            r3.add(r0)
        L17:
            com.fasterxml.jackson.databind.introspect.s$g<T> r2 = r2.f15358b
            goto L0
        L1a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.s.L(com.fasterxml.jackson.databind.introspect.s$g, java.util.Set):java.util.Set");
    }

    private <T extends AnnotatedMember> com.fasterxml.jackson.databind.introspect.i M(g<T> gVar) {
        com.fasterxml.jackson.databind.introspect.i allAnnotations = gVar.f15357a.getAllAnnotations();
        g<T> gVar2 = gVar.f15358b;
        return gVar2 != null ? com.fasterxml.jackson.databind.introspect.i.e(allAnnotations, M(gVar2)) : allAnnotations;
    }

    private com.fasterxml.jackson.databind.introspect.i P(int i4, g<? extends AnnotatedMember>... gVarArr) {
        com.fasterxml.jackson.databind.introspect.i M = M(gVarArr[i4]);
        do {
            i4++;
            if (i4 >= gVarArr.length) {
                return M;
            }
        } while (gVarArr[i4] == null);
        return com.fasterxml.jackson.databind.introspect.i.e(M, P(i4, gVarArr));
    }

    private <T> g<T> R(g<T> gVar) {
        return gVar == null ? gVar : gVar.e();
    }

    private <T> g<T> S(g<T> gVar) {
        return gVar == null ? gVar : gVar.g();
    }

    private <T> g<T> W(g<T> gVar) {
        return gVar == null ? gVar : gVar.b();
    }

    private static <T> g<T> o0(g<T> gVar, g<T> gVar2) {
        return gVar == null ? gVar2 : gVar2 == null ? gVar : gVar.a(gVar2);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean A() {
        return E(this.f15345g) || E(this.f15347i) || E(this.f15348j) || E(this.f15346h);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean B() {
        Boolean bool = (Boolean) i0(new c());
        return bool != null && bool.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.databind.PropertyMetadata N(com.fasterxml.jackson.databind.PropertyMetadata r7, com.fasterxml.jackson.databind.introspect.AnnotatedMember r8) {
        /*
            r6 = this;
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r6.h()
            r1 = 0
            r2 = 0
            r3 = 1
            if (r8 == 0) goto L73
            com.fasterxml.jackson.databind.AnnotationIntrospector r4 = r6.f15342d
            if (r4 == 0) goto L35
            if (r0 == 0) goto L24
            java.lang.Boolean r4 = r4.findMergeInfo(r8)
            if (r4 == 0) goto L24
            boolean r3 = r4.booleanValue()
            if (r3 == 0) goto L23
            com.fasterxml.jackson.databind.PropertyMetadata$a r3 = com.fasterxml.jackson.databind.PropertyMetadata.a.b(r0)
            com.fasterxml.jackson.databind.PropertyMetadata r7 = r7.withMergeInfo(r3)
        L23:
            r3 = 0
        L24:
            com.fasterxml.jackson.databind.AnnotationIntrospector r4 = r6.f15342d
            com.fasterxml.jackson.annotation.JsonSetter$Value r4 = r4.findSetterInfo(r8)
            if (r4 == 0) goto L35
            com.fasterxml.jackson.annotation.Nulls r2 = r4.nonDefaultValueNulls()
            com.fasterxml.jackson.annotation.Nulls r4 = r4.nonDefaultContentNulls()
            goto L36
        L35:
            r4 = r2
        L36:
            if (r3 != 0) goto L3c
            if (r2 == 0) goto L3c
            if (r4 != 0) goto L71
        L3c:
            java.lang.Class r8 = r6.Q(r8)
            com.fasterxml.jackson.databind.cfg.MapperConfig<?> r5 = r6.f15341c
            com.fasterxml.jackson.databind.cfg.b r8 = r5.getConfigOverride(r8)
            com.fasterxml.jackson.annotation.JsonSetter$Value r5 = r8.getSetterInfo()
            if (r5 == 0) goto L58
            if (r2 != 0) goto L52
            com.fasterxml.jackson.annotation.Nulls r2 = r5.nonDefaultValueNulls()
        L52:
            if (r4 != 0) goto L58
            com.fasterxml.jackson.annotation.Nulls r4 = r5.nonDefaultContentNulls()
        L58:
            if (r3 == 0) goto L71
            if (r0 == 0) goto L71
            java.lang.Boolean r8 = r8.getMergeable()
            if (r8 == 0) goto L71
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L75
            com.fasterxml.jackson.databind.PropertyMetadata$a r8 = com.fasterxml.jackson.databind.PropertyMetadata.a.c(r0)
            com.fasterxml.jackson.databind.PropertyMetadata r7 = r7.withMergeInfo(r8)
            goto L75
        L71:
            r1 = r3
            goto L75
        L73:
            r4 = r2
            r1 = 1
        L75:
            if (r1 != 0) goto L7b
            if (r2 == 0) goto L7b
            if (r4 != 0) goto La7
        L7b:
            com.fasterxml.jackson.databind.cfg.MapperConfig<?> r8 = r6.f15341c
            com.fasterxml.jackson.annotation.JsonSetter$Value r8 = r8.getDefaultSetterInfo()
            if (r2 != 0) goto L87
            com.fasterxml.jackson.annotation.Nulls r2 = r8.nonDefaultValueNulls()
        L87:
            if (r4 != 0) goto L8d
            com.fasterxml.jackson.annotation.Nulls r4 = r8.nonDefaultContentNulls()
        L8d:
            if (r1 == 0) goto La7
            com.fasterxml.jackson.databind.cfg.MapperConfig<?> r8 = r6.f15341c
            java.lang.Boolean r8 = r8.getDefaultMergeable()
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto La7
            if (r0 == 0) goto La7
            com.fasterxml.jackson.databind.PropertyMetadata$a r8 = com.fasterxml.jackson.databind.PropertyMetadata.a.a(r0)
            com.fasterxml.jackson.databind.PropertyMetadata r7 = r7.withMergeInfo(r8)
        La7:
            if (r2 != 0) goto Lab
            if (r4 == 0) goto Laf
        Lab:
            com.fasterxml.jackson.databind.PropertyMetadata r7 = r7.withNulls(r2, r4)
        Laf:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.s.N(com.fasterxml.jackson.databind.PropertyMetadata, com.fasterxml.jackson.databind.introspect.AnnotatedMember):com.fasterxml.jackson.databind.PropertyMetadata");
    }

    protected int O(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    protected Class<?> Q(AnnotatedMember annotatedMember) {
        if (annotatedMember instanceof AnnotatedMethod) {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
            if (annotatedMethod.getParameterCount() > 0) {
                return annotatedMethod.getParameterType(0).getRawClass();
            }
        }
        return annotatedMember.getType().getRawClass();
    }

    protected AnnotatedMethod T(AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        Class<?> declaringClass = annotatedMethod.getDeclaringClass();
        Class<?> declaringClass2 = annotatedMethod2.getDeclaringClass();
        if (declaringClass != declaringClass2) {
            if (declaringClass.isAssignableFrom(declaringClass2)) {
                return annotatedMethod2;
            }
            if (declaringClass2.isAssignableFrom(declaringClass)) {
                return annotatedMethod;
            }
        }
        int V = V(annotatedMethod2);
        int V2 = V(annotatedMethod);
        if (V != V2) {
            return V < V2 ? annotatedMethod2 : annotatedMethod;
        }
        AnnotationIntrospector annotationIntrospector = this.f15342d;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.resolveSetterConflict(this.f15341c, annotatedMethod, annotatedMethod2);
    }

    protected AnnotatedMethod U(g<AnnotatedMethod> gVar, g<AnnotatedMethod> gVar2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(gVar.f15357a);
        arrayList.add(gVar2.f15357a);
        for (g<AnnotatedMethod> gVar3 = gVar2.f15358b; gVar3 != null; gVar3 = gVar3.f15358b) {
            AnnotatedMethod T = T(gVar.f15357a, gVar3.f15357a);
            if (T != gVar.f15357a) {
                AnnotatedMethod annotatedMethod = gVar3.f15357a;
                if (T == annotatedMethod) {
                    arrayList.clear();
                    gVar = gVar3;
                } else {
                    arrayList.add(annotatedMethod);
                }
            }
        }
        if (arrayList.isEmpty()) {
            this.f15348j = gVar.f();
            return gVar.f15357a;
        }
        throw new IllegalArgumentException(String.format("Conflicting setter definitions for property \"%s\": %s", getName(), (String) arrayList.stream().map(r.f15338a).collect(Collectors.joining(" vs "))));
    }

    protected int V(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        return (!name.startsWith("set") || name.length() <= 3) ? 2 : 1;
    }

    public void X(s sVar) {
        this.f15345g = o0(this.f15345g, sVar.f15345g);
        this.f15346h = o0(this.f15346h, sVar.f15346h);
        this.f15347i = o0(this.f15347i, sVar.f15347i);
        this.f15348j = o0(this.f15348j, sVar.f15348j);
    }

    public void Y(AnnotatedParameter annotatedParameter, PropertyName propertyName, boolean z9, boolean z10, boolean z11) {
        this.f15346h = new g<>(annotatedParameter, this.f15346h, propertyName, z9, z10, z11);
    }

    public void Z(AnnotatedField annotatedField, PropertyName propertyName, boolean z9, boolean z10, boolean z11) {
        this.f15345g = new g<>(annotatedField, this.f15345g, propertyName, z9, z10, z11);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean a() {
        return (this.f15346h == null && this.f15348j == null && this.f15345g == null) ? false : true;
    }

    public void a0(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z9, boolean z10, boolean z11) {
        this.f15347i = new g<>(annotatedMethod, this.f15347i, propertyName, z9, z10, z11);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean b() {
        return (this.f15347i == null && this.f15345g == null) ? false : true;
    }

    public void b0(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z9, boolean z10, boolean z11) {
        this.f15348j = new g<>(annotatedMethod, this.f15348j, propertyName, z9, z10, z11);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public JsonInclude.Value c() {
        AnnotatedMember h4 = h();
        AnnotationIntrospector annotationIntrospector = this.f15342d;
        JsonInclude.Value findPropertyInclusion = annotationIntrospector == null ? null : annotationIntrospector.findPropertyInclusion(h4);
        return findPropertyInclusion == null ? JsonInclude.Value.empty() : findPropertyInclusion;
    }

    public boolean c0() {
        return G(this.f15345g) || G(this.f15347i) || G(this.f15348j) || G(this.f15346h);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public p d() {
        return (p) i0(new d());
    }

    public boolean d0() {
        return I(this.f15345g) || I(this.f15347i) || I(this.f15348j) || I(this.f15346h);
    }

    @Override // java.lang.Comparable
    /* renamed from: e0 */
    public int compareTo(s sVar) {
        if (this.f15346h != null) {
            if (sVar.f15346h == null) {
                return -1;
            }
        } else if (sVar.f15346h != null) {
            return 1;
        }
        return getName().compareTo(sVar.getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotationIntrospector.ReferenceProperty f() {
        AnnotationIntrospector.ReferenceProperty referenceProperty = this.f15350l;
        if (referenceProperty != null) {
            if (referenceProperty == f15339m) {
                return null;
            }
            return referenceProperty;
        }
        AnnotationIntrospector.ReferenceProperty referenceProperty2 = (AnnotationIntrospector.ReferenceProperty) i0(new b());
        this.f15350l = referenceProperty2 == null ? f15339m : referenceProperty2;
        return referenceProperty2;
    }

    public Collection<s> f0(Collection<PropertyName> collection) {
        HashMap hashMap = new HashMap();
        K(collection, hashMap, this.f15345g);
        K(collection, hashMap, this.f15347i);
        K(collection, hashMap, this.f15348j);
        K(collection, hashMap, this.f15346h);
        return hashMap.values();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public Class<?>[] g() {
        return (Class[]) i0(new a());
    }

    public JsonProperty.Access g0() {
        return (JsonProperty.Access) j0(new e(), JsonProperty.Access.AUTO);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyName getFullName() {
        return this.f15343e;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyMetadata getMetadata() {
        if (this.f15349k == null) {
            AnnotatedMember m02 = m0();
            if (m02 == null) {
                this.f15349k = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
            } else {
                Boolean hasRequiredMarker = this.f15342d.hasRequiredMarker(m02);
                String findPropertyDescription = this.f15342d.findPropertyDescription(m02);
                Integer findPropertyIndex = this.f15342d.findPropertyIndex(m02);
                String findPropertyDefaultValue = this.f15342d.findPropertyDefaultValue(m02);
                if (hasRequiredMarker == null && findPropertyIndex == null && findPropertyDefaultValue == null) {
                    PropertyMetadata propertyMetadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
                    if (findPropertyDescription != null) {
                        propertyMetadata = propertyMetadata.withDescription(findPropertyDescription);
                    }
                    this.f15349k = propertyMetadata;
                } else {
                    this.f15349k = PropertyMetadata.construct(hasRequiredMarker, findPropertyDescription, findPropertyIndex, findPropertyDefaultValue);
                }
                if (!this.f15340b) {
                    this.f15349k = N(this.f15349k, m02);
                }
            }
        }
        return this.f15349k;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k, com.fasterxml.jackson.databind.util.n
    public String getName() {
        PropertyName propertyName = this.f15343e;
        if (propertyName == null) {
            return null;
        }
        return propertyName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyName getWrapperName() {
        AnnotationIntrospector annotationIntrospector;
        AnnotatedMember q9 = q();
        if (q9 == null || (annotationIntrospector = this.f15342d) == null) {
            return null;
        }
        return annotationIntrospector.findWrapperName(q9);
    }

    public Set<PropertyName> h0() {
        Set<PropertyName> L = L(this.f15346h, L(this.f15348j, L(this.f15347i, L(this.f15345g, null))));
        return L == null ? Collections.emptySet() : L;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedParameter i() {
        g gVar = this.f15346h;
        if (gVar == null) {
            return null;
        }
        while (!(((AnnotatedParameter) gVar.f15357a).getOwner() instanceof AnnotatedConstructor)) {
            gVar = gVar.f15358b;
            if (gVar == null) {
                return this.f15346h.f15357a;
            }
        }
        return (AnnotatedParameter) gVar.f15357a;
    }

    protected <T> T i0(i<T> iVar) {
        g<AnnotatedMethod> gVar;
        g<AnnotatedField> gVar2;
        if (this.f15342d != null) {
            if (this.f15340b) {
                g<AnnotatedMethod> gVar3 = this.f15347i;
                if (gVar3 != null) {
                    r1 = iVar.a(gVar3.f15357a);
                }
            } else {
                g<AnnotatedParameter> gVar4 = this.f15346h;
                r1 = gVar4 != null ? iVar.a(gVar4.f15357a) : null;
                if (r1 == null && (gVar = this.f15348j) != null) {
                    r1 = iVar.a(gVar.f15357a);
                }
            }
            return (r1 != null || (gVar2 = this.f15345g) == null) ? r1 : iVar.a(gVar2.f15357a);
        }
        return null;
    }

    protected <T> T j0(i<T> iVar, T t9) {
        T a10;
        T a11;
        T a12;
        T a13;
        T a14;
        T a15;
        T a16;
        T a17;
        if (this.f15342d == null) {
            return null;
        }
        if (this.f15340b) {
            g<AnnotatedMethod> gVar = this.f15347i;
            if (gVar == null || (a17 = iVar.a(gVar.f15357a)) == null || a17 == t9) {
                g<AnnotatedField> gVar2 = this.f15345g;
                if (gVar2 == null || (a16 = iVar.a(gVar2.f15357a)) == null || a16 == t9) {
                    g<AnnotatedParameter> gVar3 = this.f15346h;
                    if (gVar3 == null || (a15 = iVar.a(gVar3.f15357a)) == null || a15 == t9) {
                        g<AnnotatedMethod> gVar4 = this.f15348j;
                        if (gVar4 == null || (a14 = iVar.a(gVar4.f15357a)) == null || a14 == t9) {
                            return null;
                        }
                        return a14;
                    }
                    return a15;
                }
                return a16;
            }
            return a17;
        }
        g<AnnotatedParameter> gVar5 = this.f15346h;
        if (gVar5 == null || (a13 = iVar.a(gVar5.f15357a)) == null || a13 == t9) {
            g<AnnotatedMethod> gVar6 = this.f15348j;
            if (gVar6 == null || (a12 = iVar.a(gVar6.f15357a)) == null || a12 == t9) {
                g<AnnotatedField> gVar7 = this.f15345g;
                if (gVar7 == null || (a11 = iVar.a(gVar7.f15357a)) == null || a11 == t9) {
                    g<AnnotatedMethod> gVar8 = this.f15347i;
                    if (gVar8 == null || (a10 = iVar.a(gVar8.f15357a)) == null || a10 == t9) {
                        return null;
                    }
                    return a10;
                }
                return a11;
            }
            return a12;
        }
        return a13;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public Iterator<AnnotatedParameter> k() {
        g<AnnotatedParameter> gVar = this.f15346h;
        if (gVar == null) {
            return com.fasterxml.jackson.databind.util.g.p();
        }
        return new h(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedField k0() {
        g<AnnotatedField> gVar = this.f15345g;
        if (gVar == null) {
            return null;
        }
        return gVar.f15357a;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedField l() {
        g<AnnotatedField> gVar = this.f15345g;
        if (gVar == null) {
            return null;
        }
        AnnotatedField annotatedField = gVar.f15357a;
        for (g gVar2 = gVar.f15358b; gVar2 != null; gVar2 = gVar2.f15358b) {
            AnnotatedField annotatedField2 = (AnnotatedField) gVar2.f15357a;
            Class<?> declaringClass = annotatedField.getDeclaringClass();
            Class<?> declaringClass2 = annotatedField2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedField = annotatedField2;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                }
            }
            throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + annotatedField.getFullName() + " vs " + annotatedField2.getFullName());
        }
        return annotatedField;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMethod l0() {
        g<AnnotatedMethod> gVar = this.f15347i;
        if (gVar == null) {
            return null;
        }
        return gVar.f15357a;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMethod m() {
        g<AnnotatedMethod> gVar = this.f15347i;
        if (gVar == null) {
            return null;
        }
        g<AnnotatedMethod> gVar2 = gVar.f15358b;
        if (gVar2 == null) {
            return gVar.f15357a;
        }
        for (g<AnnotatedMethod> gVar3 = gVar2; gVar3 != null; gVar3 = gVar3.f15358b) {
            Class<?> declaringClass = gVar.f15357a.getDeclaringClass();
            Class<?> declaringClass2 = gVar3.f15357a.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        continue;
                    }
                }
                gVar = gVar3;
            }
            int O = O(gVar3.f15357a);
            int O2 = O(gVar.f15357a);
            if (O != O2) {
                if (O >= O2) {
                }
                gVar = gVar3;
            } else {
                throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + gVar.f15357a.getFullName() + " vs " + gVar3.f15357a.getFullName());
            }
        }
        this.f15347i = gVar.f();
        return gVar.f15357a;
    }

    protected AnnotatedMember m0() {
        if (this.f15340b) {
            g<AnnotatedMethod> gVar = this.f15347i;
            if (gVar != null) {
                return gVar.f15357a;
            }
            g<AnnotatedField> gVar2 = this.f15345g;
            if (gVar2 != null) {
                return gVar2.f15357a;
            }
            return null;
        }
        g<AnnotatedParameter> gVar3 = this.f15346h;
        if (gVar3 != null) {
            return gVar3.f15357a;
        }
        g<AnnotatedMethod> gVar4 = this.f15348j;
        if (gVar4 != null) {
            return gVar4.f15357a;
        }
        g<AnnotatedField> gVar5 = this.f15345g;
        if (gVar5 != null) {
            return gVar5.f15357a;
        }
        g<AnnotatedMethod> gVar6 = this.f15347i;
        if (gVar6 != null) {
            return gVar6.f15357a;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public String n() {
        return this.f15344f.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMethod n0() {
        g<AnnotatedMethod> gVar = this.f15348j;
        if (gVar == null) {
            return null;
        }
        return gVar.f15357a;
    }

    public void p0(boolean z9) {
        if (z9) {
            g<AnnotatedMethod> gVar = this.f15347i;
            if (gVar != null) {
                this.f15347i = J(this.f15347i, P(0, gVar, this.f15345g, this.f15346h, this.f15348j));
                return;
            }
            g<AnnotatedField> gVar2 = this.f15345g;
            if (gVar2 != null) {
                this.f15345g = J(this.f15345g, P(0, gVar2, this.f15346h, this.f15348j));
                return;
            }
            return;
        }
        g<AnnotatedParameter> gVar3 = this.f15346h;
        if (gVar3 != null) {
            this.f15346h = J(this.f15346h, P(0, gVar3, this.f15348j, this.f15345g, this.f15347i));
            return;
        }
        g<AnnotatedMethod> gVar4 = this.f15348j;
        if (gVar4 != null) {
            this.f15348j = J(this.f15348j, P(0, gVar4, this.f15345g, this.f15347i));
            return;
        }
        g<AnnotatedField> gVar5 = this.f15345g;
        if (gVar5 != null) {
            this.f15345g = J(this.f15345g, P(0, gVar5, this.f15347i));
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMember q() {
        if (this.f15340b) {
            return h();
        }
        AnnotatedMember o9 = o();
        return o9 == null ? h() : o9;
    }

    public void q0() {
        this.f15346h = null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public JavaType r() {
        if (this.f15340b) {
            com.fasterxml.jackson.databind.introspect.a m9 = m();
            if (m9 == null && (m9 = l()) == null) {
                return TypeFactory.unknownType();
            }
            return m9.getType();
        }
        AnnotatedMember i4 = i();
        if (i4 == null) {
            AnnotatedMethod t9 = t();
            if (t9 != null) {
                return t9.getParameterType(0);
            }
            i4 = l();
        }
        if (i4 == null && (i4 = m()) == null) {
            return TypeFactory.unknownType();
        }
        return i4.getType();
    }

    public void r0() {
        this.f15345g = R(this.f15345g);
        this.f15347i = R(this.f15347i);
        this.f15348j = R(this.f15348j);
        this.f15346h = R(this.f15346h);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public Class<?> s() {
        return r().getRawClass();
    }

    @Deprecated
    public JsonProperty.Access s0(boolean z9) {
        return t0(z9, null);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMethod t() {
        g<AnnotatedMethod> gVar = this.f15348j;
        if (gVar == null) {
            return null;
        }
        g<AnnotatedMethod> gVar2 = gVar.f15358b;
        if (gVar2 == null) {
            return gVar.f15357a;
        }
        for (g<AnnotatedMethod> gVar3 = gVar2; gVar3 != null; gVar3 = gVar3.f15358b) {
            AnnotatedMethod T = T(gVar.f15357a, gVar3.f15357a);
            if (T != gVar.f15357a) {
                if (T != gVar3.f15357a) {
                    return U(gVar, gVar3);
                }
                gVar = gVar3;
            }
        }
        this.f15348j = gVar.f();
        return gVar.f15357a;
    }

    public JsonProperty.Access t0(boolean z9, q qVar) {
        JsonProperty.Access g02 = g0();
        if (g02 == null) {
            g02 = JsonProperty.Access.AUTO;
        }
        int i4 = f.f15356a[g02.ordinal()];
        if (i4 == 1) {
            if (qVar != null) {
                qVar.k(getName());
                for (PropertyName propertyName : h0()) {
                    qVar.k(propertyName.getSimpleName());
                }
            }
            this.f15348j = null;
            this.f15346h = null;
            if (!this.f15340b) {
                this.f15345g = null;
            }
        } else if (i4 != 2) {
            if (i4 != 3) {
                this.f15347i = S(this.f15347i);
                this.f15346h = S(this.f15346h);
                if (!z9 || this.f15347i == null) {
                    this.f15345g = S(this.f15345g);
                    this.f15348j = S(this.f15348j);
                }
            } else {
                this.f15347i = null;
                if (this.f15340b) {
                    this.f15345g = null;
                }
            }
        }
        return g02;
    }

    public String toString() {
        return "[Property '" + this.f15343e + "'; ctors: " + this.f15346h + ", field(s): " + this.f15345g + ", getter(s): " + this.f15347i + ", setter(s): " + this.f15348j + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean u() {
        return this.f15346h != null;
    }

    public void u0() {
        this.f15345g = W(this.f15345g);
        this.f15347i = W(this.f15347i);
        this.f15348j = W(this.f15348j);
        this.f15346h = W(this.f15346h);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean v() {
        return this.f15345g != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    /* renamed from: v0 */
    public s C(PropertyName propertyName) {
        return new s(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean w() {
        return this.f15347i != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    /* renamed from: w0 */
    public s D(String str) {
        PropertyName withSimpleName = this.f15343e.withSimpleName(str);
        return withSimpleName == this.f15343e ? this : new s(this, withSimpleName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean x(PropertyName propertyName) {
        return this.f15343e.equals(propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean y() {
        return this.f15348j != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean z() {
        return F(this.f15345g) || F(this.f15347i) || F(this.f15348j) || E(this.f15346h);
    }

    protected s(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z9, PropertyName propertyName, PropertyName propertyName2) {
        this.f15341c = mapperConfig;
        this.f15342d = annotationIntrospector;
        this.f15344f = propertyName;
        this.f15343e = propertyName2;
        this.f15340b = z9;
    }

    protected s(s sVar, PropertyName propertyName) {
        this.f15341c = sVar.f15341c;
        this.f15342d = sVar.f15342d;
        this.f15344f = sVar.f15344f;
        this.f15343e = propertyName;
        this.f15345g = sVar.f15345g;
        this.f15346h = sVar.f15346h;
        this.f15347i = sVar.f15347i;
        this.f15348j = sVar.f15348j;
        this.f15340b = sVar.f15340b;
    }
}
