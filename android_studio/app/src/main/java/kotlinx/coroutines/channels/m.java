package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.internal.r0;

/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \u0004*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/m;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/j0;", "Lkotlinx/coroutines/channels/f0;", "l2", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface m<E> extends j0<E>, f0<E> {
    @m8.g

    /* renamed from: l2  reason: collision with root package name */
    public static final b f84876l2 = b.f84883a;

    /* renamed from: m2  reason: collision with root package name */
    public static final int f84877m2 = Integer.MAX_VALUE;

    /* renamed from: n2  reason: collision with root package name */
    public static final int f84878n2 = 0;

    /* renamed from: o2  reason: collision with root package name */
    public static final int f84879o2 = -1;

    /* renamed from: q2  reason: collision with root package name */
    public static final int f84880q2 = -2;

    /* renamed from: r2  reason: collision with root package name */
    public static final int f84881r2 = -3;
    @m8.g

    /* renamed from: s2  reason: collision with root package name */
    public static final String f84882s2 = "kotlinx.coroutines.channels.defaultBuffer";

    /* compiled from: Channel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @m8.g
        public static <E> kotlinx.coroutines.selects.d<E> b(@m8.g m<E> mVar) {
            return f0.a.d(mVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@m8.g m<E> mVar, E e4) {
            return j0.a.c(mVar, e4);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @m8.h
        public static <E> E d(@m8.g m<E> mVar) {
            return (E) f0.a.h(mVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @m8.h
        public static <E> Object e(@m8.g m<E> mVar, @m8.g Continuation<? super E> continuation) {
            return f0.a.i(mVar, continuation);
        }
    }

    /* compiled from: Channel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0015\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/channels/m$b;", "", "", "b", "I", "UNLIMITED", "c", "RENDEZVOUS", "d", "CONFLATED", "e", "BUFFERED", "f", "OPTIONAL_CHANNEL", "", "g", "Ljava/lang/String;", "DEFAULT_BUFFER_PROPERTY_NAME", "h", "a", "()I", "CHANNEL_DEFAULT_CAPACITY", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static final int f84884b = Integer.MAX_VALUE;

        /* renamed from: c  reason: collision with root package name */
        public static final int f84885c = 0;

        /* renamed from: d  reason: collision with root package name */
        public static final int f84886d = -1;

        /* renamed from: e  reason: collision with root package name */
        public static final int f84887e = -2;

        /* renamed from: f  reason: collision with root package name */
        public static final int f84888f = -3;
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        public static final String f84889g = "kotlinx.coroutines.channels.defaultBuffer";

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f84883a = new b();

        /* renamed from: h  reason: collision with root package name */
        private static final int f84890h = r0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private b() {
        }

        public final int a() {
            return f84890h;
        }
    }
}
