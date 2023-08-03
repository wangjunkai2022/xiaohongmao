package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: AbstractTypeConstructor.kt */
/* loaded from: classes4.dex */
final class AbstractTypeConstructor$supertypes$2 extends Lambda implements Function1<Boolean, AbstractTypeConstructor.Supertypes> {
    public static final AbstractTypeConstructor$supertypes$2 INSTANCE = new AbstractTypeConstructor$supertypes$2();

    AbstractTypeConstructor$supertypes$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ AbstractTypeConstructor.Supertypes invoke(Boolean bool) {
        return invoke(bool.booleanValue());
    }

    @g
    public final AbstractTypeConstructor.Supertypes invoke(boolean z9) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ErrorUtils.INSTANCE.getErrorTypeForLoopInSupertypes());
        return new AbstractTypeConstructor.Supertypes(listOf);
    }
}
