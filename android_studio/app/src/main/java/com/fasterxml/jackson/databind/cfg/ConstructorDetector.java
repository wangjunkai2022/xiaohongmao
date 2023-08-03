package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class ConstructorDetector implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14501d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final SingleArgConstructor f14502a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f14503b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f14504c;
    public static final ConstructorDetector DEFAULT = new ConstructorDetector(SingleArgConstructor.HEURISTIC);
    public static final ConstructorDetector USE_PROPERTIES_BASED = new ConstructorDetector(SingleArgConstructor.PROPERTIES);
    public static final ConstructorDetector USE_DELEGATING = new ConstructorDetector(SingleArgConstructor.DELEGATING);
    public static final ConstructorDetector EXPLICIT_ONLY = new ConstructorDetector(SingleArgConstructor.REQUIRE_MODE);

    /* loaded from: classes.dex */
    public enum SingleArgConstructor {
        DELEGATING,
        PROPERTIES,
        HEURISTIC,
        REQUIRE_MODE
    }

    protected ConstructorDetector(SingleArgConstructor singleArgConstructor, boolean z9, boolean z10) {
        this.f14502a = singleArgConstructor;
        this.f14503b = z9;
        this.f14504c = z10;
    }

    public boolean allowJDKTypeConstructors() {
        return this.f14504c;
    }

    public boolean requireCtorAnnotation() {
        return this.f14503b;
    }

    public boolean shouldIntrospectorImplicitConstructors(Class<?> cls) {
        if (this.f14503b) {
            return false;
        }
        return this.f14504c || !g.Y(cls) || Throwable.class.isAssignableFrom(cls);
    }

    public boolean singleArgCreatorDefaultsToDelegating() {
        return this.f14502a == SingleArgConstructor.DELEGATING;
    }

    public boolean singleArgCreatorDefaultsToProperties() {
        return this.f14502a == SingleArgConstructor.PROPERTIES;
    }

    public SingleArgConstructor singleArgMode() {
        return this.f14502a;
    }

    public ConstructorDetector withAllowJDKTypeConstructors(boolean z9) {
        return new ConstructorDetector(this.f14502a, this.f14503b, z9);
    }

    public ConstructorDetector withRequireAnnotation(boolean z9) {
        return new ConstructorDetector(this.f14502a, z9, this.f14504c);
    }

    public ConstructorDetector withSingleArgMode(SingleArgConstructor singleArgConstructor) {
        return new ConstructorDetector(singleArgConstructor, this.f14503b, this.f14504c);
    }

    protected ConstructorDetector(SingleArgConstructor singleArgConstructor) {
        this(singleArgConstructor, false, false);
    }
}
