package kotlin.reflect.jvm.internal.impl.descriptors;

import com.google.android.gms.common.internal.q;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Visibilities.kt */
/* loaded from: classes4.dex */
public final class Visibilities {
    @g
    private static final Public DEFAULT_VISIBILITY;
    @g
    public static final Visibilities INSTANCE = new Visibilities();
    @g
    private static final Map<Visibility, Integer> ORDERED_VISIBILITIES;

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Inherited extends Visibility {
        @g
        public static final Inherited INSTANCE = new Inherited();

        private Inherited() {
            super("inherited", false);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Internal extends Visibility {
        @g
        public static final Internal INSTANCE = new Internal();

        private Internal() {
            super("internal", false);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class InvisibleFake extends Visibility {
        @g
        public static final InvisibleFake INSTANCE = new InvisibleFake();

        private InvisibleFake() {
            super("invisible_fake", false);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Local extends Visibility {
        @g
        public static final Local INSTANCE = new Local();

        private Local() {
            super(q.f29166b, false);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Private extends Visibility {
        @g
        public static final Private INSTANCE = new Private();

        private Private() {
            super("private", false);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class PrivateToThis extends Visibility {
        @g
        public static final PrivateToThis INSTANCE = new PrivateToThis();

        private PrivateToThis() {
            super("private_to_this", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public String getInternalDisplayName() {
            return "private/*private to this*/";
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Protected extends Visibility {
        @g
        public static final Protected INSTANCE = new Protected();

        private Protected() {
            super("protected", true);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Public extends Visibility {
        @g
        public static final Public INSTANCE = new Public();

        private Public() {
            super("public", true);
        }
    }

    /* compiled from: Visibilities.kt */
    /* loaded from: classes4.dex */
    public static final class Unknown extends Visibility {
        @g
        public static final Unknown INSTANCE = new Unknown();

        private Unknown() {
            super("unknown", false);
        }
    }

    static {
        Map createMapBuilder = MapsKt.createMapBuilder();
        createMapBuilder.put(PrivateToThis.INSTANCE, 0);
        createMapBuilder.put(Private.INSTANCE, 0);
        createMapBuilder.put(Internal.INSTANCE, 1);
        createMapBuilder.put(Protected.INSTANCE, 1);
        Public r12 = Public.INSTANCE;
        createMapBuilder.put(r12, 2);
        ORDERED_VISIBILITIES = MapsKt.build(createMapBuilder);
        DEFAULT_VISIBILITY = r12;
    }

    private Visibilities() {
    }

    @h
    public final Integer compareLocal$compiler_common(@g Visibility first, @g Visibility second) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        if (first == second) {
            return 0;
        }
        Map<Visibility, Integer> map = ORDERED_VISIBILITIES;
        Integer num = map.get(first);
        Integer num2 = map.get(second);
        if (num == null || num2 == null || Intrinsics.areEqual(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public final boolean isPrivate(@g Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        return visibility == Private.INSTANCE || visibility == PrivateToThis.INSTANCE;
    }
}
