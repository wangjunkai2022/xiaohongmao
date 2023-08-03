package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import m8.g;

/* compiled from: AbstractTypeConstructor.kt */
/* loaded from: classes4.dex */
final class AbstractTypeConstructor$supertypes$1 extends Lambda implements Function0<AbstractTypeConstructor.Supertypes> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$1(AbstractTypeConstructor abstractTypeConstructor) {
        super(0);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final AbstractTypeConstructor.Supertypes invoke() {
        return new AbstractTypeConstructor.Supertypes(this.this$0.computeSupertypes());
    }
}
