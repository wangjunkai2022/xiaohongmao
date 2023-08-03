package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;

/* compiled from: Modality.kt */
/* loaded from: classes4.dex */
public enum Modality {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;
    
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: Modality.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Modality convertFromFlags(boolean z9, boolean z10, boolean z11) {
            if (z9) {
                return Modality.SEALED;
            }
            if (z10) {
                return Modality.ABSTRACT;
            }
            if (z11) {
                return Modality.OPEN;
            }
            return Modality.FINAL;
        }
    }
}
