package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.Serializable;

/* loaded from: classes.dex */
public class NullsConstantProvider implements l, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14719c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final NullsConstantProvider f14720d = new NullsConstantProvider(null);

    /* renamed from: e  reason: collision with root package name */
    private static final NullsConstantProvider f14721e = new NullsConstantProvider(null);

    /* renamed from: a  reason: collision with root package name */
    protected final Object f14722a;

    /* renamed from: b  reason: collision with root package name */
    protected final AccessPattern f14723b;

    protected NullsConstantProvider(Object obj) {
        this.f14722a = obj;
        this.f14723b = obj == null ? AccessPattern.ALWAYS_NULL : AccessPattern.CONSTANT;
    }

    public static NullsConstantProvider forValue(Object obj) {
        if (obj == null) {
            return f14721e;
        }
        return new NullsConstantProvider(obj);
    }

    public static boolean isNuller(l lVar) {
        return lVar == f14721e;
    }

    public static boolean isSkipper(l lVar) {
        return lVar == f14720d;
    }

    public static NullsConstantProvider nuller() {
        return f14721e;
    }

    public static NullsConstantProvider skipper() {
        return f14720d;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public /* synthetic */ Object getAbsentValue(DeserializationContext deserializationContext) {
        return com.fasterxml.jackson.databind.deser.k.a(this, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return this.f14723b;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public Object getNullValue(DeserializationContext deserializationContext) {
        return this.f14722a;
    }
}
