package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.sync.e;
import m8.g;
import org.aspectj.lang.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedPageEventFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u00030\tH\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/paging/FlattenedPageController;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/IndexedValue;", "Landroidx/paging/PageEvent;", "event", "", "record", "(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "getStateAsEvents", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/FlattenedPageEventStorage;", "list", "Landroidx/paging/FlattenedPageEventStorage;", "Lkotlinx/coroutines/sync/c;", c.f91028k, "Lkotlinx/coroutines/sync/c;", "", "maxEventIndex", "I", "<init>", "()V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class FlattenedPageController<T> {
    @g
    private final FlattenedPageEventStorage<T> list = new FlattenedPageEventStorage<>();
    @g
    private final kotlinx.coroutines.sync.c lock = e.b(false, 1, null);
    private int maxEventIndex = -1;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0072 A[Catch: all -> 0x008e, TryCatch #0 {all -> 0x008e, blocks: (B:18:0x004e, B:19:0x006c, B:21:0x0072, B:23:0x007a, B:24:0x007d), top: B:31:0x004e }] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getStateAsEvents(@m8.g kotlin.coroutines.Continuation<? super java.util.List<? extends kotlin.collections.IndexedValue<? extends androidx.paging.PageEvent<T>>>> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.paging.FlattenedPageController$getStateAsEvents$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.paging.FlattenedPageController$getStateAsEvents$1 r0 = (androidx.paging.FlattenedPageController$getStateAsEvents$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.FlattenedPageController$getStateAsEvents$1 r0 = new androidx.paging.FlattenedPageController$getStateAsEvents$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r1 = r0.L$1
            kotlinx.coroutines.sync.c r1 = (kotlinx.coroutines.sync.c) r1
            java.lang.Object r0 = r0.L$0
            androidx.paging.FlattenedPageController r0 = (androidx.paging.FlattenedPageController) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4e
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.c r9 = r8.lock
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r0 = r9.c(r3, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r8
            r1 = r9
        L4e:
            androidx.paging.FlattenedPageEventStorage<T> r9 = r0.list     // Catch: java.lang.Throwable -> L8e
            java.util.List r9 = r9.getAsEvents()     // Catch: java.lang.Throwable -> L8e
            int r0 = r0.maxEventIndex     // Catch: java.lang.Throwable -> L8e
            int r2 = r9.size()     // Catch: java.lang.Throwable -> L8e
            int r0 = r0 - r2
            int r0 = r0 + r4
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8e
            r4 = 10
            int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r9, r4)     // Catch: java.lang.Throwable -> L8e
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L8e
            r4 = 0
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L8e
        L6c:
            boolean r5 = r9.hasNext()     // Catch: java.lang.Throwable -> L8e
            if (r5 == 0) goto L8a
            java.lang.Object r5 = r9.next()     // Catch: java.lang.Throwable -> L8e
            int r6 = r4 + 1
            if (r4 >= 0) goto L7d
            kotlin.collections.CollectionsKt.throwIndexOverflow()     // Catch: java.lang.Throwable -> L8e
        L7d:
            androidx.paging.PageEvent r5 = (androidx.paging.PageEvent) r5     // Catch: java.lang.Throwable -> L8e
            kotlin.collections.IndexedValue r7 = new kotlin.collections.IndexedValue     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 + r0
            r7.<init>(r4, r5)     // Catch: java.lang.Throwable -> L8e
            r2.add(r7)     // Catch: java.lang.Throwable -> L8e
            r4 = r6
            goto L6c
        L8a:
            r1.d(r3)
            return r2
        L8e:
            r9 = move-exception
            r1.d(r3)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlattenedPageController.getStateAsEvents(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object record(@m8.g kotlin.collections.IndexedValue<? extends androidx.paging.PageEvent<T>> r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.FlattenedPageController$record$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.FlattenedPageController$record$1 r0 = (androidx.paging.FlattenedPageController$record$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.FlattenedPageController$record$1 r0 = new androidx.paging.FlattenedPageController$record$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 != r4) goto L38
            java.lang.Object r6 = r0.L$2
            kotlinx.coroutines.sync.c r6 = (kotlinx.coroutines.sync.c) r6
            java.lang.Object r1 = r0.L$1
            kotlin.collections.IndexedValue r1 = (kotlin.collections.IndexedValue) r1
            java.lang.Object r0 = r0.L$0
            androidx.paging.FlattenedPageController r0 = (androidx.paging.FlattenedPageController) r0
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r1
            goto L55
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.c r7 = r5.lock
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            r0.label = r4
            java.lang.Object r0 = r7.c(r3, r0)
            if (r0 != r1) goto L54
            return r1
        L54:
            r0 = r5
        L55:
            int r1 = r6.getIndex()     // Catch: java.lang.Throwable -> L6c
            r0.maxEventIndex = r1     // Catch: java.lang.Throwable -> L6c
            androidx.paging.FlattenedPageEventStorage<T> r0 = r0.list     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r6 = r6.getValue()     // Catch: java.lang.Throwable -> L6c
            androidx.paging.PageEvent r6 = (androidx.paging.PageEvent) r6     // Catch: java.lang.Throwable -> L6c
            r0.add(r6)     // Catch: java.lang.Throwable -> L6c
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6c
            r7.d(r3)
            return r6
        L6c:
            r6 = move-exception
            r7.d(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlattenedPageController.record(kotlin.collections.IndexedValue, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
