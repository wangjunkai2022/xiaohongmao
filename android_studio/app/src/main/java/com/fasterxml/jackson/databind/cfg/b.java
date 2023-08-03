package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;

/* compiled from: ConfigOverride.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    protected JsonFormat.Value f14545a;

    /* renamed from: b  reason: collision with root package name */
    protected JsonInclude.Value f14546b;

    /* renamed from: c  reason: collision with root package name */
    protected JsonInclude.Value f14547c;

    /* renamed from: d  reason: collision with root package name */
    protected JsonIgnoreProperties.Value f14548d;

    /* renamed from: e  reason: collision with root package name */
    protected JsonSetter.Value f14549e;

    /* renamed from: f  reason: collision with root package name */
    protected JsonAutoDetect.Value f14550f;

    /* renamed from: g  reason: collision with root package name */
    protected Boolean f14551g;

    /* renamed from: h  reason: collision with root package name */
    protected Boolean f14552h;

    /* compiled from: ConfigOverride.java */
    /* loaded from: classes.dex */
    static final class a extends b {

        /* renamed from: i  reason: collision with root package name */
        static final a f14553i = new a();

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
    }

    public static b empty() {
        return a.f14553i;
    }

    public JsonFormat.Value getFormat() {
        return this.f14545a;
    }

    public JsonIgnoreProperties.Value getIgnorals() {
        return this.f14548d;
    }

    public JsonInclude.Value getInclude() {
        return this.f14546b;
    }

    public JsonInclude.Value getIncludeAsProperty() {
        return this.f14547c;
    }

    public Boolean getIsIgnoredType() {
        return this.f14551g;
    }

    public Boolean getMergeable() {
        return this.f14552h;
    }

    public JsonSetter.Value getSetterInfo() {
        return this.f14549e;
    }

    public JsonAutoDetect.Value getVisibility() {
        return this.f14550f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(b bVar) {
        this.f14545a = bVar.f14545a;
        this.f14546b = bVar.f14546b;
        this.f14547c = bVar.f14547c;
        this.f14548d = bVar.f14548d;
        this.f14549e = bVar.f14549e;
        this.f14550f = bVar.f14550f;
        this.f14551g = bVar.f14551g;
        this.f14552h = bVar.f14552h;
    }
}
