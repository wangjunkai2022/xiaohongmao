package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e2;

/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087@\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0013 \u001fB\u0016\b\u0001\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u0012\u0004\b\u0015\u0010\u0016R\u0011\u0010\u001a\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001c\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\u001e\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0019\u0088\u0001\u0017\u0092\u0001\u0004\u0018\u00010\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlinx/coroutines/channels/q;", ExifInterface.GPS_DIRECTION_TRUE, "", "h", "(Ljava/lang/Object;)Ljava/lang/Object;", ContextChain.TAG_INFRA, "", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "", "n", "(Ljava/lang/Object;)Ljava/lang/String;", "", "j", "(Ljava/lang/Object;)I", "other", "", "d", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "a", "Ljava/lang/Object;", "getHolder$annotations", "()V", "holder", "m", "(Ljava/lang/Object;)Z", "isSuccess", "l", "isFailure", "k", "isClosed", "c", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@JvmInline
/* loaded from: classes4.dex */
public final class q<T> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final b f84909b = new b(null);
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final c f84910c = new c();
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Object f84911a;

    /* compiled from: Channel.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/channels/q$a;", "Lkotlinx/coroutines/channels/q$c;", "", "other", "", "equals", "", "hashCode", "", "toString", "", "a", "Ljava/lang/Throwable;", "cause", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends c {
        @m8.h
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f84912a;

        public a(@m8.h Throwable th) {
            this.f84912a = th;
        }

        public boolean equals(@m8.h Object obj) {
            return (obj instanceof a) && Intrinsics.areEqual(this.f84912a, ((a) obj).f84912a);
        }

        public int hashCode() {
            Throwable th = this.f84912a;
            if (th == null) {
                return 0;
            }
            return th.hashCode();
        }

        @Override // kotlinx.coroutines.channels.q.c
        @m8.g
        public String toString() {
            return "Closed(" + this.f84912a + ')';
        }
    }

    /* compiled from: Channel.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J,\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u0002H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/q$b;", "", ExifInterface.LONGITUDE_EAST, "value", "Lkotlinx/coroutines/channels/q;", "c", "(Ljava/lang/Object;)Ljava/lang/Object;", "b", "()Ljava/lang/Object;", "", "cause", "a", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q$c;", com.alipay.sdk.util.f.f6954h, "Lkotlinx/coroutines/channels/q$c;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    @e2
    /* loaded from: classes4.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        @e2
        public final <E> Object a(@m8.h Throwable th) {
            return q.c(new a(th));
        }

        @m8.g
        @e2
        public final <E> Object b() {
            return q.c(q.f84910c);
        }

        @m8.g
        @e2
        public final <E> Object c(E e4) {
            return q.c(e4);
        }
    }

    /* compiled from: Channel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/q$c;", "", "", "toString", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static class c {
        @m8.g
        public String toString() {
            return "Failed";
        }
    }

    @PublishedApi
    private /* synthetic */ q(Object obj) {
        this.f84911a = obj;
    }

    public static final /* synthetic */ q b(Object obj) {
        return new q(obj);
    }

    @PublishedApi
    @m8.g
    public static <T> Object c(@m8.h Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof q) && Intrinsics.areEqual(obj, ((q) obj2).o());
    }

    public static final boolean e(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @m8.h
    public static final Throwable f(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar == null) {
            return null;
        }
        return aVar.f84912a;
    }

    @PublishedApi
    public static /* synthetic */ void g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.h
    public static final T h(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T i(Object obj) {
        Throwable th;
        if (obj instanceof c) {
            if (!(obj instanceof a) || (th = ((a) obj).f84912a) == null) {
                throw new IllegalStateException(Intrinsics.stringPlus("Trying to call 'getOrThrow' on a failed channel result: ", obj).toString());
            }
            throw th;
        }
        return obj;
    }

    public static int j(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean k(Object obj) {
        return obj instanceof a;
    }

    public static final boolean l(Object obj) {
        return obj instanceof c;
    }

    public static final boolean m(Object obj) {
        return !(obj instanceof c);
    }

    @m8.g
    public static String n(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f84911a, obj);
    }

    public int hashCode() {
        return j(this.f84911a);
    }

    public final /* synthetic */ Object o() {
        return this.f84911a;
    }

    @m8.g
    public String toString() {
        return n(this.f84911a);
    }
}
