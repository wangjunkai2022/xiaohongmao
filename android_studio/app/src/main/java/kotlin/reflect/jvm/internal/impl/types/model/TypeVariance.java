package kotlin.reflect.jvm.internal.impl.types.model;

import m8.g;

/* compiled from: TypeSystemContext.kt */
/* loaded from: classes4.dex */
public enum TypeVariance {
    IN("in"),
    OUT("out"),
    INV("");
    
    @g
    private final String presentation;

    TypeVariance(String str) {
        this.presentation = str;
    }

    @Override // java.lang.Enum
    @g
    public String toString() {
        return this.presentation;
    }
}
