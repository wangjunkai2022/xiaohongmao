package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ArrayMap.kt */
/* loaded from: classes4.dex */
public final class ArrayMapImpl<T> extends ArrayMap<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private Object[] data;
    private int size;

    /* compiled from: ArrayMap.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private ArrayMapImpl(Object[] objArr, int i4) {
        super(null);
        this.data = objArr;
        this.size = i4;
    }

    private final void ensureCapacity(int i4) {
        Object[] objArr = this.data;
        if (objArr.length <= i4) {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.data = copyOf;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    @h
    public T get(int i4) {
        Object orNull;
        orNull = ArraysKt___ArraysKt.getOrNull(this.data, i4);
        return (T) orNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    @g
    public Iterator<T> iterator() {
        return new AbstractIterator<T>(this) { // from class: kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl$iterator$1
            private int index = -1;
            final /* synthetic */ ArrayMapImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // kotlin.collections.AbstractIterator
            protected void computeNext() {
                Object[] objArr;
                Object[] objArr2;
                Object[] objArr3;
                Object[] objArr4;
                do {
                    int i4 = this.index + 1;
                    this.index = i4;
                    objArr = ((ArrayMapImpl) this.this$0).data;
                    if (i4 >= objArr.length) {
                        break;
                    }
                    objArr4 = ((ArrayMapImpl) this.this$0).data;
                } while (objArr4[this.index] == null);
                int i10 = this.index;
                objArr2 = ((ArrayMapImpl) this.this$0).data;
                if (i10 >= objArr2.length) {
                    done();
                    return;
                }
                objArr3 = ((ArrayMapImpl) this.this$0).data;
                Object obj = objArr3[this.index];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl");
                setNext(obj);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public void set(int i4, @g T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        ensureCapacity(i4);
        if (this.data[i4] == null) {
            this.size = getSize() + 1;
        }
        this.data[i4] = value;
    }

    public ArrayMapImpl() {
        this(new Object[20], 0);
    }
}
