package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: IntegerLiteralTypeConstructor.kt */
/* loaded from: classes4.dex */
final class IntegerLiteralTypeConstructor$valueToString$1 extends Lambda implements Function1<KotlinType, CharSequence> {
    public static final IntegerLiteralTypeConstructor$valueToString$1 INSTANCE = new IntegerLiteralTypeConstructor$valueToString$1();

    IntegerLiteralTypeConstructor$valueToString$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final CharSequence invoke(@g KotlinType it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.toString();
    }
}
