package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.util.Map;

/* compiled from: PropertyValue.java */
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    public final h f14819a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f14820b;

    /* compiled from: PropertyValue.java */
    /* loaded from: classes.dex */
    static final class a extends h {

        /* renamed from: c  reason: collision with root package name */
        final SettableAnyProperty f14821c;

        /* renamed from: d  reason: collision with root package name */
        final String f14822d;

        public a(h hVar, Object obj, SettableAnyProperty settableAnyProperty, String str) {
            super(hVar, obj);
            this.f14821c = settableAnyProperty;
            this.f14822d = str;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.h
        public void a(Object obj) throws IOException {
            this.f14821c.set(obj, this.f14822d, this.f14820b);
        }
    }

    /* compiled from: PropertyValue.java */
    /* loaded from: classes.dex */
    static final class b extends h {

        /* renamed from: c  reason: collision with root package name */
        final Object f14823c;

        public b(h hVar, Object obj, Object obj2) {
            super(hVar, obj);
            this.f14823c = obj2;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.h
        public void a(Object obj) throws IOException {
            ((Map) obj).put(this.f14823c, this.f14820b);
        }
    }

    /* compiled from: PropertyValue.java */
    /* loaded from: classes.dex */
    static final class c extends h {

        /* renamed from: c  reason: collision with root package name */
        final SettableBeanProperty f14824c;

        public c(h hVar, Object obj, SettableBeanProperty settableBeanProperty) {
            super(hVar, obj);
            this.f14824c = settableBeanProperty;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.h
        public void a(Object obj) throws IOException {
            this.f14824c.set(obj, this.f14820b);
        }
    }

    protected h(h hVar, Object obj) {
        this.f14819a = hVar;
        this.f14820b = obj;
    }

    public abstract void a(Object obj) throws IOException;
}
