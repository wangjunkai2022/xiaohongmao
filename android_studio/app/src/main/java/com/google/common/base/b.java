package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractIterator.java */
@h3.b
/* loaded from: classes2.dex */
abstract class b<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private EnumC0203b f32086a = EnumC0203b.NOT_READY;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private T f32087b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractIterator.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32088a;

        static {
            int[] iArr = new int[EnumC0203b.values().length];
            f32088a = iArr;
            try {
                iArr[EnumC0203b.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32088a[EnumC0203b.DONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractIterator.java */
    /* renamed from: com.google.common.base.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0203b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f32086a = EnumC0203b.FAILED;
        this.f32087b = a();
        if (this.f32086a != EnumC0203b.DONE) {
            this.f32086a = EnumC0203b.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    @NullableDecl
    public final T b() {
        this.f32086a = EnumC0203b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a0.g0(this.f32086a != EnumC0203b.FAILED);
        int i4 = a.f32088a[this.f32086a.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return c();
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f32086a = EnumC0203b.NOT_READY;
            T t9 = this.f32087b;
            this.f32087b = null;
            return t9;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
