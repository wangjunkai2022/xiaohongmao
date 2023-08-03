package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import java.io.Serializable;

/* loaded from: classes.dex */
public class MutableConfigOverride extends b implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final long f14538i = 1;

    public MutableConfigOverride() {
    }

    public MutableConfigOverride copy() {
        return new MutableConfigOverride(this);
    }

    public MutableConfigOverride setFormat(JsonFormat.Value value) {
        this.f14545a = value;
        return this;
    }

    public MutableConfigOverride setIgnorals(JsonIgnoreProperties.Value value) {
        this.f14548d = value;
        return this;
    }

    public MutableConfigOverride setInclude(JsonInclude.Value value) {
        this.f14546b = value;
        return this;
    }

    public MutableConfigOverride setIncludeAsProperty(JsonInclude.Value value) {
        this.f14547c = value;
        return this;
    }

    public MutableConfigOverride setIsIgnoredType(Boolean bool) {
        this.f14551g = bool;
        return this;
    }

    public MutableConfigOverride setMergeable(Boolean bool) {
        this.f14552h = bool;
        return this;
    }

    public MutableConfigOverride setSetterInfo(JsonSetter.Value value) {
        this.f14549e = value;
        return this;
    }

    public MutableConfigOverride setVisibility(JsonAutoDetect.Value value) {
        this.f14550f = value;
        return this;
    }

    protected MutableConfigOverride(MutableConfigOverride mutableConfigOverride) {
        super(mutableConfigOverride);
    }
}
