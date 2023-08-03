package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: SpecialTypes.kt */
/* loaded from: classes4.dex */
public final class LazyWrappedType extends WrappedType {
    @g
    private final Function0<KotlinType> computation;
    @g
    private final NotNullLazyValue<KotlinType> lazyValue;
    @g
    private final StorageManager storageManager;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyWrappedType(@g StorageManager storageManager, @g Function0<? extends KotlinType> computation) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(computation, "computation");
        this.storageManager = storageManager;
        this.computation = computation;
        this.lazyValue = storageManager.createLazyValue(computation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    @g
    protected KotlinType getDelegate() {
        return this.lazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    public boolean isComputed() {
        return this.lazyValue.isComputed();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public LazyWrappedType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new LazyWrappedType(this.storageManager, new LazyWrappedType$refine$1(kotlinTypeRefiner, this));
    }
}
