package androidx.core.util;

import android.util.SparseLongArray;
import androidx.annotation.RequiresApi;
import com.alipay.sdk.packet.d;
import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.collections.LongIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SparseLongArray.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0087\b\u001aH\u0010\f\u001a\u00020\r*\u00020\u000226\u0010\u000e\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u000fH\u0087\bø\u0001\u0000\u001a\u001d\u0010\u0012\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000bH\u0087\b\u001a&\u0010\u0014\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015H\u0087\bø\u0001\u0000\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\f\u0010\u0018\u001a\u00020\u0019*\u00020\u0002H\u0007\u001a\u0015\u0010\u001a\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0087\u0002\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0007\u001a\u001c\u0010\u001d\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\u001d\u0010\u001e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH\u0087\n\u001a\f\u0010\u001f\u001a\u00020 *\u00020\u0002H\u0007\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006!"}, d2 = {f.f47745b, "", "Landroid/util/SparseLongArray;", "getSize", "(Landroid/util/SparseLongArray;)I", "contains", "", "key", "containsKey", "containsValue", "value", "", "forEach", "", d.f6907q, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "isEmpty", "isNotEmpty", "keyIterator", "Lkotlin/collections/IntIterator;", "plus", "other", "putAll", "remove", "set", "valueIterator", "Lkotlin/collections/LongIterator;", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SparseLongArrayKt {
    @RequiresApi(18)
    public static final boolean contains(@g SparseLongArray sparseLongArray, int i4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i4) >= 0;
    }

    @RequiresApi(18)
    public static final boolean containsKey(@g SparseLongArray sparseLongArray, int i4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i4) >= 0;
    }

    @RequiresApi(18)
    public static final boolean containsValue(@g SparseLongArray sparseLongArray, long j4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.indexOfValue(j4) >= 0;
    }

    @RequiresApi(18)
    public static final void forEach(@g SparseLongArray sparseLongArray, @g Function2<? super Integer, ? super Long, Unit> action) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = sparseLongArray.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            action.invoke(Integer.valueOf(sparseLongArray.keyAt(i4)), Long.valueOf(sparseLongArray.valueAt(i4)));
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    @RequiresApi(18)
    public static final long getOrDefault(@g SparseLongArray sparseLongArray, int i4, long j4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.get(i4, j4);
    }

    @RequiresApi(18)
    public static final long getOrElse(@g SparseLongArray sparseLongArray, int i4, @g Function0<Long> defaultValue) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int indexOfKey = sparseLongArray.indexOfKey(i4);
        return indexOfKey >= 0 ? sparseLongArray.valueAt(indexOfKey) : defaultValue.invoke().longValue();
    }

    @RequiresApi(18)
    public static final int getSize(@g SparseLongArray sparseLongArray) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.size();
    }

    @RequiresApi(18)
    public static final boolean isEmpty(@g SparseLongArray sparseLongArray) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.size() == 0;
    }

    @RequiresApi(18)
    public static final boolean isNotEmpty(@g SparseLongArray sparseLongArray) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return sparseLongArray.size() != 0;
    }

    @RequiresApi(18)
    @g
    public static final IntIterator keyIterator(@g final SparseLongArray sparseLongArray) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return new IntIterator() { // from class: androidx.core.util.SparseLongArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // kotlin.collections.IntIterator
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i4 = this.index;
                this.index = i4 + 1;
                return sparseLongArray2.keyAt(i4);
            }

            public final void setIndex(int i4) {
                this.index = i4;
            }
        };
    }

    @RequiresApi(18)
    @g
    public static final SparseLongArray plus(@g SparseLongArray sparseLongArray, @g SparseLongArray other) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        SparseLongArray sparseLongArray2 = new SparseLongArray(sparseLongArray.size() + other.size());
        putAll(sparseLongArray2, sparseLongArray);
        putAll(sparseLongArray2, other);
        return sparseLongArray2;
    }

    @RequiresApi(18)
    public static final void putAll(@g SparseLongArray sparseLongArray, @g SparseLongArray other) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            sparseLongArray.put(other.keyAt(i4), other.valueAt(i4));
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    @RequiresApi(18)
    public static final boolean remove(@g SparseLongArray sparseLongArray, int i4, long j4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        int indexOfKey = sparseLongArray.indexOfKey(i4);
        if (indexOfKey < 0 || j4 != sparseLongArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseLongArray.removeAt(indexOfKey);
        return true;
    }

    @RequiresApi(18)
    public static final void set(@g SparseLongArray sparseLongArray, int i4, long j4) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        sparseLongArray.put(i4, j4);
    }

    @RequiresApi(18)
    @g
    public static final LongIterator valueIterator(@g final SparseLongArray sparseLongArray) {
        Intrinsics.checkNotNullParameter(sparseLongArray, "<this>");
        return new LongIterator() { // from class: androidx.core.util.SparseLongArrayKt$valueIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // kotlin.collections.LongIterator
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i4 = this.index;
                this.index = i4 + 1;
                return sparseLongArray2.valueAt(i4);
            }

            public final void setIndex(int i4) {
                this.index = i4;
            }
        };
    }
}
