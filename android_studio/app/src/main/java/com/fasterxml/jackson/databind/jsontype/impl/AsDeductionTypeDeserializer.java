package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AsDeductionTypeDeserializer extends AsPropertyTypeDeserializer {

    /* renamed from: p  reason: collision with root package name */
    private static final long f15424p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final BitSet f15425q = new BitSet(0);

    /* renamed from: n  reason: collision with root package name */
    private final Map<String, Integer> f15426n;

    /* renamed from: o  reason: collision with root package name */
    private final Map<BitSet, String> f15427o;

    public AsDeductionTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, JavaType javaType2, DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        super(javaType, cVar, null, false, javaType2, null);
        this.f15426n = new HashMap();
        this.f15427o = o(deserializationConfig, collection);
    }

    private static void p(List<BitSet> list, int i4) {
        Iterator<BitSet> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().get(i4)) {
                it.remove();
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_OBJECT) {
            W = jsonParser.y1();
        } else if (W != JsonToken.FIELD_NAME) {
            return n(jsonParser, deserializationContext, null, "Unexpected input");
        }
        if (W == JsonToken.END_OBJECT && (str = this.f15427o.get(f15425q)) != null) {
            return l(jsonParser, deserializationContext, null, str);
        }
        LinkedList linkedList = new LinkedList(this.f15427o.keySet());
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        boolean isEnabled = deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            if (isEnabled) {
                M = M.toLowerCase();
            }
            bufferForInputBuffering.H(jsonParser);
            Integer num = this.f15426n.get(M);
            if (num != null) {
                p(linkedList, num.intValue());
                if (linkedList.size() == 1) {
                    return l(jsonParser, deserializationContext, bufferForInputBuffering, this.f15427o.get(linkedList.get(0)));
                }
            }
            W = jsonParser.y1();
        }
        return n(jsonParser, deserializationContext, bufferForInputBuffering, String.format("Cannot deduce unique subtype of %s (%d candidates match)", com.fasterxml.jackson.databind.util.g.P(this.f15438b), Integer.valueOf(linkedList.size())));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public com.fasterxml.jackson.databind.jsontype.b forProperty(BeanProperty beanProperty) {
        return beanProperty == this.f15439c ? this : new AsDeductionTypeDeserializer(this, beanProperty);
    }

    protected Map<BitSet, String> o(DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        boolean isEnabled = deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        HashMap hashMap = new HashMap();
        int i4 = 0;
        for (NamedType namedType : collection) {
            List<com.fasterxml.jackson.databind.introspect.k> u9 = deserializationConfig.introspect(deserializationConfig.getTypeFactory().constructType(namedType.getType())).u();
            BitSet bitSet = new BitSet(u9.size() + i4);
            for (com.fasterxml.jackson.databind.introspect.k kVar : u9) {
                String name = kVar.getName();
                if (isEnabled) {
                    name = name.toLowerCase();
                }
                Integer num = this.f15426n.get(name);
                if (num == null) {
                    num = Integer.valueOf(i4);
                    this.f15426n.put(name, Integer.valueOf(i4));
                    i4++;
                }
                bitSet.set(num.intValue());
            }
            String str = (String) hashMap.put(bitSet, namedType.getType().getName());
            if (str != null) {
                throw new IllegalStateException(String.format("Subtypes %s and %s have the same signature and cannot be uniquely deduced.", str, namedType.getType().getName()));
            }
        }
        return hashMap;
    }

    public AsDeductionTypeDeserializer(AsDeductionTypeDeserializer asDeductionTypeDeserializer, BeanProperty beanProperty) {
        super(asDeductionTypeDeserializer, beanProperty);
        this.f15426n = asDeductionTypeDeserializer.f15426n;
        this.f15427o = asDeductionTypeDeserializer.f15427o;
    }
}
