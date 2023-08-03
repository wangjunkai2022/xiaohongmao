package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ConfigOverrides implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14494g = 1;

    /* renamed from: a  reason: collision with root package name */
    protected Map<Class<?>, MutableConfigOverride> f14495a;

    /* renamed from: b  reason: collision with root package name */
    protected JsonInclude.Value f14496b;

    /* renamed from: c  reason: collision with root package name */
    protected JsonSetter.Value f14497c;

    /* renamed from: d  reason: collision with root package name */
    protected VisibilityChecker<?> f14498d;

    /* renamed from: e  reason: collision with root package name */
    protected Boolean f14499e;

    /* renamed from: f  reason: collision with root package name */
    protected Boolean f14500f;

    public ConfigOverrides() {
        this(null, JsonInclude.Value.empty(), JsonSetter.Value.empty(), VisibilityChecker.Std.defaultInstance(), null, null);
    }

    protected Map<Class<?>, MutableConfigOverride> a() {
        return new HashMap();
    }

    public ConfigOverrides copy() {
        Map<Class<?>, MutableConfigOverride> a10;
        if (this.f14495a == null) {
            a10 = null;
        } else {
            a10 = a();
            for (Map.Entry<Class<?>, MutableConfigOverride> entry : this.f14495a.entrySet()) {
                a10.put(entry.getKey(), entry.getValue().copy());
            }
        }
        return new ConfigOverrides(a10, this.f14496b, this.f14497c, this.f14498d, this.f14499e, this.f14500f);
    }

    public JsonFormat.Value findFormatDefaults(Class<?> cls) {
        MutableConfigOverride mutableConfigOverride;
        JsonFormat.Value format;
        Map<Class<?>, MutableConfigOverride> map = this.f14495a;
        if (map != null && (mutableConfigOverride = map.get(cls)) != null && (format = mutableConfigOverride.getFormat()) != null) {
            return !format.hasLenient() ? format.withLenient(this.f14500f) : format;
        }
        Boolean bool = this.f14500f;
        if (bool == null) {
            return JsonFormat.Value.empty();
        }
        return JsonFormat.Value.forLeniency(bool.booleanValue());
    }

    public MutableConfigOverride findOrCreateOverride(Class<?> cls) {
        if (this.f14495a == null) {
            this.f14495a = a();
        }
        MutableConfigOverride mutableConfigOverride = this.f14495a.get(cls);
        if (mutableConfigOverride == null) {
            MutableConfigOverride mutableConfigOverride2 = new MutableConfigOverride();
            this.f14495a.put(cls, mutableConfigOverride2);
            return mutableConfigOverride2;
        }
        return mutableConfigOverride;
    }

    public b findOverride(Class<?> cls) {
        Map<Class<?>, MutableConfigOverride> map = this.f14495a;
        if (map == null) {
            return null;
        }
        return map.get(cls);
    }

    public JsonInclude.Value getDefaultInclusion() {
        return this.f14496b;
    }

    public Boolean getDefaultLeniency() {
        return this.f14500f;
    }

    public Boolean getDefaultMergeable() {
        return this.f14499e;
    }

    public JsonSetter.Value getDefaultSetterInfo() {
        return this.f14497c;
    }

    public VisibilityChecker<?> getDefaultVisibility() {
        return this.f14498d;
    }

    public void setDefaultInclusion(JsonInclude.Value value) {
        this.f14496b = value;
    }

    public void setDefaultLeniency(Boolean bool) {
        this.f14500f = bool;
    }

    public void setDefaultMergeable(Boolean bool) {
        this.f14499e = bool;
    }

    public void setDefaultSetterInfo(JsonSetter.Value value) {
        this.f14497c = value;
    }

    public void setDefaultVisibility(VisibilityChecker<?> visibilityChecker) {
        this.f14498d = visibilityChecker;
    }

    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> map, JsonInclude.Value value, JsonSetter.Value value2, VisibilityChecker<?> visibilityChecker, Boolean bool, Boolean bool2) {
        this.f14495a = map;
        this.f14496b = value;
        this.f14497c = value2;
        this.f14498d = visibilityChecker;
        this.f14499e = bool;
        this.f14500f = bool2;
    }

    @Deprecated
    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> map, JsonInclude.Value value, JsonSetter.Value value2, VisibilityChecker<?> visibilityChecker, Boolean bool) {
        this(map, value, value2, visibilityChecker, bool, null);
    }
}
