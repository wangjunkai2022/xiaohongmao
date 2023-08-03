package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: typeQualifiers.kt */
/* loaded from: classes4.dex */
public final class JavaTypeQualifiers {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final JavaTypeQualifiers NONE = new JavaTypeQualifiers(null, null, false, false, 8, null);
    private final boolean definitelyNotNull;
    private final boolean isNullabilityQualifierForWarning;
    @h
    private final MutabilityQualifier mutability;
    @h
    private final NullabilityQualifier nullability;

    /* compiled from: typeQualifiers.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final JavaTypeQualifiers getNONE() {
            return JavaTypeQualifiers.NONE;
        }
    }

    public JavaTypeQualifiers(@h NullabilityQualifier nullabilityQualifier, @h MutabilityQualifier mutabilityQualifier, boolean z9, boolean z10) {
        this.nullability = nullabilityQualifier;
        this.mutability = mutabilityQualifier;
        this.definitelyNotNull = z9;
        this.isNullabilityQualifierForWarning = z10;
    }

    public final boolean getDefinitelyNotNull() {
        return this.definitelyNotNull;
    }

    @h
    public final MutabilityQualifier getMutability() {
        return this.mutability;
    }

    @h
    public final NullabilityQualifier getNullability() {
        return this.nullability;
    }

    public final boolean isNullabilityQualifierForWarning() {
        return this.isNullabilityQualifierForWarning;
    }

    public /* synthetic */ JavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z9, boolean z10, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, mutabilityQualifier, z9, (i4 & 8) != 0 ? false : z10);
    }
}
