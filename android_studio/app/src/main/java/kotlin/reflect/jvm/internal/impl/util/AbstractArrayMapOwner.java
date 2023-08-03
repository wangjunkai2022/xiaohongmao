package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;

/* compiled from: ArrayMapOwner.kt */
/* loaded from: classes4.dex */
public abstract class AbstractArrayMapOwner<K, V> implements Iterable<V>, KMappedMarker {

    /* compiled from: ArrayMapOwner.kt */
    /* loaded from: classes4.dex */
    public static abstract class AbstractArrayMapAccessor<K, V, T extends V> {
        private final int id;
        @g
        private final KClass<? extends K> key;

        public AbstractArrayMapAccessor(@g KClass<? extends K> key, int i4) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.id = i4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r2v2, types: [T extends V, java.lang.Object] */
        @h
        public final T extractValue(@g AbstractArrayMapOwner<K, V> thisRef) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            return thisRef.getArrayMap().get(this.id);
        }
    }

    @g
    protected abstract ArrayMap<V> getArrayMap();

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract TypeRegistry<K, V> getTypeRegistry();

    public final boolean isEmpty() {
        return getArrayMap().getSize() == 0;
    }

    @Override // java.lang.Iterable
    @g
    public final Iterator<V> iterator() {
        return getArrayMap().iterator();
    }

    protected abstract void registerComponent(@g KClass<? extends K> kClass, @g V v9);
}
