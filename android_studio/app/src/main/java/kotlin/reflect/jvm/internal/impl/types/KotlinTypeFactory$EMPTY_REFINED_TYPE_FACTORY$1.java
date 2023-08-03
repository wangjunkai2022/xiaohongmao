package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
final class KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 extends Lambda implements Function1 {
    public static final KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 INSTANCE = new KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1();

    KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final Void invoke(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "<anonymous parameter 0>");
        return null;
    }
}
