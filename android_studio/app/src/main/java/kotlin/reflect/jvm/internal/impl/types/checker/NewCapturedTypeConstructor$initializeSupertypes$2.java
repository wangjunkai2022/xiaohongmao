package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.g;

/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
final class NewCapturedTypeConstructor$initializeSupertypes$2 extends Lambda implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ List<UnwrappedType> $boundSupertypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NewCapturedTypeConstructor$initializeSupertypes$2(List<? extends UnwrappedType> list) {
        super(0);
        this.$boundSupertypes = list;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends UnwrappedType> invoke() {
        return this.$boundSupertypes;
    }
}
