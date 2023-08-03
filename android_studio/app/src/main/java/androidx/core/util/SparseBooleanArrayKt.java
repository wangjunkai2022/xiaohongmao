package androidx.core.util;

import android.util.SparseBooleanArray;
import com.alipay.sdk.packet.d;
import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.BooleanIterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SparseBooleanArray.kt */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\b\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006H\u0086\b\u001aH\u0010\u000b\u001a\u00020\f*\u00020\u000226\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\f0\u000eH\u0086\bø\u0001\u0000\u001a\u001d\u0010\u0011\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0006H\u0086\b\u001a&\u0010\u0013\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0086\bø\u0001\u0000\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0002\u001a\u0015\u0010\u0019\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0086\u0002\u001a\u0012\u0010\u001b\u001a\u00020\f*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u001a\u0010\u001c\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006\u001a\u001d\u0010\u001d\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0086\n\u001a\n\u0010\u001e\u001a\u00020\u001f*\u00020\u0002\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {f.f47745b, "", "Landroid/util/SparseBooleanArray;", "getSize", "(Landroid/util/SparseBooleanArray;)I", "contains", "", "key", "containsKey", "containsValue", "value", "forEach", "", d.f6907q, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "isEmpty", "isNotEmpty", "keyIterator", "Lkotlin/collections/IntIterator;", "plus", "other", "putAll", "remove", "set", "valueIterator", "Lkotlin/collections/BooleanIterator;", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SparseBooleanArrayKt {
    public static final boolean contains(@g SparseBooleanArray sparseBooleanArray, int i4) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i4) >= 0;
    }

    public static final boolean containsKey(@g SparseBooleanArray sparseBooleanArray, int i4) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i4) >= 0;
    }

    public static final boolean containsValue(@g SparseBooleanArray sparseBooleanArray, boolean z9) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfValue(z9) >= 0;
    }

    public static final void forEach(@g SparseBooleanArray sparseBooleanArray, @g Function2<? super Integer, ? super Boolean, Unit> action) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = sparseBooleanArray.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            action.invoke(Integer.valueOf(sparseBooleanArray.keyAt(i4)), Boolean.valueOf(sparseBooleanArray.valueAt(i4)));
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    public static final boolean getOrDefault(@g SparseBooleanArray sparseBooleanArray, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.get(i4, z9);
    }

    public static final boolean getOrElse(@g SparseBooleanArray sparseBooleanArray, int i4, @g Function0<Boolean> defaultValue) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int indexOfKey = sparseBooleanArray.indexOfKey(i4);
        return indexOfKey >= 0 ? sparseBooleanArray.valueAt(indexOfKey) : defaultValue.invoke().booleanValue();
    }

    public static final int getSize(@g SparseBooleanArray sparseBooleanArray) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(@g SparseBooleanArray sparseBooleanArray) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() == 0;
    }

    public static final boolean isNotEmpty(@g SparseBooleanArray sparseBooleanArray) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() != 0;
    }

    @g
    public static final IntIterator keyIterator(@g final SparseBooleanArray sparseBooleanArray) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return new IntIterator() { // from class: androidx.core.util.SparseBooleanArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // kotlin.collections.IntIterator
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i4 = this.index;
                this.index = i4 + 1;
                return sparseBooleanArray2.keyAt(i4);
            }

            public final void setIndex(int i4) {
                this.index = i4;
            }
        };
    }

    @g
    public static final SparseBooleanArray plus(@g SparseBooleanArray sparseBooleanArray, @g SparseBooleanArray other) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(sparseBooleanArray.size() + other.size());
        putAll(sparseBooleanArray2, sparseBooleanArray);
        putAll(sparseBooleanArray2, other);
        return sparseBooleanArray2;
    }

    public static final void putAll(@g SparseBooleanArray sparseBooleanArray, @g SparseBooleanArray other) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = other.size();
        if (size <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            sparseBooleanArray.put(other.keyAt(i4), other.valueAt(i4));
            if (i10 >= size) {
                return;
            }
            i4 = i10;
        }
    }

    public static final boolean remove(@g SparseBooleanArray sparseBooleanArray, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        int indexOfKey = sparseBooleanArray.indexOfKey(i4);
        if (indexOfKey < 0 || z9 != sparseBooleanArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseBooleanArray.delete(i4);
        return true;
    }

    public static final void set(@g SparseBooleanArray sparseBooleanArray, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        sparseBooleanArray.put(i4, z9);
    }

    @g
    public static final BooleanIterator valueIterator(@g final SparseBooleanArray sparseBooleanArray) {
        Intrinsics.checkNotNullParameter(sparseBooleanArray, "<this>");
        return new BooleanIterator() { // from class: androidx.core.util.SparseBooleanArrayKt$valueIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // kotlin.collections.BooleanIterator
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i4 = this.index;
                this.index = i4 + 1;
                return sparseBooleanArray2.valueAt(i4);
            }

            public final void setIndex(int i4) {
                this.index = i4;
            }
        };
    }
}
