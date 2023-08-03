package kotlin.reflect.jvm.internal.pcollections;

import java.io.Serializable;

/* loaded from: classes4.dex */
final class MapEntry<K, V> implements Serializable {
    public final K key;
    public final V value;

    public MapEntry(K k10, V v9) {
        this.key = k10;
        this.value = v9;
    }

    public boolean equals(Object obj) {
        if (obj instanceof MapEntry) {
            MapEntry mapEntry = (MapEntry) obj;
            K k10 = this.key;
            if (k10 == null) {
                if (mapEntry.key != null) {
                    return false;
                }
            } else if (!k10.equals(mapEntry.key)) {
                return false;
            }
            V v9 = this.value;
            V v10 = mapEntry.value;
            if (v9 == null) {
                if (v10 != null) {
                    return false;
                }
            } else if (!v9.equals(v10)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        K k10 = this.key;
        int hashCode = k10 == null ? 0 : k10.hashCode();
        V v9 = this.value;
        return hashCode ^ (v9 != null ? v9.hashCode() : 0);
    }

    public String toString() {
        return this.key + "=" + this.value;
    }
}
