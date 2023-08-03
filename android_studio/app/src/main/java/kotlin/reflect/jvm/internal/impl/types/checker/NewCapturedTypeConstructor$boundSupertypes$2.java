package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
public final class NewCapturedTypeConstructor$boundSupertypes$2 extends Lambda implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ NewCapturedTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor$boundSupertypes$2(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        super(0);
        this.this$0 = newCapturedTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final List<? extends UnwrappedType> invoke() {
        Function0 function0;
        function0 = this.this$0.supertypesComputation;
        if (function0 != null) {
            return (List) function0.invoke();
        }
        return null;
    }
}
