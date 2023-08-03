package kotlin.reflect.jvm.internal.impl.types.checker;

import m8.g;

/* compiled from: KotlinTypeRefiner.kt */
/* loaded from: classes4.dex */
public abstract class TypeRefinementSupport {
    private final boolean isEnabled;

    /* compiled from: KotlinTypeRefiner.kt */
    /* loaded from: classes4.dex */
    public static final class Enabled extends TypeRefinementSupport {
        @g
        private final KotlinTypeRefiner typeRefiner;

        @g
        public final KotlinTypeRefiner getTypeRefiner() {
            return this.typeRefiner;
        }
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }
}
