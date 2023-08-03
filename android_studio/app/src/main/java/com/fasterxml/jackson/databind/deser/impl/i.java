package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.h;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;
import java.util.BitSet;

/* compiled from: PropertyValueBuffer.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    protected final JsonParser f14825a;

    /* renamed from: b  reason: collision with root package name */
    protected final DeserializationContext f14826b;

    /* renamed from: c  reason: collision with root package name */
    protected final ObjectIdReader f14827c;

    /* renamed from: d  reason: collision with root package name */
    protected final Object[] f14828d;

    /* renamed from: e  reason: collision with root package name */
    protected int f14829e;

    /* renamed from: f  reason: collision with root package name */
    protected int f14830f;

    /* renamed from: g  reason: collision with root package name */
    protected final BitSet f14831g;

    /* renamed from: h  reason: collision with root package name */
    protected h f14832h;

    /* renamed from: i  reason: collision with root package name */
    protected Object f14833i;

    public i(JsonParser jsonParser, DeserializationContext deserializationContext, int i4, ObjectIdReader objectIdReader) {
        this.f14825a = jsonParser;
        this.f14826b = deserializationContext;
        this.f14829e = i4;
        this.f14827c = objectIdReader;
        this.f14828d = new Object[i4];
        if (i4 < 32) {
            this.f14831g = null;
        } else {
            this.f14831g = new BitSet();
        }
    }

    protected Object a(SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        if (settableBeanProperty.getInjectableValueId() != null) {
            return this.f14826b.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
        }
        if (settableBeanProperty.isRequired()) {
            this.f14826b.reportInputMismatch(settableBeanProperty, "Missing required creator property '%s' (index %d)", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        }
        if (this.f14826b.isEnabled(DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES)) {
            this.f14826b.reportInputMismatch(settableBeanProperty, "Missing creator property '%s' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        }
        try {
            Object absentValue = settableBeanProperty.getNullValueProvider().getAbsentValue(this.f14826b);
            return absentValue != null ? absentValue : settableBeanProperty.getValueDeserializer().getAbsentValue(this.f14826b);
        } catch (DatabindException e4) {
            AnnotatedMember member = settableBeanProperty.getMember();
            if (member != null) {
                e4.prependPath(member.getDeclaringClass(), settableBeanProperty.getName());
            }
            throw e4;
        }
    }

    public boolean b(SettableBeanProperty settableBeanProperty, Object obj) {
        int creatorIndex = settableBeanProperty.getCreatorIndex();
        this.f14828d[creatorIndex] = obj;
        BitSet bitSet = this.f14831g;
        if (bitSet == null) {
            int i4 = this.f14830f;
            int i10 = (1 << creatorIndex) | i4;
            if (i4 != i10) {
                this.f14830f = i10;
                int i11 = this.f14829e - 1;
                this.f14829e = i11;
                if (i11 <= 0) {
                    return this.f14827c == null || this.f14833i != null;
                }
            }
        } else if (!bitSet.get(creatorIndex)) {
            this.f14831g.set(creatorIndex);
            this.f14829e--;
        }
        return false;
    }

    public void c(SettableAnyProperty settableAnyProperty, String str, Object obj) {
        this.f14832h = new h.a(this.f14832h, obj, settableAnyProperty, str);
    }

    public void d(Object obj, Object obj2) {
        this.f14832h = new h.b(this.f14832h, obj2, obj);
    }

    public void e(SettableBeanProperty settableBeanProperty, Object obj) {
        this.f14832h = new h.c(this.f14832h, obj, settableBeanProperty);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h f() {
        return this.f14832h;
    }

    public Object g(SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        Object obj;
        if (j(settableBeanProperty)) {
            obj = this.f14828d[settableBeanProperty.getCreatorIndex()];
        } else {
            Object[] objArr = this.f14828d;
            int creatorIndex = settableBeanProperty.getCreatorIndex();
            Object a10 = a(settableBeanProperty);
            objArr[creatorIndex] = a10;
            obj = a10;
        }
        return (obj == null && this.f14826b.isEnabled(DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES)) ? this.f14826b.reportInputMismatch(settableBeanProperty, "Null value for creator property '%s' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex())) : obj;
    }

    public Object[] h(SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        if (this.f14829e > 0) {
            if (this.f14831g == null) {
                int i4 = this.f14830f;
                int length = this.f14828d.length;
                int i10 = 0;
                while (i10 < length) {
                    if ((i4 & 1) == 0) {
                        this.f14828d[i10] = a(settableBeanPropertyArr[i10]);
                    }
                    i10++;
                    i4 >>= 1;
                }
            } else {
                int length2 = this.f14828d.length;
                int i11 = 0;
                while (true) {
                    int nextClearBit = this.f14831g.nextClearBit(i11);
                    if (nextClearBit >= length2) {
                        break;
                    }
                    this.f14828d[nextClearBit] = a(settableBeanPropertyArr[nextClearBit]);
                    i11 = nextClearBit + 1;
                }
            }
        }
        if (this.f14826b.isEnabled(DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES)) {
            for (int i12 = 0; i12 < settableBeanPropertyArr.length; i12++) {
                if (this.f14828d[i12] == null) {
                    SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i12];
                    this.f14826b.reportInputMismatch(settableBeanProperty, "Null value for creator property '%s' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanPropertyArr[i12].getCreatorIndex()));
                }
            }
        }
        return this.f14828d;
    }

    public Object i(DeserializationContext deserializationContext, Object obj) throws IOException {
        ObjectIdReader objectIdReader = this.f14827c;
        if (objectIdReader != null) {
            Object obj2 = this.f14833i;
            if (obj2 != null) {
                deserializationContext.findObjectId(obj2, objectIdReader.generator, objectIdReader.resolver).b(obj);
                SettableBeanProperty settableBeanProperty = this.f14827c.idProperty;
                if (settableBeanProperty != null) {
                    return settableBeanProperty.setAndReturn(obj, this.f14833i);
                }
            } else {
                deserializationContext.reportUnresolvedObjectId(objectIdReader, obj);
            }
        }
        return obj;
    }

    public final boolean j(SettableBeanProperty settableBeanProperty) {
        BitSet bitSet = this.f14831g;
        if (bitSet == null) {
            return ((this.f14830f >> settableBeanProperty.getCreatorIndex()) & 1) == 1;
        }
        return bitSet.get(settableBeanProperty.getCreatorIndex());
    }

    public boolean k() {
        return this.f14829e <= 0;
    }

    public boolean l(String str) throws IOException {
        ObjectIdReader objectIdReader = this.f14827c;
        if (objectIdReader == null || !str.equals(objectIdReader.propertyName.getSimpleName())) {
            return false;
        }
        this.f14833i = this.f14827c.readObjectReference(this.f14825a, this.f14826b);
        return true;
    }
}
