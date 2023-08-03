package com.fasterxml.jackson.core.type;

import com.fasterxml.jackson.core.JsonToken;

/* loaded from: classes.dex */
public class WritableTypeId {

    /* renamed from: a  reason: collision with root package name */
    public Object f14222a;

    /* renamed from: b  reason: collision with root package name */
    public Class<?> f14223b;

    /* renamed from: c  reason: collision with root package name */
    public Object f14224c;

    /* renamed from: d  reason: collision with root package name */
    public String f14225d;

    /* renamed from: e  reason: collision with root package name */
    public Inclusion f14226e;

    /* renamed from: f  reason: collision with root package name */
    public JsonToken f14227f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f14228g;

    /* renamed from: h  reason: collision with root package name */
    public Object f14229h;

    /* loaded from: classes.dex */
    public enum Inclusion {
        WRAPPER_ARRAY,
        WRAPPER_OBJECT,
        METADATA_PROPERTY,
        PAYLOAD_PROPERTY,
        PARENT_PROPERTY;

        public boolean requiresObjectContext() {
            return this == METADATA_PROPERTY || this == PAYLOAD_PROPERTY;
        }
    }

    public WritableTypeId() {
    }

    public WritableTypeId(Object obj, JsonToken jsonToken) {
        this(obj, jsonToken, (Object) null);
    }

    public WritableTypeId(Object obj, Class<?> cls, JsonToken jsonToken) {
        this(obj, jsonToken, (Object) null);
        this.f14223b = cls;
    }

    public WritableTypeId(Object obj, JsonToken jsonToken, Object obj2) {
        this.f14222a = obj;
        this.f14224c = obj2;
        this.f14227f = jsonToken;
    }
}
