package androidx.room;

import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.r;

/* compiled from: CoroutinesRoom.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Landroidx/room/CoroutinesRoom;", "", "()V", "Companion", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class CoroutinesRoom {
    @m8.g
    public static final Companion Companion = new Companion(null);

    private CoroutinesRoom() {
    }

    @JvmStatic
    @m8.g
    public static final <R> kotlinx.coroutines.flow.i<R> createFlow(@m8.g RoomDatabase roomDatabase, boolean z9, @m8.g String[] strArr, @m8.g Callable<R> callable) {
        return Companion.createFlow(roomDatabase, z9, strArr, callable);
    }

    @JvmStatic
    @m8.h
    public static final <R> Object execute(@m8.g RoomDatabase roomDatabase, boolean z9, @m8.g CancellationSignal cancellationSignal, @m8.g Callable<R> callable, @m8.g Continuation<? super R> continuation) {
        return Companion.execute(roomDatabase, z9, cancellationSignal, callable, continuation);
    }

    @JvmStatic
    @m8.h
    public static final <R> Object execute(@m8.g RoomDatabase roomDatabase, boolean z9, @m8.g Callable<R> callable, @m8.g Continuation<? super R> continuation) {
        return Companion.execute(roomDatabase, z9, callable, continuation);
    }

    /* compiled from: CoroutinesRoom.kt */
    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J7\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ?\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\rJL\u0010\u0013\u001a\r\u0012\t\u0012\u00078\u0000¢\u0006\u0002\b\u00120\u0011\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/room/CoroutinesRoom$Companion;", "", "R", "Landroidx/room/RoomDatabase;", "db", "", "inTransaction", "Ljava/util/concurrent/Callable;", "callable", "execute", "(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "tableNames", "Lkotlinx/coroutines/flow/i;", "Lkotlin/jvm/JvmSuppressWildcards;", "createFlow", "(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;", "<init>", "()V", "room-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final <R> kotlinx.coroutines.flow.i<R> createFlow(@m8.g RoomDatabase db, boolean z9, @m8.g String[] tableNames, @m8.g Callable<R> callable) {
            Intrinsics.checkNotNullParameter(db, "db");
            Intrinsics.checkNotNullParameter(tableNames, "tableNames");
            Intrinsics.checkNotNullParameter(callable, "callable");
            return kotlinx.coroutines.flow.k.I0(new CoroutinesRoom$Companion$createFlow$1(z9, db, tableNames, callable, null));
        }

        @JvmStatic
        @m8.h
        public final <R> Object execute(@m8.g RoomDatabase roomDatabase, boolean z9, @m8.g Callable<R> callable, @m8.g Continuation<? super R> continuation) {
            ContinuationInterceptor transactionDispatcher;
            if (roomDatabase.isOpen() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher$room_ktx_release()) == null) {
                transactionDispatcher = z9 ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            return kotlinx.coroutines.j.h(transactionDispatcher, new CoroutinesRoom$Companion$execute$2(callable, null), continuation);
        }

        @JvmStatic
        @m8.h
        public final <R> Object execute(@m8.g RoomDatabase roomDatabase, boolean z9, @m8.g CancellationSignal cancellationSignal, @m8.g Callable<R> callable, @m8.g Continuation<? super R> continuation) {
            ContinuationInterceptor transactionDispatcher;
            Continuation intercepted;
            j2 f10;
            Object coroutine_suspended;
            if (roomDatabase.isOpen() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher$room_ktx_release()) == null) {
                transactionDispatcher = z9 ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            ContinuationInterceptor continuationInterceptor = transactionDispatcher;
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            r rVar = new r(intercepted, 1);
            rVar.C();
            f10 = kotlinx.coroutines.l.f(a2.f84781a, continuationInterceptor, null, new CoroutinesRoom$Companion$execute$4$job$1(callable, rVar, null), 2, null);
            rVar.k(new CoroutinesRoom$Companion$execute$4$1(cancellationSignal, f10));
            Object A = rVar.A();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (A == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return A;
        }
    }
}
