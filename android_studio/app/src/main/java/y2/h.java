package y2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class h {
    private h() {
    }

    @u2.a
    public static boolean a(@Nullable Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @NonNull
    @u2.a
    @Deprecated
    public static <T> List<T> b() {
        return Collections.emptyList();
    }

    @NonNull
    @u2.a
    @Deprecated
    public static <T> List<T> c(@NonNull T t9) {
        return Collections.singletonList(t9);
    }

    @NonNull
    @u2.a
    @Deprecated
    public static <T> List<T> d(@NonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                return Collections.unmodifiableList(Arrays.asList(tArr));
            }
            return c(tArr[0]);
        }
        return b();
    }

    @NonNull
    @u2.a
    public static <K, V> Map<K, V> e(@NonNull K k10, @NonNull V v9, @NonNull K k11, @NonNull V v10, @NonNull K k12, @NonNull V v11) {
        Map k13 = k(3, false);
        k13.put(k10, v9);
        k13.put(k11, v10);
        k13.put(k12, v11);
        return Collections.unmodifiableMap(k13);
    }

    @NonNull
    @u2.a
    public static <K, V> Map<K, V> f(@NonNull K k10, @NonNull V v9, @NonNull K k11, @NonNull V v10, @NonNull K k12, @NonNull V v11, @NonNull K k13, @NonNull V v12, @NonNull K k14, @NonNull V v13, @NonNull K k15, @NonNull V v14) {
        Map k16 = k(6, false);
        k16.put(k10, v9);
        k16.put(k11, v10);
        k16.put(k12, v11);
        k16.put(k13, v12);
        k16.put(k14, v13);
        k16.put(k15, v14);
        return Collections.unmodifiableMap(k16);
    }

    @NonNull
    @u2.a
    public static <K, V> Map<K, V> g(@NonNull K[] kArr, @NonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            StringBuilder sb = new StringBuilder(66);
            sb.append("Key and values array lengths not equal: ");
            sb.append(length);
            sb.append(" != ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        } else if (length != 0) {
            if (length != 1) {
                Map k10 = k(length, false);
                for (int i4 = 0; i4 < kArr.length; i4++) {
                    k10.put(kArr[i4], vArr[i4]);
                }
                return Collections.unmodifiableMap(k10);
            }
            return Collections.singletonMap(kArr[0], vArr[0]);
        } else {
            return Collections.emptyMap();
        }
    }

    @NonNull
    @u2.a
    public static <T> Set<T> h(int i4) {
        if (i4 == 0) {
            return new ArraySet();
        }
        return l(i4, true);
    }

    @NonNull
    @u2.a
    @Deprecated
    public static <T> Set<T> i(@NonNull T t9, @NonNull T t10, @NonNull T t11) {
        Set l10 = l(3, false);
        l10.add(t9);
        l10.add(t10);
        l10.add(t11);
        return Collections.unmodifiableSet(l10);
    }

    @NonNull
    @u2.a
    @Deprecated
    public static <T> Set<T> j(@NonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                if (length == 2) {
                    T t9 = tArr[0];
                    T t10 = tArr[1];
                    Set l10 = l(2, false);
                    l10.add(t9);
                    l10.add(t10);
                    return Collections.unmodifiableSet(l10);
                } else if (length != 3) {
                    if (length != 4) {
                        Set l11 = l(length, false);
                        Collections.addAll(l11, tArr);
                        return Collections.unmodifiableSet(l11);
                    }
                    T t11 = tArr[0];
                    T t12 = tArr[1];
                    T t13 = tArr[2];
                    T t14 = tArr[3];
                    Set l12 = l(4, false);
                    l12.add(t11);
                    l12.add(t12);
                    l12.add(t13);
                    l12.add(t14);
                    return Collections.unmodifiableSet(l12);
                } else {
                    return i(tArr[0], tArr[1], tArr[2]);
                }
            }
            return Collections.singleton(tArr[0]);
        }
        return Collections.emptySet();
    }

    private static <K, V> Map<K, V> k(int i4, boolean z9) {
        if (i4 <= 256) {
            return new ArrayMap(i4);
        }
        return new HashMap(i4, 1.0f);
    }

    private static <T> Set<T> l(int i4, boolean z9) {
        float f10 = true != z9 ? 1.0f : 0.75f;
        if (i4 <= (true != z9 ? 256 : 128)) {
            return new ArraySet(i4);
        }
        return new HashSet(i4, f10);
    }
}
