package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;

/* loaded from: classes.dex */
public class MutableCoercionConfig extends CoercionConfig implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f14537e = 1;

    public MutableCoercionConfig() {
    }

    public MutableCoercionConfig copy() {
        return new MutableCoercionConfig(this);
    }

    public MutableCoercionConfig setAcceptBlankAsEmpty(Boolean bool) {
        this.f14484a = bool;
        return this;
    }

    public MutableCoercionConfig setCoercion(CoercionInputShape coercionInputShape, CoercionAction coercionAction) {
        this.f14485b[coercionInputShape.ordinal()] = coercionAction;
        return this;
    }

    protected MutableCoercionConfig(MutableCoercionConfig mutableCoercionConfig) {
        super(mutableCoercionConfig);
    }
}
