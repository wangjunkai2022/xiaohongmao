package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.Sequence;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: reflectClassUtil.kt */
/* loaded from: classes4.dex */
public final class ReflectClassUtilKt$parameterizedTypeArguments$2 extends Lambda implements Function1<ParameterizedType, Sequence<? extends Type>> {
    public static final ReflectClassUtilKt$parameterizedTypeArguments$2 INSTANCE = new ReflectClassUtilKt$parameterizedTypeArguments$2();

    ReflectClassUtilKt$parameterizedTypeArguments$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Sequence<Type> invoke(@g ParameterizedType it) {
        Sequence<Type> asSequence;
        Intrinsics.checkNotNullParameter(it, "it");
        Type[] actualTypeArguments = it.getActualTypeArguments();
        Intrinsics.checkNotNullExpressionValue(actualTypeArguments, "it.actualTypeArguments");
        asSequence = ArraysKt___ArraysKt.asSequence(actualTypeArguments);
        return asSequence;
    }
}
