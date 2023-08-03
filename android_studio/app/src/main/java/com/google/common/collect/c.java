package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractIterator.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class c<T> extends k5<T> {

    /* renamed from: a  reason: collision with root package name */
    private b f33162a = b.NOT_READY;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private T f33163b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractIterator.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33164a;

        static {
            int[] iArr = new int[b.values().length];
            f33164a = iArr;
            try {
                iArr[b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33164a[b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractIterator.java */
    /* loaded from: classes2.dex */
    public enum b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f33162a = b.FAILED;
        this.f33163b = a();
        if (this.f33162a != b.DONE) {
            this.f33162a = b.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    public final T b() {
        this.f33162a = b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final boolean hasNext() {
        com.google.common.base.a0.g0(this.f33162a != b.FAILED);
        int i4 = a.f33164a[this.f33162a.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return c();
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final T next() {
        if (hasNext()) {
            this.f33162a = b.NOT_READY;
            T t9 = this.f33163b;
            this.f33163b = null;
            return t9;
        }
        throw new NoSuchElementException();
    }

    public final T peek() {
        if (hasNext()) {
            return this.f33163b;
        }
        throw new NoSuchElementException();
    }
}
