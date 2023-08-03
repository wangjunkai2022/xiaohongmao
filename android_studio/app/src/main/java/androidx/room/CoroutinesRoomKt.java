package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.x1;

/* compiled from: CoroutinesRoom.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00008@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/room/RoomDatabase;", "Lkotlinx/coroutines/n0;", "getQueryDispatcher", "getTransactionDispatcher", "(Landroidx/room/RoomDatabase;)Lkotlinx/coroutines/n0;", "transactionDispatcher", "room-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class CoroutinesRoomKt {
    @m8.g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final kotlinx.coroutines.n0 getQueryDispatcher(@m8.g RoomDatabase roomDatabase) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkNotNullExpressionValue(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("QueryDispatcher");
        if (obj == null) {
            Executor queryExecutor = roomDatabase.getQueryExecutor();
            Intrinsics.checkNotNullExpressionValue(queryExecutor, "queryExecutor");
            obj = x1.c(queryExecutor);
            backingFieldMap.put("QueryDispatcher", obj);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (kotlinx.coroutines.n0) obj;
    }

    @m8.g
    public static final kotlinx.coroutines.n0 getTransactionDispatcher(@m8.g RoomDatabase roomDatabase) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkNotNullExpressionValue(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("TransactionDispatcher");
        if (obj == null) {
            Executor transactionExecutor = roomDatabase.getTransactionExecutor();
            Intrinsics.checkNotNullExpressionValue(transactionExecutor, "transactionExecutor");
            obj = x1.c(transactionExecutor);
            backingFieldMap.put("TransactionDispatcher", obj);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (kotlinx.coroutines.n0) obj;
    }
}
