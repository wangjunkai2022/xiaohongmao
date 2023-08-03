package kotlinx.coroutines.flow;

import kotlin.Metadata;

/* compiled from: SharingStarted.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/flow/c0;", "", "Lkotlinx/coroutines/flow/h0;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/SharingCommand;", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface c0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f85848a = a.f85849a;

    /* compiled from: SharingStarted.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002R\u0017\u0010\u000b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\r\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/flow/c0$a;", "", "", "stopTimeoutMillis", "replayExpirationMillis", "Lkotlinx/coroutines/flow/c0;", "a", "b", "Lkotlinx/coroutines/flow/c0;", "c", "()Lkotlinx/coroutines/flow/c0;", "Eagerly", "d", "Lazily", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f85849a = new a();
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private static final c0 f85850b = new e0();
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private static final c0 f85851c = new f0();

        private a() {
        }

        public static /* synthetic */ c0 b(a aVar, long j4, long j10, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                j4 = 0;
            }
            if ((i4 & 2) != 0) {
                j10 = Long.MAX_VALUE;
            }
            return aVar.a(j4, j10);
        }

        @m8.g
        public final c0 a(long j4, long j10) {
            return new g0(j4, j10);
        }

        @m8.g
        public final c0 c() {
            return f85850b;
        }

        @m8.g
        public final c0 d() {
            return f85851c;
        }
    }

    @m8.g
    i<SharingCommand> a(@m8.g h0<Integer> h0Var);
}
