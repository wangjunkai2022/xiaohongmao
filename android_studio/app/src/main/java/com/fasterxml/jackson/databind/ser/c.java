package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.util.Collections;
import java.util.List;

/* compiled from: BeanSerializerBuilder.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: i  reason: collision with root package name */
    private static final BeanPropertyWriter[] f15628i = new BeanPropertyWriter[0];

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.b f15629a;

    /* renamed from: b  reason: collision with root package name */
    protected SerializationConfig f15630b;

    /* renamed from: c  reason: collision with root package name */
    protected List<BeanPropertyWriter> f15631c;

    /* renamed from: d  reason: collision with root package name */
    protected BeanPropertyWriter[] f15632d;

    /* renamed from: e  reason: collision with root package name */
    protected a f15633e;

    /* renamed from: f  reason: collision with root package name */
    protected Object f15634f;

    /* renamed from: g  reason: collision with root package name */
    protected AnnotatedMember f15635g;

    /* renamed from: h  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.ser.impl.b f15636h;

    public c(com.fasterxml.jackson.databind.b bVar) {
        this.f15631c = Collections.emptyList();
        this.f15629a = bVar;
    }

    public com.fasterxml.jackson.databind.g<?> a() {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this.f15635g != null && this.f15630b.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            this.f15635g.fixAccess(this.f15630b.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        a aVar = this.f15633e;
        if (aVar != null) {
            aVar.a(this.f15630b);
        }
        List<BeanPropertyWriter> list = this.f15631c;
        if (list != null && !list.isEmpty()) {
            List<BeanPropertyWriter> list2 = this.f15631c;
            beanPropertyWriterArr = (BeanPropertyWriter[]) list2.toArray(new BeanPropertyWriter[list2.size()]);
            if (this.f15630b.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                for (BeanPropertyWriter beanPropertyWriter : beanPropertyWriterArr) {
                    beanPropertyWriter.fixAccess(this.f15630b);
                }
            }
        } else if (this.f15633e == null && this.f15636h == null) {
            return null;
        } else {
            beanPropertyWriterArr = f15628i;
        }
        BeanPropertyWriter[] beanPropertyWriterArr2 = this.f15632d;
        if (beanPropertyWriterArr2 != null && beanPropertyWriterArr2.length != this.f15631c.size()) {
            throw new IllegalStateException(String.format("Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)", Integer.valueOf(this.f15631c.size()), Integer.valueOf(this.f15632d.length)));
        }
        return new BeanSerializer(this.f15629a.H(), this, beanPropertyWriterArr, this.f15632d);
    }

    public BeanSerializer b() {
        return BeanSerializer.createDummy(this.f15629a.H(), this);
    }

    public a c() {
        return this.f15633e;
    }

    public com.fasterxml.jackson.databind.b d() {
        return this.f15629a;
    }

    public com.fasterxml.jackson.databind.introspect.c e() {
        return this.f15629a.A();
    }

    public Object f() {
        return this.f15634f;
    }

    public BeanPropertyWriter[] g() {
        return this.f15632d;
    }

    public com.fasterxml.jackson.databind.ser.impl.b h() {
        return this.f15636h;
    }

    public List<BeanPropertyWriter> i() {
        return this.f15631c;
    }

    public AnnotatedMember j() {
        return this.f15635g;
    }

    public boolean k() {
        List<BeanPropertyWriter> list = this.f15631c;
        return list != null && list.size() > 0;
    }

    public void l(a aVar) {
        this.f15633e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(SerializationConfig serializationConfig) {
        this.f15630b = serializationConfig;
    }

    public void n(Object obj) {
        this.f15634f = obj;
    }

    public void o(BeanPropertyWriter[] beanPropertyWriterArr) {
        if (beanPropertyWriterArr != null && beanPropertyWriterArr.length != this.f15631c.size()) {
            throw new IllegalArgumentException(String.format("Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)", Integer.valueOf(beanPropertyWriterArr.length), Integer.valueOf(this.f15631c.size())));
        }
        this.f15632d = beanPropertyWriterArr;
    }

    public void p(com.fasterxml.jackson.databind.ser.impl.b bVar) {
        this.f15636h = bVar;
    }

    public void q(List<BeanPropertyWriter> list) {
        this.f15631c = list;
    }

    public void r(AnnotatedMember annotatedMember) {
        if (this.f15635g == null) {
            this.f15635g = annotatedMember;
            return;
        }
        throw new IllegalArgumentException("Multiple type ids specified with " + this.f15635g + " and " + annotatedMember);
    }

    protected c(c cVar) {
        this.f15631c = Collections.emptyList();
        this.f15629a = cVar.f15629a;
        this.f15631c = cVar.f15631c;
        this.f15632d = cVar.f15632d;
        this.f15633e = cVar.f15633e;
        this.f15634f = cVar.f15634f;
    }
}
