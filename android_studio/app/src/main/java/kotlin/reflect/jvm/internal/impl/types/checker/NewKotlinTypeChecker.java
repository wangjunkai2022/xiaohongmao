package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: NewKotlinTypeChecker.kt */
/* loaded from: classes4.dex */
public interface NewKotlinTypeChecker extends KotlinTypeChecker {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: NewKotlinTypeChecker.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final NewKotlinTypeCheckerImpl Default = new NewKotlinTypeCheckerImpl(KotlinTypeRefiner.Default.INSTANCE, null, 2, null);

        private Companion() {
        }

        @g
        public final NewKotlinTypeCheckerImpl getDefault() {
            return Default;
        }
    }

    @g
    KotlinTypeRefiner getKotlinTypeRefiner();

    @g
    OverridingUtil getOverridingUtil();
}
