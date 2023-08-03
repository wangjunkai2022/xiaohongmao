package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* compiled from: WritableObjectId.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final ObjectIdGenerator<?> f15723a;

    /* renamed from: b  reason: collision with root package name */
    public Object f15724b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f15725c = false;

    public f(ObjectIdGenerator<?> objectIdGenerator) {
        this.f15723a = objectIdGenerator;
    }

    public Object a(Object obj) {
        if (this.f15724b == null) {
            this.f15724b = this.f15723a.generateId(obj);
        }
        return this.f15724b;
    }

    public void b(JsonGenerator jsonGenerator, l lVar, b bVar) throws IOException {
        this.f15725c = true;
        if (jsonGenerator.A()) {
            Object obj = this.f15724b;
            jsonGenerator.r1(obj == null ? null : String.valueOf(obj));
            return;
        }
        j jVar = bVar.f15694b;
        if (jVar != null) {
            jsonGenerator.U0(jVar);
            bVar.f15696d.serialize(this.f15724b, jsonGenerator, lVar);
        }
    }

    public boolean c(JsonGenerator jsonGenerator, l lVar, b bVar) throws IOException {
        if (this.f15724b != null) {
            if (this.f15725c || bVar.f15697e) {
                if (jsonGenerator.A()) {
                    jsonGenerator.s1(String.valueOf(this.f15724b));
                    return true;
                }
                bVar.f15696d.serialize(this.f15724b, jsonGenerator, lVar);
                return true;
            }
            return false;
        }
        return false;
    }
}
