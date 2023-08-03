package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;

/* compiled from: ArrayQueue.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0015\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\n\u001a\u00020\u0003R\u001e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\fR\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u000fR\u0011\u0010\u0015\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/a;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "c", "element", "a", "(Ljava/lang/Object;)V", "e", "()Ljava/lang/Object;", "b", "", "[Ljava/lang/Object;", "elements", "", "I", com.google.android.exoplayer2.text.ttml.d.f25724o, "tail", "", "d", "()Z", "isEmpty", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class a<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private Object[] f86211a = new Object[16];

    /* renamed from: b  reason: collision with root package name */
    private int f86212b;

    /* renamed from: c  reason: collision with root package name */
    private int f86213c;

    private final void c() {
        Object[] objArr = this.f86211a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        ArraysKt___ArraysJvmKt.copyInto$default(objArr, objArr2, 0, this.f86212b, 0, 10, (Object) null);
        Object[] objArr3 = this.f86211a;
        int length2 = objArr3.length;
        int i4 = this.f86212b;
        ArraysKt___ArraysJvmKt.copyInto$default(objArr3, objArr2, length2 - i4, 0, i4, 4, (Object) null);
        this.f86211a = objArr2;
        this.f86212b = 0;
        this.f86213c = length;
    }

    public final void a(@m8.g T t9) {
        Object[] objArr = this.f86211a;
        int i4 = this.f86213c;
        objArr[i4] = t9;
        int length = (objArr.length - 1) & (i4 + 1);
        this.f86213c = length;
        if (length == this.f86212b) {
            c();
        }
    }

    public final void b() {
        this.f86212b = 0;
        this.f86213c = 0;
        this.f86211a = new Object[this.f86211a.length];
    }

    public final boolean d() {
        return this.f86212b == this.f86213c;
    }

    @m8.h
    public final T e() {
        int i4 = this.f86212b;
        if (i4 == this.f86213c) {
            return null;
        }
        Object[] objArr = this.f86211a;
        T t9 = (T) objArr[i4];
        objArr[i4] = null;
        this.f86212b = (i4 + 1) & (objArr.length - 1);
        Objects.requireNonNull(t9, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
        return t9;
    }
}
