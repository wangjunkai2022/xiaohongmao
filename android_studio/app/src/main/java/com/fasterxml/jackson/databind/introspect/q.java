package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: POJOPropertiesCollector.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    protected final MapperConfig<?> f15316a;

    /* renamed from: b  reason: collision with root package name */
    protected final AccessorNamingStrategy f15317b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f15318c;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15319d;

    /* renamed from: e  reason: collision with root package name */
    protected final c f15320e;

    /* renamed from: f  reason: collision with root package name */
    protected final VisibilityChecker<?> f15321f;

    /* renamed from: g  reason: collision with root package name */
    protected final AnnotationIntrospector f15322g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f15323h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f15324i;

    /* renamed from: j  reason: collision with root package name */
    protected LinkedHashMap<String, s> f15325j;

    /* renamed from: k  reason: collision with root package name */
    protected LinkedList<s> f15326k;

    /* renamed from: l  reason: collision with root package name */
    protected Map<PropertyName, PropertyName> f15327l;

    /* renamed from: m  reason: collision with root package name */
    protected LinkedList<AnnotatedMember> f15328m;

    /* renamed from: n  reason: collision with root package name */
    protected LinkedList<AnnotatedMember> f15329n;

    /* renamed from: o  reason: collision with root package name */
    protected LinkedList<AnnotatedMethod> f15330o;

    /* renamed from: p  reason: collision with root package name */
    protected LinkedList<AnnotatedMember> f15331p;

    /* renamed from: q  reason: collision with root package name */
    protected LinkedList<AnnotatedMember> f15332q;

    /* renamed from: r  reason: collision with root package name */
    protected LinkedList<AnnotatedMember> f15333r;

    /* renamed from: s  reason: collision with root package name */
    protected HashSet<String> f15334s;

    /* renamed from: t  reason: collision with root package name */
    protected LinkedHashMap<Object, AnnotatedMember> f15335t;
    @Deprecated

    /* renamed from: u  reason: collision with root package name */
    protected final boolean f15336u;
    @Deprecated

    /* renamed from: v  reason: collision with root package name */
    protected String f15337v;

    /* JADX INFO: Access modifiers changed from: protected */
    public q(MapperConfig<?> mapperConfig, boolean z9, JavaType javaType, c cVar, AccessorNamingStrategy accessorNamingStrategy) {
        this.f15337v = "set";
        this.f15316a = mapperConfig;
        this.f15318c = z9;
        this.f15319d = javaType;
        this.f15320e = cVar;
        if (mapperConfig.isAnnotationProcessingEnabled()) {
            this.f15323h = true;
            this.f15322g = mapperConfig.getAnnotationIntrospector();
        } else {
            this.f15323h = false;
            this.f15322g = AnnotationIntrospector.nopInstance();
        }
        this.f15321f = mapperConfig.getDefaultVisibilityChecker(javaType.getRawClass(), cVar);
        this.f15317b = accessorNamingStrategy;
        this.f15336u = mapperConfig.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
    }

    private static AccessorNamingStrategy a(MapperConfig<?> mapperConfig, c cVar, String str) {
        if (str == null) {
            str = "set";
        }
        return new DefaultAccessorNamingStrategy.Provider().withSetterPrefix(str).forPOJO(mapperConfig, cVar);
    }

    private boolean i(Collection<s> collection) {
        for (s sVar : collection) {
            if (sVar.getMetadata().hasIndex()) {
                return true;
            }
        }
        return false;
    }

    private String j(String str) {
        PropertyName propertyName;
        Map<PropertyName, PropertyName> map = this.f15327l;
        return (map == null || (propertyName = map.get(n(str))) == null) ? str : propertyName.getSimpleName();
    }

    private PropertyNamingStrategy m() {
        PropertyNamingStrategy e4;
        Object findNamingStrategy = this.f15322g.findNamingStrategy(this.f15320e);
        if (findNamingStrategy == null) {
            return this.f15316a.getPropertyNamingStrategy();
        }
        if (findNamingStrategy instanceof PropertyNamingStrategy) {
            return (PropertyNamingStrategy) findNamingStrategy;
        }
        if (findNamingStrategy instanceof Class) {
            Class<?> cls = (Class) findNamingStrategy;
            if (cls == PropertyNamingStrategy.class) {
                return null;
            }
            if (PropertyNamingStrategy.class.isAssignableFrom(cls)) {
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f15316a.getHandlerInstantiator();
                return (handlerInstantiator == null || (e4 = handlerInstantiator.e(this.f15316a, this.f15320e, cls)) == null) ? (PropertyNamingStrategy) com.fasterxml.jackson.databind.util.g.n(cls, this.f15316a.canOverrideAccessModifiers()) : e4;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<PropertyNamingStrategy>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned PropertyNamingStrategy definition of type " + findNamingStrategy.getClass().getName() + "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead");
    }

    private PropertyName n(String str) {
        return PropertyName.construct(str, null);
    }

    public AnnotationIntrospector A() {
        return this.f15322g;
    }

    @Deprecated
    public AnnotatedMember B() {
        return D();
    }

    public AnnotatedMember C() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMember> linkedList = this.f15329n;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'any-getter' fields defined (%s vs %s)", this.f15329n.get(0), this.f15329n.get(1));
            }
            return this.f15329n.getFirst();
        }
        return null;
    }

    public AnnotatedMember D() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMember> linkedList = this.f15328m;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'any-getter' methods defined (%s vs %s)", this.f15328m.get(0), this.f15328m.get(1));
            }
            return this.f15328m.getFirst();
        }
        return null;
    }

    public AnnotatedMember E() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMember> linkedList = this.f15331p;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'any-setter' fields defined (%s vs %s)", this.f15331p.get(0), this.f15331p.get(1));
            }
            return this.f15331p.getFirst();
        }
        return null;
    }

    public AnnotatedMethod F() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMethod> linkedList = this.f15330o;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'any-setter' methods defined (%s vs %s)", this.f15330o.get(0), this.f15330o.get(1));
            }
            return this.f15330o.getFirst();
        }
        return null;
    }

    public c G() {
        return this.f15320e;
    }

    public MapperConfig<?> H() {
        return this.f15316a;
    }

    public Set<String> I() {
        return this.f15334s;
    }

    public Map<Object, AnnotatedMember> J() {
        if (!this.f15324i) {
            y();
        }
        return this.f15335t;
    }

    public AnnotatedMember K() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMember> linkedList = this.f15332q;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'as-key' properties defined (%s vs %s)", this.f15332q.get(0), this.f15332q.get(1));
            }
            return this.f15332q.get(0);
        }
        return null;
    }

    public AnnotatedMember L() {
        if (!this.f15324i) {
            y();
        }
        LinkedList<AnnotatedMember> linkedList = this.f15333r;
        if (linkedList != null) {
            if (linkedList.size() > 1) {
                R("Multiple 'as-value' properties defined (%s vs %s)", this.f15333r.get(0), this.f15333r.get(1));
            }
            return this.f15333r.get(0);
        }
        return null;
    }

    @Deprecated
    public AnnotatedMethod M() {
        AnnotatedMember L = L();
        if (L instanceof AnnotatedMethod) {
            return (AnnotatedMethod) L;
        }
        return null;
    }

    public p N() {
        p findObjectIdInfo = this.f15322g.findObjectIdInfo(this.f15320e);
        return findObjectIdInfo != null ? this.f15322g.findObjectReferenceInfo(this.f15320e, findObjectIdInfo) : findObjectIdInfo;
    }

    public List<k> O() {
        return new ArrayList(P().values());
    }

    protected Map<String, s> P() {
        if (!this.f15324i) {
            y();
        }
        return this.f15325j;
    }

    public JavaType Q() {
        return this.f15319d;
    }

    protected void R(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new IllegalArgumentException("Problem with definition of " + this.f15320e + ": " + str);
    }

    protected void b(Map<String, s> map, AnnotatedParameter annotatedParameter) {
        JsonCreator.Mode findCreatorAnnotation;
        String findImplicitPropertyName = this.f15322g.findImplicitPropertyName(annotatedParameter);
        if (findImplicitPropertyName == null) {
            findImplicitPropertyName = "";
        }
        PropertyName findNameForDeserialization = this.f15322g.findNameForDeserialization(annotatedParameter);
        boolean z9 = (findNameForDeserialization == null || findNameForDeserialization.isEmpty()) ? false : true;
        if (!z9) {
            if (findImplicitPropertyName.isEmpty() || (findCreatorAnnotation = this.f15322g.findCreatorAnnotation(this.f15316a, annotatedParameter.getOwner())) == null || findCreatorAnnotation == JsonCreator.Mode.DISABLED) {
                return;
            }
            findNameForDeserialization = PropertyName.construct(findImplicitPropertyName);
        }
        PropertyName propertyName = findNameForDeserialization;
        String j4 = j(findImplicitPropertyName);
        s o9 = (z9 && j4.isEmpty()) ? o(map, propertyName) : p(map, j4);
        o9.Y(annotatedParameter, propertyName, z9, true, false);
        this.f15326k.add(o9);
    }

    protected void c(Map<String, s> map) {
        if (this.f15323h) {
            Iterator<AnnotatedConstructor> it = this.f15320e.o().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AnnotatedConstructor next = it.next();
                if (this.f15326k == null) {
                    this.f15326k = new LinkedList<>();
                }
                int parameterCount = next.getParameterCount();
                for (int i4 = 0; i4 < parameterCount; i4++) {
                    b(map, next.getParameter(i4));
                }
            }
            for (AnnotatedMethod annotatedMethod : this.f15320e.q()) {
                if (this.f15326k == null) {
                    this.f15326k = new LinkedList<>();
                }
                int parameterCount2 = annotatedMethod.getParameterCount();
                for (int i10 = 0; i10 < parameterCount2; i10++) {
                    b(map, annotatedMethod.getParameter(i10));
                }
            }
        }
    }

    protected void d(Map<String, s> map) {
        PropertyName findNameForDeserialization;
        PropertyName propertyName;
        boolean z9;
        boolean z10;
        boolean z11;
        AnnotationIntrospector annotationIntrospector = this.f15322g;
        boolean z12 = (this.f15318c || this.f15316a.isEnabled(MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS)) ? false : true;
        boolean isEnabled = this.f15316a.isEnabled(MapperFeature.PROPAGATE_TRANSIENT_MARKER);
        for (AnnotatedField annotatedField : this.f15320e.k()) {
            Boolean bool = Boolean.TRUE;
            if (bool.equals(annotationIntrospector.hasAsKey(this.f15316a, annotatedField))) {
                if (this.f15332q == null) {
                    this.f15332q = new LinkedList<>();
                }
                this.f15332q.add(annotatedField);
            }
            if (bool.equals(annotationIntrospector.hasAsValue(annotatedField))) {
                if (this.f15333r == null) {
                    this.f15333r = new LinkedList<>();
                }
                this.f15333r.add(annotatedField);
            } else {
                boolean equals = bool.equals(annotationIntrospector.hasAnyGetter(annotatedField));
                boolean equals2 = bool.equals(annotationIntrospector.hasAnySetter(annotatedField));
                if (equals || equals2) {
                    if (equals) {
                        if (this.f15329n == null) {
                            this.f15329n = new LinkedList<>();
                        }
                        this.f15329n.add(annotatedField);
                    }
                    if (equals2) {
                        if (this.f15331p == null) {
                            this.f15331p = new LinkedList<>();
                        }
                        this.f15331p.add(annotatedField);
                    }
                } else {
                    String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedField);
                    if (findImplicitPropertyName == null) {
                        findImplicitPropertyName = annotatedField.getName();
                    }
                    String modifyFieldName = this.f15317b.modifyFieldName(annotatedField, findImplicitPropertyName);
                    if (modifyFieldName != null) {
                        PropertyName n9 = n(modifyFieldName);
                        PropertyName findRenameByField = annotationIntrospector.findRenameByField(this.f15316a, annotatedField, n9);
                        if (findRenameByField != null && !findRenameByField.equals(n9)) {
                            if (this.f15327l == null) {
                                this.f15327l = new HashMap();
                            }
                            this.f15327l.put(findRenameByField, n9);
                        }
                        if (this.f15318c) {
                            findNameForDeserialization = annotationIntrospector.findNameForSerialization(annotatedField);
                        } else {
                            findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedField);
                        }
                        boolean z13 = findNameForDeserialization != null;
                        if (z13 && findNameForDeserialization.isEmpty()) {
                            propertyName = n(modifyFieldName);
                            z9 = false;
                        } else {
                            propertyName = findNameForDeserialization;
                            z9 = z13;
                        }
                        boolean z14 = propertyName != null;
                        if (!z14) {
                            z14 = this.f15321f.isFieldVisible(annotatedField);
                        }
                        boolean hasIgnoreMarker = annotationIntrospector.hasIgnoreMarker(annotatedField);
                        if (!annotatedField.isTransient() || z13) {
                            z10 = hasIgnoreMarker;
                            z11 = z14;
                        } else if (isEnabled) {
                            z11 = false;
                            z10 = true;
                        } else {
                            z10 = hasIgnoreMarker;
                            z11 = false;
                        }
                        if (!z12 || propertyName != null || z10 || !Modifier.isFinal(annotatedField.getModifiers())) {
                            p(map, modifyFieldName).Z(annotatedField, propertyName, z9, z11, z10);
                        }
                    }
                }
            }
        }
    }

    protected void e(Map<String, s> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        PropertyName propertyName;
        boolean z9;
        String str;
        boolean z10;
        boolean isGetterVisible;
        Class<?> rawReturnType = annotatedMethod.getRawReturnType();
        if (rawReturnType != Void.TYPE) {
            if (rawReturnType != Void.class || this.f15316a.isEnabled(MapperFeature.ALLOW_VOID_VALUED_PROPERTIES)) {
                Boolean bool = Boolean.TRUE;
                if (bool.equals(annotationIntrospector.hasAnyGetter(annotatedMethod))) {
                    if (this.f15328m == null) {
                        this.f15328m = new LinkedList<>();
                    }
                    this.f15328m.add(annotatedMethod);
                } else if (bool.equals(annotationIntrospector.hasAsKey(this.f15316a, annotatedMethod))) {
                    if (this.f15332q == null) {
                        this.f15332q = new LinkedList<>();
                    }
                    this.f15332q.add(annotatedMethod);
                } else if (bool.equals(annotationIntrospector.hasAsValue(annotatedMethod))) {
                    if (this.f15333r == null) {
                        this.f15333r = new LinkedList<>();
                    }
                    this.f15333r.add(annotatedMethod);
                } else {
                    PropertyName findNameForSerialization = annotationIntrospector.findNameForSerialization(annotatedMethod);
                    boolean z11 = false;
                    boolean z12 = findNameForSerialization != null;
                    if (!z12) {
                        str = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                        if (str == null) {
                            str = this.f15317b.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName());
                        }
                        if (str == null) {
                            str = this.f15317b.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                            if (str == null) {
                                return;
                            }
                            isGetterVisible = this.f15321f.isIsGetterVisible(annotatedMethod);
                        } else {
                            isGetterVisible = this.f15321f.isGetterVisible(annotatedMethod);
                        }
                        propertyName = findNameForSerialization;
                        z10 = isGetterVisible;
                        z9 = z12;
                    } else {
                        String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                        if (findImplicitPropertyName == null && (findImplicitPropertyName = this.f15317b.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName())) == null) {
                            findImplicitPropertyName = this.f15317b.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                        }
                        if (findImplicitPropertyName == null) {
                            findImplicitPropertyName = annotatedMethod.getName();
                        }
                        if (findNameForSerialization.isEmpty()) {
                            findNameForSerialization = n(findImplicitPropertyName);
                        } else {
                            z11 = z12;
                        }
                        propertyName = findNameForSerialization;
                        z9 = z11;
                        str = findImplicitPropertyName;
                        z10 = true;
                    }
                    p(map, j(str)).a0(annotatedMethod, propertyName, z9, z10, annotationIntrospector.hasIgnoreMarker(annotatedMethod));
                }
            }
        }
    }

    protected void f(Map<String, s> map) {
        for (AnnotatedMember annotatedMember : this.f15320e.k()) {
            l(this.f15322g.findInjectableValue(annotatedMember), annotatedMember);
        }
        for (AnnotatedMethod annotatedMethod : this.f15320e.w()) {
            if (annotatedMethod.getParameterCount() == 1) {
                l(this.f15322g.findInjectableValue(annotatedMethod), annotatedMethod);
            }
        }
    }

    protected void g(Map<String, s> map) {
        for (AnnotatedMethod annotatedMethod : this.f15320e.w()) {
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                e(map, annotatedMethod, this.f15322g);
            } else if (parameterCount == 1) {
                h(map, annotatedMethod, this.f15322g);
            } else if (parameterCount == 2 && Boolean.TRUE.equals(this.f15322g.hasAnySetter(annotatedMethod))) {
                if (this.f15330o == null) {
                    this.f15330o = new LinkedList<>();
                }
                this.f15330o.add(annotatedMethod);
            }
        }
    }

    protected void h(Map<String, s> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        PropertyName propertyName;
        boolean z9;
        String str;
        boolean z10;
        PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedMethod);
        boolean z11 = false;
        boolean z12 = findNameForDeserialization != null;
        if (!z12) {
            str = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            if (str == null) {
                str = this.f15317b.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            if (str == null) {
                return;
            }
            propertyName = findNameForDeserialization;
            z10 = this.f15321f.isSetterVisible(annotatedMethod);
            z9 = z12;
        } else {
            String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            if (findImplicitPropertyName == null) {
                findImplicitPropertyName = this.f15317b.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            if (findImplicitPropertyName == null) {
                findImplicitPropertyName = annotatedMethod.getName();
            }
            if (findNameForDeserialization.isEmpty()) {
                findNameForDeserialization = n(findImplicitPropertyName);
            } else {
                z11 = z12;
            }
            propertyName = findNameForDeserialization;
            z9 = z11;
            str = findImplicitPropertyName;
            z10 = true;
        }
        p(map, j(str)).b0(annotatedMethod, propertyName, z9, z10, annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(String str) {
        if (this.f15318c || str == null) {
            return;
        }
        if (this.f15334s == null) {
            this.f15334s = new HashSet<>();
        }
        this.f15334s.add(str);
    }

    protected void l(JacksonInject.Value value, AnnotatedMember annotatedMember) {
        if (value == null) {
            return;
        }
        Object id = value.getId();
        if (this.f15335t == null) {
            this.f15335t = new LinkedHashMap<>();
        }
        AnnotatedMember put = this.f15335t.put(id, annotatedMember);
        if (put == null || put.getClass() != annotatedMember.getClass()) {
            return;
        }
        String name = id.getClass().getName();
        throw new IllegalArgumentException("Duplicate injectable value with id '" + id + "' (of type " + name + ")");
    }

    protected s o(Map<String, s> map, PropertyName propertyName) {
        String simpleName = propertyName.getSimpleName();
        s sVar = map.get(simpleName);
        if (sVar == null) {
            s sVar2 = new s(this.f15316a, this.f15322g, this.f15318c, propertyName);
            map.put(simpleName, sVar2);
            return sVar2;
        }
        return sVar;
    }

    protected s p(Map<String, s> map, String str) {
        s sVar = map.get(str);
        if (sVar == null) {
            s sVar2 = new s(this.f15316a, this.f15322g, this.f15318c, PropertyName.construct(str));
            map.put(str, sVar2);
            return sVar2;
        }
        return sVar;
    }

    protected void q(Map<String, s> map) {
        boolean isEnabled = this.f15316a.isEnabled(MapperFeature.INFER_PROPERTY_MUTATORS);
        for (s sVar : map.values()) {
            sVar.t0(isEnabled, this.f15318c ? null : this);
        }
    }

    protected void r(Map<String, s> map) {
        Iterator<s> it = map.values().iterator();
        while (it.hasNext()) {
            s next = it.next();
            if (!next.d0()) {
                it.remove();
            } else if (next.c0()) {
                if (!next.z()) {
                    it.remove();
                    k(next.getName());
                } else {
                    next.r0();
                    if (!next.a()) {
                        k(next.getName());
                    }
                }
            }
        }
    }

    protected void s(Map<String, s> map) {
        HashSet<String> hashSet;
        Iterator<Map.Entry<String, s>> it = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it.hasNext()) {
            s value = it.next().getValue();
            Set<PropertyName> h02 = value.h0();
            if (!h02.isEmpty()) {
                it.remove();
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                if (h02.size() == 1) {
                    linkedList.add(value.C(h02.iterator().next()));
                } else {
                    linkedList.addAll(value.f0(h02));
                }
            }
        }
        if (linkedList != null) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                s sVar = (s) it2.next();
                String name = sVar.getName();
                s sVar2 = map.get(name);
                if (sVar2 == null) {
                    map.put(name, sVar);
                } else {
                    sVar2.X(sVar);
                }
                if (v(sVar, this.f15326k) && (hashSet = this.f15334s) != null) {
                    hashSet.remove(name);
                }
            }
        }
    }

    protected void t(Map<String, s> map, PropertyNamingStrategy propertyNamingStrategy) {
        s[] sVarArr = (s[]) map.values().toArray(new s[map.size()]);
        map.clear();
        for (s sVar : sVarArr) {
            PropertyName fullName = sVar.getFullName();
            String str = null;
            if (!sVar.A() || this.f15316a.isEnabled(MapperFeature.ALLOW_EXPLICIT_PROPERTY_RENAMING)) {
                if (this.f15318c) {
                    if (sVar.w()) {
                        str = propertyNamingStrategy.nameForGetterMethod(this.f15316a, sVar.m(), fullName.getSimpleName());
                    } else if (sVar.v()) {
                        str = propertyNamingStrategy.nameForField(this.f15316a, sVar.l(), fullName.getSimpleName());
                    }
                } else if (sVar.y()) {
                    str = propertyNamingStrategy.nameForSetterMethod(this.f15316a, sVar.n0(), fullName.getSimpleName());
                } else if (sVar.u()) {
                    str = propertyNamingStrategy.nameForConstructorParameter(this.f15316a, sVar.i(), fullName.getSimpleName());
                } else if (sVar.v()) {
                    str = propertyNamingStrategy.nameForField(this.f15316a, sVar.k0(), fullName.getSimpleName());
                } else if (sVar.w()) {
                    str = propertyNamingStrategy.nameForGetterMethod(this.f15316a, sVar.l0(), fullName.getSimpleName());
                }
            }
            if (str != null && !fullName.hasSimpleName(str)) {
                sVar = sVar.D(str);
            } else {
                str = fullName.getSimpleName();
            }
            s sVar2 = map.get(str);
            if (sVar2 == null) {
                map.put(str, sVar);
            } else {
                sVar2.X(sVar);
            }
            v(sVar, this.f15326k);
        }
    }

    protected void u(Map<String, s> map) {
        PropertyName findWrapperName;
        Iterator<Map.Entry<String, s>> it = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it.hasNext()) {
            s value = it.next().getValue();
            AnnotatedMember q9 = value.q();
            if (q9 != null && (findWrapperName = this.f15322g.findWrapperName(q9)) != null && findWrapperName.hasSimpleName() && !findWrapperName.equals(value.getFullName())) {
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                linkedList.add(value.C(findWrapperName));
                it.remove();
            }
        }
        if (linkedList != null) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                s sVar = (s) it2.next();
                String name = sVar.getName();
                s sVar2 = map.get(name);
                if (sVar2 == null) {
                    map.put(name, sVar);
                } else {
                    sVar2.X(sVar);
                }
            }
        }
    }

    protected boolean v(s sVar, List<s> list) {
        if (list != null) {
            String n9 = sVar.n();
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (list.get(i4).n().equals(n9)) {
                    list.set(i4, sVar);
                    return true;
                }
            }
        }
        return false;
    }

    protected void w(Map<String, s> map) {
        boolean booleanValue;
        Map<? extends Object, ? extends Object> linkedHashMap;
        Collection<s> collection;
        AnnotationIntrospector annotationIntrospector = this.f15322g;
        Boolean findSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(this.f15320e);
        if (findSerializationSortAlphabetically == null) {
            booleanValue = this.f15316a.shouldSortPropertiesAlphabetically();
        } else {
            booleanValue = findSerializationSortAlphabetically.booleanValue();
        }
        boolean i4 = i(map.values());
        String[] findSerializationPropertyOrder = annotationIntrospector.findSerializationPropertyOrder(this.f15320e);
        if (booleanValue || i4 || this.f15326k != null || findSerializationPropertyOrder != null) {
            int size = map.size();
            if (booleanValue) {
                linkedHashMap = new TreeMap<>();
            } else {
                linkedHashMap = new LinkedHashMap<>(size + size);
            }
            for (s sVar : map.values()) {
                linkedHashMap.put(sVar.getName(), sVar);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(size + size);
            if (findSerializationPropertyOrder != null) {
                for (String str : findSerializationPropertyOrder) {
                    s sVar2 = (s) linkedHashMap.remove(str);
                    if (sVar2 == null) {
                        Iterator<s> it = map.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            s next = it.next();
                            if (str.equals(next.n())) {
                                str = next.getName();
                                sVar2 = next;
                                break;
                            }
                        }
                    }
                    if (sVar2 != null) {
                        linkedHashMap2.put(str, sVar2);
                    }
                }
            }
            if (i4) {
                TreeMap treeMap = new TreeMap();
                Iterator<Map.Entry<? extends Object, ? extends Object>> it2 = linkedHashMap.entrySet().iterator();
                while (it2.hasNext()) {
                    s sVar3 = (s) it2.next().getValue();
                    Integer index = sVar3.getMetadata().getIndex();
                    if (index != null) {
                        treeMap.put(index, sVar3);
                        it2.remove();
                    }
                }
                for (s sVar4 : treeMap.values()) {
                    linkedHashMap2.put(sVar4.getName(), sVar4);
                }
            }
            if (this.f15326k != null && (!booleanValue || this.f15316a.isEnabled(MapperFeature.SORT_CREATOR_PROPERTIES_FIRST))) {
                if (booleanValue) {
                    TreeMap treeMap2 = new TreeMap();
                    Iterator<s> it3 = this.f15326k.iterator();
                    while (it3.hasNext()) {
                        s next2 = it3.next();
                        treeMap2.put(next2.getName(), next2);
                    }
                    collection = treeMap2.values();
                } else {
                    collection = this.f15326k;
                }
                for (s sVar5 : collection) {
                    String name = sVar5.getName();
                    if (linkedHashMap.containsKey(name)) {
                        linkedHashMap2.put(name, sVar5);
                    }
                }
            }
            linkedHashMap2.putAll(linkedHashMap);
            map.clear();
            map.putAll(linkedHashMap2);
        }
    }

    @Deprecated
    protected void x(s sVar, List<s> list) {
        v(sVar, list);
    }

    protected void y() {
        LinkedHashMap<String, s> linkedHashMap = new LinkedHashMap<>();
        d(linkedHashMap);
        g(linkedHashMap);
        if (!this.f15320e.v()) {
            c(linkedHashMap);
        }
        r(linkedHashMap);
        q(linkedHashMap);
        s(linkedHashMap);
        f(linkedHashMap);
        for (s sVar : linkedHashMap.values()) {
            sVar.p0(this.f15318c);
        }
        PropertyNamingStrategy m9 = m();
        if (m9 != null) {
            t(linkedHashMap, m9);
        }
        for (s sVar2 : linkedHashMap.values()) {
            sVar2.u0();
        }
        if (this.f15316a.isEnabled(MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            u(linkedHashMap);
        }
        w(linkedHashMap);
        this.f15325j = linkedHashMap;
        this.f15324i = true;
    }

    @Deprecated
    public Class<?> z() {
        return this.f15322g.findPOJOBuilder(this.f15320e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public q(MapperConfig<?> mapperConfig, boolean z9, JavaType javaType, c cVar, String str) {
        this(mapperConfig, z9, javaType, cVar, a(mapperConfig, cVar, str));
        this.f15337v = str;
    }
}
