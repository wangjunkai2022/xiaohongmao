package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CoercionConfig implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14482c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f14483d = CoercionInputShape.values().length;

    /* renamed from: a  reason: collision with root package name */
    protected Boolean f14484a;

    /* renamed from: b  reason: collision with root package name */
    protected final CoercionAction[] f14485b;

    public CoercionConfig() {
        this.f14485b = new CoercionAction[f14483d];
        this.f14484a = null;
    }

    public CoercionAction findAction(CoercionInputShape coercionInputShape) {
        return this.f14485b[coercionInputShape.ordinal()];
    }

    public Boolean getAcceptBlankAsEmpty() {
        return this.f14484a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionConfig(CoercionConfig coercionConfig) {
        this.f14484a = coercionConfig.f14484a;
        CoercionAction[] coercionActionArr = coercionConfig.f14485b;
        this.f14485b = (CoercionAction[]) Arrays.copyOf(coercionActionArr, coercionActionArr.length);
    }
}
