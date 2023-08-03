package u4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import m8.h;

/* compiled from: Pools.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lu4/a;", "", "<init>", "()V", "a", "b", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a {

    /* compiled from: Pools.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0011\u0010\u0003\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lu4/a$a;", ExifInterface.GPS_DIRECTION_TRUE, "", "acquire", "()Ljava/lang/Object;", "instance", "", "release", "(Ljava/lang/Object;)Z", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* renamed from: u4.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0845a<T> {
        @h
        T acquire();

        boolean release(T t9);
    }

    /* compiled from: Pools.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\t\u0010\u0006¨\u0006\u000e"}, d2 = {"Lu4/a$b;", ExifInterface.GPS_DIRECTION_TRUE, "Lu4/a$a;", "instance", "", "a", "(Ljava/lang/Object;)Z", "acquire", "()Ljava/lang/Object;", "release", "", "maxPoolSize", "<init>", "(I)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static class b<T> implements InterfaceC0845a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f94002a;

        /* renamed from: b  reason: collision with root package name */
        private int f94003b;

        public b(int i4) {
            if (i4 > 0) {
                this.f94002a = new Object[i4];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0".toString());
        }

        private final boolean a(T t9) {
            int i4 = this.f94003b;
            for (int i10 = 0; i10 < i4; i10++) {
                if (this.f94002a[i10] == t9) {
                    return true;
                }
            }
            return false;
        }

        @Override // u4.a.InterfaceC0845a
        @h
        public T acquire() {
            int i4 = this.f94003b;
            if (i4 > 0) {
                int i10 = i4 - 1;
                Object[] objArr = this.f94002a;
                T t9 = (T) objArr[i10];
                objArr[i10] = null;
                this.f94003b = i4 - 1;
                return t9;
            }
            return null;
        }

        @Override // u4.a.InterfaceC0845a
        public boolean release(T t9) {
            if (!a(t9)) {
                int i4 = this.f94003b;
                Object[] objArr = this.f94002a;
                if (i4 < objArr.length) {
                    objArr[i4] = t9;
                    this.f94003b = i4 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!".toString());
        }
    }

    private a() {
    }
}
