package kotlin.reflect.jvm.internal.impl.util;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArrayMapOwner.kt */
/* loaded from: classes4.dex */
public final class TypeRegistry$getId$1 extends Lambda implements Function1<KClass<? extends K>, Integer> {
    final /* synthetic */ TypeRegistry<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeRegistry$getId$1(TypeRegistry<K, V> typeRegistry) {
        super(1);
        this.this$0 = typeRegistry;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Integer invoke(@g KClass<? extends K> it) {
        AtomicInteger atomicInteger;
        Intrinsics.checkNotNullParameter(it, "it");
        atomicInteger = ((TypeRegistry) this.this$0).idCounter;
        return Integer.valueOf(atomicInteger.getAndIncrement());
    }
}
