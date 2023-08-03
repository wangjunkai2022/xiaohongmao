package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class AtomicReferenceSerializer extends ReferenceTypeSerializer<AtomicReference<?>> {

    /* renamed from: m  reason: collision with root package name */
    private static final long f15737m = 1;

    public AtomicReferenceSerializer(ReferenceType referenceType, boolean z9, f fVar, g<Object> gVar) {
        super(referenceType, z9, fVar, gVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    protected ReferenceTypeSerializer<AtomicReference<?>> B(BeanProperty beanProperty, f fVar, g<?> gVar, NameTransformer nameTransformer) {
        return new AtomicReferenceSerializer(this, beanProperty, fVar, gVar, nameTransformer, this.f15820j, this.f15821k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    /* renamed from: C */
    public Object x(AtomicReference<?> atomicReference) {
        return atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    /* renamed from: D */
    public Object y(AtomicReference<?> atomicReference) {
        return atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    /* renamed from: E */
    public boolean z(AtomicReference<?> atomicReference) {
        return atomicReference.get() != null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    public ReferenceTypeSerializer<AtomicReference<?>> withContentInclusion(Object obj, boolean z9) {
        return new AtomicReferenceSerializer(this, this.f15815e, this.f15816f, this.f15817g, this.f15818h, obj, z9);
    }

    protected AtomicReferenceSerializer(AtomicReferenceSerializer atomicReferenceSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, NameTransformer nameTransformer, Object obj, boolean z9) {
        super(atomicReferenceSerializer, beanProperty, fVar, gVar, nameTransformer, obj, z9);
    }
}
