package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.g;
import com.fasterxml.jackson.databind.deser.impl.i;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@c2.a
/* loaded from: classes.dex */
public class MapDeserializer extends ContainerDeserializerBase<Map<Object, Object>> implements com.fasterxml.jackson.databind.deser.c, m {

    /* renamed from: u  reason: collision with root package name */
    private static final long f14902u = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final h f14903j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f14904k;

    /* renamed from: l  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14905l;

    /* renamed from: m  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14906m;

    /* renamed from: n  reason: collision with root package name */
    protected final ValueInstantiator f14907n;

    /* renamed from: o  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14908o;

    /* renamed from: p  reason: collision with root package name */
    protected g f14909p;

    /* renamed from: q  reason: collision with root package name */
    protected final boolean f14910q;

    /* renamed from: r  reason: collision with root package name */
    protected Set<String> f14911r;

    /* renamed from: s  reason: collision with root package name */
    protected Set<String> f14912s;

    /* renamed from: t  reason: collision with root package name */
    protected IgnorePropertiesUtil.Checker f14913t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends j.a {

        /* renamed from: c  reason: collision with root package name */
        private final b f14914c;

        /* renamed from: d  reason: collision with root package name */
        public final Map<Object, Object> f14915d;

        /* renamed from: e  reason: collision with root package name */
        public final Object f14916e;

        a(b bVar, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj) {
            super(unresolvedForwardReference, cls);
            this.f14915d = new LinkedHashMap();
            this.f14914c = bVar;
            this.f14916e = obj;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.j.a
        public void c(Object obj, Object obj2) throws IOException {
            this.f14914c.c(obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f14917a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Object, Object> f14918b;

        /* renamed from: c  reason: collision with root package name */
        private List<a> f14919c = new ArrayList();

        public b(Class<?> cls, Map<Object, Object> map) {
            this.f14917a = cls;
            this.f14918b = map;
        }

        public j.a a(UnresolvedForwardReference unresolvedForwardReference, Object obj) {
            a aVar = new a(this, unresolvedForwardReference, this.f14917a, obj);
            this.f14919c.add(aVar);
            return aVar;
        }

        public void b(Object obj, Object obj2) {
            if (this.f14919c.isEmpty()) {
                this.f14918b.put(obj, obj2);
                return;
            }
            List<a> list = this.f14919c;
            list.get(list.size() - 1).f14915d.put(obj, obj2);
        }

        public void c(Object obj, Object obj2) throws IOException {
            Iterator<a> it = this.f14919c.iterator();
            Map<Object, Object> map = this.f14918b;
            while (it.hasNext()) {
                a next = it.next();
                if (next.d(obj)) {
                    it.remove();
                    map.put(next.f14916e, obj2);
                    map.putAll(next.f14915d);
                    return;
                }
                map = next.f14915d;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
        }
    }

    public MapDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        super(javaType, (l) null, (Boolean) null);
        this.f14903j = hVar;
        this.f14905l = dVar;
        this.f14906m = bVar;
        this.f14907n = valueInstantiator;
        this.f14910q = valueInstantiator.canCreateUsingDefault();
        this.f14908o = null;
        this.f14909p = null;
        this.f14904k = E0(javaType, hVar);
        this.f14913t = null;
    }

    private void J0(DeserializationContext deserializationContext, b bVar, Object obj, UnresolvedForwardReference unresolvedForwardReference) throws JsonMappingException {
        if (bVar == null) {
            deserializationContext.reportInputMismatch(this, "Unresolved forward reference but no identity info: " + unresolvedForwardReference, new Object[0]);
        }
        unresolvedForwardReference.getRoid().a(bVar.a(unresolvedForwardReference, obj));
    }

    protected final boolean E0(JavaType javaType, h hVar) {
        JavaType keyType;
        if (hVar == null || (keyType = javaType.getKeyType()) == null) {
            return true;
        }
        Class<?> rawClass = keyType.getRawClass();
        return (rawClass == String.class || rawClass == Object.class) && B0(hVar);
    }

    protected final void F0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String M;
        Object deserializeWithType;
        h hVar = this.f14903j;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14905l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        boolean z9 = dVar.getObjectIdReader() != null;
        b bVar2 = z9 ? new b(this.f14860f.getContentType().getRawClass(), map) : null;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            JsonToken W = jsonParser.W();
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (W != jsonToken) {
                if (W == JsonToken.END_OBJECT) {
                    return;
                }
                deserializationContext.reportWrongTokenException(this, jsonToken, (String) null, new Object[0]);
            }
            M = jsonParser.M();
        }
        while (M != null) {
            Object deserializeKey = hVar.deserializeKey(M, deserializationContext);
            JsonToken y12 = jsonParser.y1();
            IgnorePropertiesUtil.Checker checker = this.f14913t;
            if (checker != null && checker.shouldIgnore(M)) {
                jsonParser.U1();
            } else {
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                        }
                    } else if (bVar == null) {
                        deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                    } else {
                        deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                    }
                    if (z9) {
                        bVar2.b(deserializeKey, deserializeWithType);
                    } else {
                        map.put(deserializeKey, deserializeWithType);
                    }
                } catch (UnresolvedForwardReference e4) {
                    J0(deserializationContext, bVar2, deserializeKey, e4);
                } catch (Exception e10) {
                    C0(deserializationContext, e10, map, M);
                }
            }
            M = jsonParser.t1();
        }
    }

    protected final void G0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String M;
        Object deserializeWithType;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14905l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        boolean z9 = dVar.getObjectIdReader() != null;
        b bVar2 = z9 ? new b(this.f14860f.getContentType().getRawClass(), map) : null;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.END_OBJECT) {
                return;
            }
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (W != jsonToken) {
                deserializationContext.reportWrongTokenException(this, jsonToken, (String) null, new Object[0]);
            }
            M = jsonParser.M();
        }
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            IgnorePropertiesUtil.Checker checker = this.f14913t;
            if (checker != null && checker.shouldIgnore(M)) {
                jsonParser.U1();
            } else {
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                        }
                    } else if (bVar == null) {
                        deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                    } else {
                        deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                    }
                    if (z9) {
                        bVar2.b(M, deserializeWithType);
                    } else {
                        map.put(M, deserializeWithType);
                    }
                } catch (UnresolvedForwardReference e4) {
                    J0(deserializationContext, bVar2, M, e4);
                } catch (Exception e10) {
                    C0(deserializationContext, e10, map, M);
                }
            }
            M = jsonParser.t1();
        }
    }

    protected final void H0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String M;
        Object deserializeWithType;
        h hVar = this.f14903j;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14905l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.END_OBJECT) {
                return;
            }
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (W != jsonToken) {
                deserializationContext.reportWrongTokenException(this, jsonToken, (String) null, new Object[0]);
            }
            M = jsonParser.M();
        }
        while (M != null) {
            Object deserializeKey = hVar.deserializeKey(M, deserializationContext);
            JsonToken y12 = jsonParser.y1();
            IgnorePropertiesUtil.Checker checker = this.f14913t;
            if (checker != null && checker.shouldIgnore(M)) {
                jsonParser.U1();
            } else {
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            map.put(deserializeKey, this.f14861g.getNullValue(deserializationContext));
                        }
                    } else {
                        Object obj = map.get(deserializeKey);
                        if (obj != null) {
                            if (bVar == null) {
                                deserializeWithType = dVar.deserialize(jsonParser, deserializationContext, obj);
                            } else {
                                deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar, obj);
                            }
                        } else if (bVar == null) {
                            deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                        } else {
                            deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                        }
                        if (deserializeWithType != obj) {
                            map.put(deserializeKey, deserializeWithType);
                        }
                    }
                } catch (Exception e4) {
                    C0(deserializationContext, e4, map, M);
                }
            }
            M = jsonParser.t1();
        }
    }

    protected final void I0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String M;
        Object deserializeWithType;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14905l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.END_OBJECT) {
                return;
            }
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (W != jsonToken) {
                deserializationContext.reportWrongTokenException(this, jsonToken, (String) null, new Object[0]);
            }
            M = jsonParser.M();
        }
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            IgnorePropertiesUtil.Checker checker = this.f14913t;
            if (checker != null && checker.shouldIgnore(M)) {
                jsonParser.U1();
            } else {
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            map.put(M, this.f14861g.getNullValue(deserializationContext));
                        }
                    } else {
                        Object obj = map.get(M);
                        if (obj != null) {
                            if (bVar == null) {
                                deserializeWithType = dVar.deserialize(jsonParser, deserializationContext, obj);
                            } else {
                                deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar, obj);
                            }
                        } else if (bVar == null) {
                            deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                        } else {
                            deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                        }
                        if (deserializeWithType != obj) {
                            map.put(M, deserializeWithType);
                        }
                    }
                } catch (Exception e4) {
                    C0(deserializationContext, e4, map, M);
                }
            }
            M = jsonParser.t1();
        }
    }

    protected MapDeserializer K0(h hVar, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar, l lVar, Set<String> set) {
        return L0(hVar, bVar, dVar, lVar, set, this.f14912s);
    }

    protected MapDeserializer L0(h hVar, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar, l lVar, Set<String> set, Set<String> set2) {
        return (this.f14903j == hVar && this.f14905l == dVar && this.f14906m == bVar && this.f14861g == lVar && this.f14911r == set && this.f14912s == set2) ? this : new MapDeserializer(this, hVar, dVar, bVar, lVar, set, set2);
    }

    public Map<Object, Object> _deserializeUsingCreator(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String M;
        Object deserializeWithType;
        g gVar = this.f14909p;
        i h4 = gVar.h(jsonParser, deserializationContext, null);
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14905l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            M = jsonParser.k1(JsonToken.FIELD_NAME) ? jsonParser.M() : null;
        }
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            IgnorePropertiesUtil.Checker checker = this.f14913t;
            if (checker != null && checker.shouldIgnore(M)) {
                jsonParser.U1();
            } else {
                SettableBeanProperty f10 = gVar.f(M);
                if (f10 != null) {
                    if (h4.b(f10, f10.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.y1();
                        try {
                            Map<Object, Object> map = (Map) gVar.a(deserializationContext, h4);
                            F0(jsonParser, deserializationContext, map);
                            return map;
                        } catch (Exception e4) {
                            return (Map) C0(deserializationContext, e4, this.f14860f.getRawClass(), M);
                        }
                    }
                } else {
                    Object deserializeKey = this.f14903j.deserializeKey(M, deserializationContext);
                    try {
                        if (y12 == JsonToken.VALUE_NULL) {
                            if (!this.f14862h) {
                                deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                            }
                        } else if (bVar == null) {
                            deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                        } else {
                            deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                        }
                        h4.d(deserializeKey, deserializeWithType);
                    } catch (Exception e10) {
                        C0(deserializationContext, e10, this.f14860f.getRawClass(), M);
                        return null;
                    }
                }
            }
            M = jsonParser.t1();
        }
        try {
            return (Map) gVar.a(deserializationContext, h4);
        } catch (Exception e11) {
            C0(deserializationContext, e11, this.f14860f.getRawClass(), M);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        Set<String> set;
        HashSet hashSet;
        AnnotatedMember member;
        Set<String> included;
        h hVar = this.f14903j;
        if (hVar == null) {
            hVar = deserializationContext.findKeyDeserializer(this.f14860f.getKeyType(), beanProperty);
        } else if (hVar instanceof com.fasterxml.jackson.databind.deser.d) {
            hVar = ((com.fasterxml.jackson.databind.deser.d) hVar).createContextual(deserializationContext, beanProperty);
        }
        h hVar2 = hVar;
        com.fasterxml.jackson.databind.d<?> dVar = this.f14905l;
        if (beanProperty != null) {
            dVar = t0(deserializationContext, beanProperty, dVar);
        }
        JavaType contentType = this.f14860f.getContentType();
        if (dVar == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(contentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, beanProperty, contentType);
        }
        com.fasterxml.jackson.databind.d<?> dVar2 = handleSecondaryContextualization;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14906m;
        if (bVar != null) {
            bVar = bVar.forProperty(beanProperty);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar2 = bVar;
        HashSet hashSet2 = this.f14911r;
        Set<String> set2 = this.f14912s;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (StdDeserializer.K(annotationIntrospector, beanProperty) && (member = beanProperty.getMember()) != null) {
            DeserializationConfig config = deserializationContext.getConfig();
            JsonIgnoreProperties.Value findPropertyIgnoralByName = annotationIntrospector.findPropertyIgnoralByName(config, member);
            if (findPropertyIgnoralByName != null) {
                Set<String> findIgnoredForDeserialization = findPropertyIgnoralByName.findIgnoredForDeserialization();
                if (!findIgnoredForDeserialization.isEmpty()) {
                    hashSet2 = hashSet2 == null ? new HashSet() : new HashSet(hashSet2);
                    for (String str : findIgnoredForDeserialization) {
                        hashSet2.add(str);
                    }
                }
            }
            JsonIncludeProperties.Value findPropertyInclusionByName = annotationIntrospector.findPropertyInclusionByName(config, member);
            if (findPropertyInclusionByName != null && (included = findPropertyInclusionByName.getIncluded()) != null) {
                HashSet hashSet3 = new HashSet();
                if (set2 == null) {
                    hashSet3 = new HashSet(included);
                } else {
                    for (String str2 : included) {
                        if (set2.contains(str2)) {
                            hashSet3.add(str2);
                        }
                    }
                }
                hashSet = hashSet3;
                set = hashSet2;
                return L0(hVar2, bVar2, dVar2, r0(deserializationContext, beanProperty, dVar2), set, hashSet);
            }
        }
        set = hashSet2;
        hashSet = set2;
        return L0(hVar2, bVar2, dVar2, r0(deserializationContext, beanProperty, dVar2), set, hashSet);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f14905l;
    }

    public final Class<?> getMapClass() {
        return this.f14860f.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f14907n;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase, com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this.f14860f;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14905l == null && this.f14903j == null && this.f14906m == null && this.f14911r == null && this.f14912s == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Map;
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this.f14907n.canCreateUsingDelegate()) {
            JavaType delegateType = this.f14907n.getDelegateType(deserializationContext.getConfig());
            if (delegateType == null) {
                JavaType javaType = this.f14860f;
                deserializationContext.reportBadDefinition(javaType, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", javaType, this.f14907n.getClass().getName()));
            }
            this.f14908o = u0(deserializationContext, delegateType, null);
        } else if (this.f14907n.canCreateUsingArrayDelegate()) {
            JavaType arrayDelegateType = this.f14907n.getArrayDelegateType(deserializationContext.getConfig());
            if (arrayDelegateType == null) {
                JavaType javaType2 = this.f14860f;
                deserializationContext.reportBadDefinition(javaType2, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", javaType2, this.f14907n.getClass().getName()));
            }
            this.f14908o = u0(deserializationContext, arrayDelegateType, null);
        }
        if (this.f14907n.canCreateFromObjectWith()) {
            this.f14909p = g.d(deserializationContext, this.f14907n, this.f14907n.getFromObjectArguments(deserializationContext.getConfig()), deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
        }
        this.f14904k = E0(this.f14860f, this.f14903j);
    }

    @Deprecated
    public void setIgnorableProperties(String[] strArr) {
        HashSet a10 = (strArr == null || strArr.length == 0) ? null : com.fasterxml.jackson.databind.util.b.a(strArr);
        this.f14911r = a10;
        this.f14913t = IgnorePropertiesUtil.a(a10, this.f14912s);
    }

    public void setIncludableProperties(Set<String> set) {
        this.f14912s = set;
        this.f14913t = IgnorePropertiesUtil.a(this.f14911r, set);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Map<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14909p != null) {
            return _deserializeUsingCreator(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14908o;
        if (dVar != null) {
            return (Map) this.f14907n.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        if (!this.f14910q) {
            return (Map) deserializationContext.handleMissingInstantiator(getMapClass(), getValueInstantiator(), jsonParser, "no default constructor found", new Object[0]);
        }
        int X = jsonParser.X();
        if (X != 1 && X != 2) {
            if (X == 3) {
                return q(jsonParser, deserializationContext);
            }
            if (X != 5) {
                if (X != 6) {
                    return (Map) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
                return t(jsonParser, deserializationContext);
            }
        }
        Map<Object, Object> map = (Map) this.f14907n.createUsingDefault(deserializationContext);
        if (this.f14904k) {
            G0(jsonParser, deserializationContext, map);
            return map;
        }
        F0(jsonParser, deserializationContext, map);
        return map;
    }

    public void setIgnorableProperties(Set<String> set) {
        set = (set == null || set.size() == 0) ? null : null;
        this.f14911r = set;
        this.f14913t = IgnorePropertiesUtil.a(set, this.f14912s);
    }

    protected MapDeserializer(MapDeserializer mapDeserializer) {
        super(mapDeserializer);
        this.f14903j = mapDeserializer.f14903j;
        this.f14905l = mapDeserializer.f14905l;
        this.f14906m = mapDeserializer.f14906m;
        this.f14907n = mapDeserializer.f14907n;
        this.f14909p = mapDeserializer.f14909p;
        this.f14908o = mapDeserializer.f14908o;
        this.f14910q = mapDeserializer.f14910q;
        this.f14911r = mapDeserializer.f14911r;
        this.f14912s = mapDeserializer.f14912s;
        this.f14913t = mapDeserializer.f14913t;
        this.f14904k = mapDeserializer.f14904k;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Map<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        jsonParser.O1(map);
        JsonToken W = jsonParser.W();
        if (W != JsonToken.START_OBJECT && W != JsonToken.FIELD_NAME) {
            return (Map) deserializationContext.handleUnexpectedToken(getMapClass(), jsonParser);
        }
        if (this.f14904k) {
            I0(jsonParser, deserializationContext, map);
            return map;
        }
        H0(jsonParser, deserializationContext, map);
        return map;
    }

    protected MapDeserializer(MapDeserializer mapDeserializer, h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar, Set<String> set) {
        this(mapDeserializer, hVar, dVar, bVar, lVar, set, null);
    }

    protected MapDeserializer(MapDeserializer mapDeserializer, h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar, Set<String> set, Set<String> set2) {
        super(mapDeserializer, lVar, mapDeserializer.f14863i);
        this.f14903j = hVar;
        this.f14905l = dVar;
        this.f14906m = bVar;
        this.f14907n = mapDeserializer.f14907n;
        this.f14909p = mapDeserializer.f14909p;
        this.f14908o = mapDeserializer.f14908o;
        this.f14910q = mapDeserializer.f14910q;
        this.f14911r = set;
        this.f14912s = set2;
        this.f14913t = IgnorePropertiesUtil.a(set, set2);
        this.f14904k = E0(this.f14860f, hVar);
    }
}
