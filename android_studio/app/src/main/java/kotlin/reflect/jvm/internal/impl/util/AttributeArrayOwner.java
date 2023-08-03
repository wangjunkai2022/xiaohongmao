package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;

/* compiled from: AttributeArrayOwner.kt */
/* loaded from: classes4.dex */
public abstract class AttributeArrayOwner<K, T> extends AbstractArrayMapOwner<K, T> {
    @g
    private ArrayMap<T> arrayMap;

    protected AttributeArrayOwner(@g ArrayMap<T> arrayMap) {
        Intrinsics.checkNotNullParameter(arrayMap, "arrayMap");
        this.arrayMap = arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner
    @g
    public final ArrayMap<T> getArrayMap() {
        return this.arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner
    public final void registerComponent(@g KClass<? extends K> tClass, @g T value) {
        Intrinsics.checkNotNullParameter(tClass, "tClass");
        Intrinsics.checkNotNullParameter(value, "value");
        int id = getTypeRegistry().getId(tClass);
        int size = this.arrayMap.getSize();
        if (size != 0) {
            if (size == 1) {
                ArrayMap<T> arrayMap = this.arrayMap;
                Intrinsics.checkNotNull(arrayMap, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>");
                OneElementArrayMap oneElementArrayMap = (OneElementArrayMap) arrayMap;
                if (oneElementArrayMap.getIndex() == id) {
                    this.arrayMap = new OneElementArrayMap(value, id);
                    return;
                }
                ArrayMapImpl arrayMapImpl = new ArrayMapImpl();
                this.arrayMap = arrayMapImpl;
                arrayMapImpl.set(oneElementArrayMap.getIndex(), oneElementArrayMap.getValue());
            }
            this.arrayMap.set(id, value);
            return;
        }
        this.arrayMap = new OneElementArrayMap(value, id);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AttributeArrayOwner() {
        /*
            r2 = this;
            kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap r0 = kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap.INSTANCE
            java.lang.String r1 = "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.AttributeArrayOwner.<init>():void");
    }
}
