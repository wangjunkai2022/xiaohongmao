package kotlin.reflect.jvm.internal.impl.utils;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import m8.g;

/* loaded from: classes4.dex */
public class SmartList<E> extends AbstractList<E> implements RandomAccess {
    private Object myElem;
    private int mySize;

    /* loaded from: classes4.dex */
    private static class EmptyIterator<T> implements Iterator<T> {
        private static final EmptyIterator INSTANCE = new EmptyIterator();

        private EmptyIterator() {
        }

        public static <T> EmptyIterator<T> getInstance() {
            return INSTANCE;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes4.dex */
    private class SingletonIterator extends SingletonIteratorBase<E> {
        private final int myInitialModCount;

        public SingletonIterator() {
            super();
            this.myInitialModCount = ((AbstractList) SmartList.this).modCount;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.SmartList.SingletonIteratorBase
        protected void checkCoModification() {
            if (((AbstractList) SmartList.this).modCount == this.myInitialModCount) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + ((AbstractList) SmartList.this).modCount + "; expected: " + this.myInitialModCount);
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.SmartList.SingletonIteratorBase
        protected E getElement() {
            return (E) SmartList.this.myElem;
        }

        @Override // java.util.Iterator
        public void remove() {
            checkCoModification();
            SmartList.this.clear();
        }
    }

    /* loaded from: classes4.dex */
    private static abstract class SingletonIteratorBase<T> implements Iterator<T> {
        private boolean myVisited;

        private SingletonIteratorBase() {
        }

        protected abstract void checkCoModification();

        protected abstract T getElement();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.myVisited;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.myVisited) {
                this.myVisited = true;
                checkCoModification();
                return getElement();
            }
            throw new NoSuchElementException();
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 2 || i4 == 3 || i4 == 5 || i4 == 6 || i4 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 2 || i4 == 3 || i4 == 5 || i4 == 6 || i4 == 7) ? 2 : 3];
        switch (i4) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = "a";
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (i4 == 2 || i4 == 3) {
            objArr[1] = "iterator";
        } else if (i4 == 5 || i4 == 6 || i4 == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (i4) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i4 != 2 && i4 != 3 && i4 != 5 && i4 != 6 && i4 != 7) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e4) {
        int i4 = this.mySize;
        if (i4 == 0) {
            this.myElem = e4;
        } else if (i4 == 1) {
            this.myElem = new Object[]{this.myElem, e4};
        } else {
            Object[] objArr = (Object[]) this.myElem;
            int length = objArr.length;
            if (i4 >= length) {
                int i10 = ((length * 3) / 2) + 1;
                int i11 = i4 + 1;
                if (i10 < i11) {
                    i10 = i11;
                }
                Object[] objArr2 = new Object[i10];
                this.myElem = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
                objArr = objArr2;
            }
            objArr[this.mySize] = e4;
        }
        this.mySize++;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.myElem = null;
        this.mySize = 0;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i4) {
        int i10;
        if (i4 >= 0 && i4 < (i10 = this.mySize)) {
            if (i10 == 1) {
                return (E) this.myElem;
            }
            return (E) ((Object[]) this.myElem)[i4];
        }
        throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + this.mySize);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @g
    public Iterator<E> iterator() {
        int i4 = this.mySize;
        if (i4 == 0) {
            EmptyIterator emptyIterator = EmptyIterator.getInstance();
            if (emptyIterator == null) {
                $$$reportNull$$$0(2);
            }
            return emptyIterator;
        } else if (i4 == 1) {
            return new SingletonIterator();
        } else {
            Iterator<E> it = super.iterator();
            if (it == null) {
                $$$reportNull$$$0(3);
            }
            return it;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i4) {
        int i10;
        E e4;
        if (i4 >= 0 && i4 < (i10 = this.mySize)) {
            if (i10 == 1) {
                e4 = (E) this.myElem;
                this.myElem = null;
            } else {
                Object[] objArr = (Object[]) this.myElem;
                Object obj = objArr[i4];
                if (i10 == 2) {
                    this.myElem = objArr[1 - i4];
                } else {
                    int i11 = (i10 - i4) - 1;
                    if (i11 > 0) {
                        System.arraycopy(objArr, i4 + 1, objArr, i4, i11);
                    }
                    objArr[this.mySize - 1] = null;
                }
                e4 = (E) obj;
            }
            this.mySize--;
            ((AbstractList) this).modCount++;
            return e4;
        }
        throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + this.mySize);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i4, E e4) {
        int i10;
        if (i4 < 0 || i4 >= (i10 = this.mySize)) {
            throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + this.mySize);
        } else if (i10 == 1) {
            E e10 = (E) this.myElem;
            this.myElem = e4;
            return e10;
        } else {
            Object[] objArr = (Object[]) this.myElem;
            E e11 = (E) objArr[i4];
            objArr[i4] = e4;
            return e11;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.mySize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @g
    public <T> T[] toArray(@g T[] tArr) {
        if (tArr == 0) {
            $$$reportNull$$$0(4);
        }
        int length = tArr.length;
        int i4 = this.mySize;
        if (i4 == 1) {
            if (length != 0) {
                tArr[0] = this.myElem;
            } else {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
                tArr2[0] = this.myElem;
                return tArr2;
            }
        } else if (length < i4) {
            T[] tArr3 = (T[]) Arrays.copyOf((Object[]) this.myElem, i4, tArr.getClass());
            if (tArr3 == null) {
                $$$reportNull$$$0(6);
            }
            return tArr3;
        } else if (i4 != 0) {
            System.arraycopy(this.myElem, 0, tArr, 0, i4);
        }
        int i10 = this.mySize;
        if (length > i10) {
            tArr[i10] = 0;
        }
        return tArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i4, E e4) {
        int i10;
        if (i4 >= 0 && i4 <= (i10 = this.mySize)) {
            if (i10 == 0) {
                this.myElem = e4;
            } else if (i10 == 1 && i4 == 0) {
                this.myElem = new Object[]{e4, this.myElem};
            } else {
                Object[] objArr = new Object[i10 + 1];
                if (i10 == 1) {
                    objArr[0] = this.myElem;
                } else {
                    Object[] objArr2 = (Object[]) this.myElem;
                    System.arraycopy(objArr2, 0, objArr, 0, i4);
                    System.arraycopy(objArr2, i4, objArr, i4 + 1, this.mySize - i4);
                }
                objArr[i4] = e4;
                this.myElem = objArr;
            }
            this.mySize++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + this.mySize);
    }
}
