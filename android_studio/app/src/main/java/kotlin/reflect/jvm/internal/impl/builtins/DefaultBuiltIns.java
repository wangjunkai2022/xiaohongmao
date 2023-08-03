package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import m8.g;

/* compiled from: DefaultBuiltIns.kt */
/* loaded from: classes4.dex */
public final class DefaultBuiltIns extends KotlinBuiltIns {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final DefaultBuiltIns Instance = new DefaultBuiltIns(false, 1, null);

    /* compiled from: DefaultBuiltIns.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final DefaultBuiltIns getInstance() {
            return DefaultBuiltIns.Instance;
        }
    }

    public DefaultBuiltIns() {
        this(false, 1, null);
    }

    public DefaultBuiltIns(boolean z9) {
        super(new LockBasedStorageManager("DefaultBuiltIns"));
        if (z9) {
            createBuiltInsModule(false);
        }
    }

    public /* synthetic */ DefaultBuiltIns(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? true : z9);
    }
}
