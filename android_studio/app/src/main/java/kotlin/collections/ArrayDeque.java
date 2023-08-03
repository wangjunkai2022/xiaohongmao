package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: ArrayDeque.kt */
@SinceKotlin(version = "1.4")
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0007\u0018\u0000 P*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001PB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0007\b\u0016¢\u0006\u0002\u0010\u0006B\u0015\b\u0016\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cJ\b\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140)H\u0082\bJ\u000b\u0010*\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\u0016\u00102\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0004H\u0083\b¢\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\bJM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u001705H\u0000¢\u0006\u0002\b8J\b\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028\u0000¢\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028\u0000¢\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016J\u001e\u0010G\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0000¢\u0006\u0004\bJ\u0010KJ)\u0010I\u001a\b\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\b\u0001\u0010L2\f\u0010M\u001a\b\u0012\u0004\u0012\u0002HL0\u000bH\u0000¢\u0006\u0004\bJ\u0010NJ\u0015\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0016¢\u0006\u0002\u0010KJ'\u0010O\u001a\b\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\b\u0001\u0010L2\f\u0010M\u001a\b\u0012\u0004\u0012\u0002HL0\u000bH\u0016¢\u0006\u0002\u0010NR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006Q"}, d2 = {"Lkotlin/collections/ArrayDeque;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableList;", "initialCapacity", "", "(I)V", "()V", "elements", "", "(Ljava/util/Collection;)V", "elementData", "", "", "[Ljava/lang/Object;", d.f25724o, "<set-?>", f.f47745b, "getSize", "()I", "add", "", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "addFirst", "(Ljava/lang/Object;)V", "addLast", "clear", "contains", "copyCollectionElements", "internalIndex", "copyElements", "newCapacity", "decremented", "ensureCapacity", "minCapacity", "filterInPlace", "predicate", "Lkotlin/Function1;", "first", "()Ljava/lang/Object;", "firstOrNull", "get", "(I)Ljava/lang/Object;", "incremented", "indexOf", "(Ljava/lang/Object;)I", "internalGet", "internalStructure", "structure", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "internalStructure$kotlin_stdlib", "isEmpty", "last", "lastIndexOf", "lastOrNull", "negativeMod", "positiveMod", "remove", "removeAll", "removeAt", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "testToArray", "testToArray$kotlin_stdlib", "()[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toArray", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@WasExperimental(markerClass = {ExperimentalStdlibApi.class})
/* loaded from: classes4.dex */
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    private static final int defaultMinCapacity = 10;
    private static final int maxArraySize = 2147483639;
    @g
    private Object[] elementData;
    private int head;
    private int size;
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Object[] emptyElementData = new Object[0];

    /* compiled from: ArrayDeque.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlin/collections/ArrayDeque$Companion;", "", "()V", "defaultMinCapacity", "", "emptyElementData", "", "[Ljava/lang/Object;", "maxArraySize", "newCapacity", "oldCapacity", "minCapacity", "newCapacity$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int newCapacity$kotlin_stdlib(int i4, int i10) {
            int i11 = i4 + (i4 >> 1);
            if (i11 - i10 < 0) {
                i11 = i10;
            }
            if (i11 - ArrayDeque.maxArraySize > 0) {
                if (i10 > ArrayDeque.maxArraySize) {
                    return Integer.MAX_VALUE;
                }
                return ArrayDeque.maxArraySize;
            }
            return i11;
        }
    }

    public ArrayDeque(int i4) {
        Object[] objArr;
        if (i4 == 0) {
            objArr = emptyElementData;
        } else if (i4 > 0) {
            objArr = new Object[i4];
        } else {
            throw new IllegalArgumentException("Illegal Capacity: " + i4);
        }
        this.elementData = objArr;
    }

    private final void copyCollectionElements(int i4, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.elementData.length;
        while (i4 < length && it.hasNext()) {
            this.elementData[i4] = it.next();
            i4++;
        }
        int i10 = this.head;
        for (int i11 = 0; i11 < i10 && it.hasNext(); i11++) {
            this.elementData[i11] = it.next();
        }
        this.size = size() + collection.size();
    }

    private final void copyElements(int i4) {
        Object[] objArr = new Object[i4];
        Object[] objArr2 = this.elementData;
        ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i10 = this.head;
        ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr, length - i10, 0, i10);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int decremented(int i4) {
        int lastIndex;
        if (i4 == 0) {
            lastIndex = ArraysKt___ArraysKt.getLastIndex(this.elementData);
            return lastIndex;
        }
        return i4 - 1;
    }

    private final void ensureCapacity(int i4) {
        int coerceAtLeast;
        if (i4 >= 0) {
            Object[] objArr = this.elementData;
            if (i4 <= objArr.length) {
                return;
            }
            if (objArr == emptyElementData) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i4, 10);
                this.elementData = new Object[coerceAtLeast];
                return;
            }
            copyElements(Companion.newCapacity$kotlin_stdlib(objArr.length, i4));
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    private final boolean filterInPlace(Function1<? super E, Boolean> function1) {
        int positiveMod;
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod2 = positiveMod(this.head + size());
                int i4 = this.head;
                if (i4 < positiveMod2) {
                    positiveMod = i4;
                    while (i4 < positiveMod2) {
                        Object obj = this.elementData[i4];
                        if (function1.invoke(obj).booleanValue()) {
                            this.elementData[positiveMod] = obj;
                            positiveMod++;
                        } else {
                            z9 = true;
                        }
                        i4++;
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, positiveMod, positiveMod2);
                } else {
                    int length = this.elementData.length;
                    int i10 = i4;
                    boolean z10 = false;
                    while (i4 < length) {
                        Object[] objArr = this.elementData;
                        Object obj2 = objArr[i4];
                        objArr[i4] = null;
                        if (function1.invoke(obj2).booleanValue()) {
                            this.elementData[i10] = obj2;
                            i10++;
                        } else {
                            z10 = true;
                        }
                        i4++;
                    }
                    positiveMod = positiveMod(i10);
                    for (int i11 = 0; i11 < positiveMod2; i11++) {
                        Object[] objArr2 = this.elementData;
                        Object obj3 = objArr2[i11];
                        objArr2[i11] = null;
                        if (function1.invoke(obj3).booleanValue()) {
                            this.elementData[positiveMod] = obj3;
                            positiveMod = incremented(positiveMod);
                        } else {
                            z10 = true;
                        }
                    }
                    z9 = z10;
                }
                if (z9) {
                    this.size = negativeMod(positiveMod - this.head);
                }
            }
        }
        return z9;
    }

    private final int incremented(int i4) {
        int lastIndex;
        lastIndex = ArraysKt___ArraysKt.getLastIndex(this.elementData);
        if (i4 == lastIndex) {
            return 0;
        }
        return i4 + 1;
    }

    @InlineOnly
    private final E internalGet(int i4) {
        return (E) this.elementData[i4];
    }

    @InlineOnly
    private final int internalIndex(int i4) {
        return positiveMod(this.head + i4);
    }

    private final int negativeMod(int i4) {
        return i4 < 0 ? i4 + this.elementData.length : i4;
    }

    private final int positiveMod(int i4) {
        Object[] objArr = this.elementData;
        return i4 >= objArr.length ? i4 - objArr.length : i4;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        addLast(e4);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@g Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        ensureCapacity(size() + elements.size());
        copyCollectionElements(positiveMod(this.head + size()), elements);
        return true;
    }

    public final void addFirst(E e4) {
        ensureCapacity(size() + 1);
        int decremented = decremented(this.head);
        this.head = decremented;
        this.elementData[decremented] = e4;
        this.size = size() + 1;
    }

    public final void addLast(E e4) {
        ensureCapacity(size() + 1);
        this.elementData[positiveMod(this.head + size())] = e4;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int positiveMod = positiveMod(this.head + size());
        int i4 = this.head;
        if (i4 < positiveMod) {
            ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, i4, positiveMod);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, this.head, objArr.length);
            ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, 0, positiveMod);
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.elementData[this.head];
    }

    @h
    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i4) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i4, size());
        return (E) this.elementData[positiveMod(this.head + i4)];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i4;
        int positiveMod = positiveMod(this.head + size());
        int i10 = this.head;
        if (i10 < positiveMod) {
            while (i10 < positiveMod) {
                if (Intrinsics.areEqual(obj, this.elementData[i10])) {
                    i4 = this.head;
                } else {
                    i10++;
                }
            }
            return -1;
        } else if (i10 < positiveMod) {
            return -1;
        } else {
            int length = this.elementData.length;
            while (true) {
                if (i10 >= length) {
                    for (int i11 = 0; i11 < positiveMod; i11++) {
                        if (Intrinsics.areEqual(obj, this.elementData[i11])) {
                            i10 = i11 + this.elementData.length;
                            i4 = this.head;
                        }
                    }
                    return -1;
                } else if (Intrinsics.areEqual(obj, this.elementData[i10])) {
                    i4 = this.head;
                    break;
                } else {
                    i10++;
                }
            }
        }
        return i10 - i4;
    }

    public final void internalStructure$kotlin_stdlib(@g Function2<? super Integer, ? super Object[], Unit> structure) {
        int i4;
        Intrinsics.checkNotNullParameter(structure, "structure");
        structure.invoke(Integer.valueOf((isEmpty() || (i4 = this.head) < positiveMod(this.head + size())) ? this.head : i4 - this.elementData.length), toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        int lastIndex;
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.elementData;
        int i4 = this.head;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        return (E) objArr[positiveMod(i4 + lastIndex)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int lastIndex;
        int i4;
        int positiveMod = positiveMod(this.head + size());
        int i10 = this.head;
        if (i10 < positiveMod) {
            lastIndex = positiveMod - 1;
            if (i10 <= lastIndex) {
                while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                    if (lastIndex != i10) {
                        lastIndex--;
                    }
                }
                i4 = this.head;
                return lastIndex - i4;
            }
            return -1;
        }
        if (i10 > positiveMod) {
            int i11 = positiveMod - 1;
            while (true) {
                if (-1 < i11) {
                    if (Intrinsics.areEqual(obj, this.elementData[i11])) {
                        lastIndex = i11 + this.elementData.length;
                        i4 = this.head;
                        break;
                    }
                    i11--;
                } else {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(this.elementData);
                    int i12 = this.head;
                    if (i12 <= lastIndex) {
                        while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                            if (lastIndex != i12) {
                                lastIndex--;
                            }
                        }
                        i4 = this.head;
                    }
                }
            }
        }
        return -1;
    }

    @h
    public final E lastOrNull() {
        int lastIndex;
        if (isEmpty()) {
            return null;
        }
        Object[] objArr = this.elementData;
        int i4 = this.head;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        return (E) objArr[positiveMod(i4 + lastIndex)];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@g Collection<? extends Object> elements) {
        int positiveMod;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod2 = positiveMod(this.head + size());
                int i4 = this.head;
                if (i4 < positiveMod2) {
                    positiveMod = i4;
                    while (i4 < positiveMod2) {
                        Object obj = this.elementData[i4];
                        if (!elements.contains(obj)) {
                            this.elementData[positiveMod] = obj;
                            positiveMod++;
                        } else {
                            z9 = true;
                        }
                        i4++;
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, positiveMod, positiveMod2);
                } else {
                    int length = this.elementData.length;
                    int i10 = i4;
                    boolean z10 = false;
                    while (i4 < length) {
                        Object[] objArr = this.elementData;
                        Object obj2 = objArr[i4];
                        objArr[i4] = null;
                        if (!elements.contains(obj2)) {
                            this.elementData[i10] = obj2;
                            i10++;
                        } else {
                            z10 = true;
                        }
                        i4++;
                    }
                    positiveMod = positiveMod(i10);
                    for (int i11 = 0; i11 < positiveMod2; i11++) {
                        Object[] objArr2 = this.elementData;
                        Object obj3 = objArr2[i11];
                        objArr2[i11] = null;
                        if (!elements.contains(obj3)) {
                            this.elementData[positiveMod] = obj3;
                            positiveMod = incremented(positiveMod);
                        } else {
                            z10 = true;
                        }
                    }
                    z9 = z10;
                }
                if (z9) {
                    this.size = negativeMod(positiveMod - this.head);
                }
            }
        }
        return z9;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int i4) {
        int lastIndex;
        int lastIndex2;
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i4, size());
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
        if (i4 == lastIndex) {
            return removeLast();
        }
        if (i4 == 0) {
            return removeFirst();
        }
        int positiveMod = positiveMod(this.head + i4);
        E e4 = (E) this.elementData[positiveMod];
        if (i4 < (size() >> 1)) {
            int i10 = this.head;
            if (positiveMod >= i10) {
                Object[] objArr = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i10 + 1, i10, positiveMod);
            } else {
                Object[] objArr2 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, 1, 0, positiveMod);
                Object[] objArr3 = this.elementData;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i11 = this.head;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, i11 + 1, i11, objArr3.length - 1);
            }
            Object[] objArr4 = this.elementData;
            int i12 = this.head;
            objArr4[i12] = null;
            this.head = incremented(i12);
        } else {
            int i13 = this.head;
            lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(this);
            int positiveMod2 = positiveMod(i13 + lastIndex2);
            if (positiveMod <= positiveMod2) {
                Object[] objArr5 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, positiveMod, positiveMod + 1, positiveMod2 + 1);
            } else {
                Object[] objArr6 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, positiveMod, positiveMod + 1, objArr6.length);
                Object[] objArr7 = this.elementData;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, 1, positiveMod2 + 1);
            }
            this.elementData[positiveMod2] = null;
        }
        this.size = size() - 1;
        return e4;
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            Object[] objArr = this.elementData;
            int i4 = this.head;
            E e4 = (E) objArr[i4];
            objArr[i4] = null;
            this.head = incremented(i4);
            this.size = size() - 1;
            return e4;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @h
    public final E removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E removeLast() {
        int lastIndex;
        if (!isEmpty()) {
            int i4 = this.head;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this);
            int positiveMod = positiveMod(i4 + lastIndex);
            Object[] objArr = this.elementData;
            E e4 = (E) objArr[positiveMod];
            objArr[positiveMod] = null;
            this.size = size() - 1;
            return e4;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @h
    public final E removeLastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@g Collection<? extends Object> elements) {
        int positiveMod;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty()) {
            if (!(this.elementData.length == 0)) {
                int positiveMod2 = positiveMod(this.head + size());
                int i4 = this.head;
                if (i4 < positiveMod2) {
                    positiveMod = i4;
                    while (i4 < positiveMod2) {
                        Object obj = this.elementData[i4];
                        if (elements.contains(obj)) {
                            this.elementData[positiveMod] = obj;
                            positiveMod++;
                        } else {
                            z9 = true;
                        }
                        i4++;
                    }
                    ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, positiveMod, positiveMod2);
                } else {
                    int length = this.elementData.length;
                    int i10 = i4;
                    boolean z10 = false;
                    while (i4 < length) {
                        Object[] objArr = this.elementData;
                        Object obj2 = objArr[i4];
                        objArr[i4] = null;
                        if (elements.contains(obj2)) {
                            this.elementData[i10] = obj2;
                            i10++;
                        } else {
                            z10 = true;
                        }
                        i4++;
                    }
                    positiveMod = positiveMod(i10);
                    for (int i11 = 0; i11 < positiveMod2; i11++) {
                        Object[] objArr2 = this.elementData;
                        Object obj3 = objArr2[i11];
                        objArr2[i11] = null;
                        if (elements.contains(obj3)) {
                            this.elementData[positiveMod] = obj3;
                            positiveMod = incremented(positiveMod);
                        } else {
                            z10 = true;
                        }
                    }
                    z9 = z10;
                }
                if (z9) {
                    this.size = negativeMod(positiveMod - this.head);
                }
            }
        }
        return z9;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int i4, E e4) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i4, size());
        int positiveMod = positiveMod(this.head + i4);
        Object[] objArr = this.elementData;
        E e10 = (E) objArr[positiveMod];
        objArr[positiveMod] = e4;
        return e10;
    }

    @g
    public final <T> T[] testToArray$kotlin_stdlib(@g T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) toArray(array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @g
    public <T> T[] toArray(@g T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) ArraysKt__ArraysJVMKt.arrayOfNulls(array, size());
        }
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int positiveMod = positiveMod(this.head + size());
        int i4 = this.head;
        if (i4 < positiveMod) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.elementData, array, 0, i4, positiveMod, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt___ArraysJvmKt.copyInto(objArr, array, 0, this.head, objArr.length);
            Object[] objArr2 = this.elementData;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, array, objArr2.length - this.head, 0, positiveMod);
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        return array;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int i4, E e4) {
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i4, size());
        if (i4 == size()) {
            addLast(e4);
        } else if (i4 == 0) {
            addFirst(e4);
        } else {
            ensureCapacity(size() + 1);
            int positiveMod = positiveMod(this.head + i4);
            if (i4 < ((size() + 1) >> 1)) {
                int decremented = decremented(positiveMod);
                int decremented2 = decremented(this.head);
                int i10 = this.head;
                if (decremented >= i10) {
                    Object[] objArr = this.elementData;
                    objArr[decremented2] = objArr[i10];
                    ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i10, i10 + 1, decremented + 1);
                } else {
                    Object[] objArr2 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i10 - 1, i10, objArr2.length);
                    Object[] objArr3 = this.elementData;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, 0, 1, decremented + 1);
                }
                this.elementData[decremented] = e4;
                this.head = decremented2;
            } else {
                int positiveMod2 = positiveMod(this.head + size());
                if (positiveMod < positiveMod2) {
                    Object[] objArr4 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, positiveMod + 1, positiveMod, positiveMod2);
                } else {
                    Object[] objArr5 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, 1, 0, positiveMod2);
                    Object[] objArr6 = this.elementData;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, positiveMod + 1, positiveMod, objArr6.length - 1);
                }
                this.elementData[positiveMod] = e4;
            }
            this.size = size() + 1;
        }
    }

    @g
    public final Object[] testToArray$kotlin_stdlib() {
        return toArray();
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i4, @g Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i4, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i4 == size()) {
            return addAll(elements);
        }
        ensureCapacity(size() + elements.size());
        int positiveMod = positiveMod(this.head + size());
        int positiveMod2 = positiveMod(this.head + i4);
        int size = elements.size();
        if (i4 < ((size() + 1) >> 1)) {
            int i10 = this.head;
            int i11 = i10 - size;
            if (positiveMod2 < i10) {
                Object[] objArr = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i11, i10, objArr.length);
                if (size >= positiveMod2) {
                    Object[] objArr2 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, objArr2.length - size, 0, positiveMod2);
                } else {
                    Object[] objArr3 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, 0, size, positiveMod2);
                }
            } else if (i11 >= 0) {
                Object[] objArr5 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, i11, i10, positiveMod2);
            } else {
                Object[] objArr6 = this.elementData;
                i11 += objArr6.length;
                int i12 = positiveMod2 - i10;
                int length = objArr6.length - i11;
                if (length >= i12) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i11, i10, positiveMod2);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i11, i10, i10 + length);
                    Object[] objArr7 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, this.head + length, positiveMod2);
                }
            }
            this.head = i11;
            copyCollectionElements(negativeMod(positiveMod2 - size), elements);
        } else {
            int i13 = positiveMod2 + size;
            if (positiveMod2 < positiveMod) {
                int i14 = size + positiveMod;
                Object[] objArr8 = this.elementData;
                if (i14 <= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i13, positiveMod2, positiveMod);
                } else if (i13 >= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i13 - objArr8.length, positiveMod2, positiveMod);
                } else {
                    int length2 = positiveMod - (i14 - objArr8.length);
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, 0, length2, positiveMod);
                    Object[] objArr9 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr9, objArr9, i13, positiveMod2, length2);
                }
            } else {
                Object[] objArr10 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr10, objArr10, size, 0, positiveMod);
                Object[] objArr11 = this.elementData;
                if (i13 >= objArr11.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, i13 - objArr11.length, positiveMod2, objArr11.length);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr12, objArr12, i13, positiveMod2, objArr12.length - size);
                }
            }
            copyCollectionElements(positiveMod2, elements);
        }
        return true;
    }

    public ArrayDeque() {
        this.elementData = emptyElementData;
    }

    public ArrayDeque(@g Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.elementData = array;
        this.size = array.length;
        if (array.length == 0) {
            this.elementData = emptyElementData;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @g
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
