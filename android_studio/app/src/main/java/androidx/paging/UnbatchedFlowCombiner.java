package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.sync.e;
import kotlinx.coroutines.z;
import m8.g;
import org.aspectj.lang.c;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003Bg\u0012[\u0010\u0012\u001aW\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030\nø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 J%\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tRl\u0010\u0012\u001aW\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R \u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00140\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Landroidx/paging/UnbatchedFlowCombiner;", "T1", "T2", "", "", "index", "value", "", "onNext", "(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "t1", "t2", "Landroidx/paging/CombineSource;", "updateFrom", "Lkotlin/coroutines/Continuation;", "send", "Lkotlin/jvm/functions/Function4;", "Lkotlinx/coroutines/z;", "initialDispatched", "Lkotlinx/coroutines/z;", "Lkotlinx/coroutines/sync/c;", c.f91028k, "Lkotlinx/coroutines/sync/c;", "", "valueReceived", "[Lkotlinx/coroutines/z;", "values", "[Ljava/lang/Object;", "<init>", "(Lkotlin/jvm/functions/Function4;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class UnbatchedFlowCombiner<T1, T2> {
    @g
    private final z<Unit> initialDispatched;
    @g
    private final kotlinx.coroutines.sync.c lock;
    @g
    private final Function4<T1, T2, CombineSource, Continuation<? super Unit>, Object> send;
    @g
    private final z<Unit>[] valueReceived;
    @g
    private final Object[] values;

    /* JADX WARN: Multi-variable type inference failed */
    public UnbatchedFlowCombiner(@g Function4<? super T1, ? super T2, ? super CombineSource, ? super Continuation<? super Unit>, ? extends Object> send) {
        Object obj;
        Intrinsics.checkNotNullParameter(send, "send");
        this.send = send;
        this.initialDispatched = b0.c(null, 1, null);
        this.lock = e.b(false, 1, null);
        z<Unit>[] zVarArr = new z[2];
        for (int i4 = 0; i4 < 2; i4++) {
            zVarArr[i4] = b0.c(null, 1, null);
        }
        this.valueReceived = zVarArr;
        Object[] objArr = new Object[2];
        for (int i10 = 0; i10 < 2; i10++) {
            obj = FlowExtKt.NULL;
            objArr[i10] = obj;
        }
        this.values = objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2 A[Catch: all -> 0x0115, TryCatch #1 {all -> 0x0115, blocks: (B:34:0x00ab, B:36:0x00b2, B:44:0x00c5, B:46:0x00cd, B:56:0x00e4, B:60:0x00ee, B:58:0x00e9, B:59:0x00ec, B:52:0x00dc, B:42:0x00c1), top: B:75:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cd A[Catch: all -> 0x0115, TryCatch #1 {all -> 0x0115, blocks: (B:34:0x00ab, B:36:0x00b2, B:44:0x00c5, B:46:0x00cd, B:56:0x00e4, B:60:0x00ee, B:58:0x00e9, B:59:0x00ec, B:52:0x00dc, B:42:0x00c1), top: B:75:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00df A[SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object onNext(int r17, @m8.h java.lang.Object r18, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.UnbatchedFlowCombiner.onNext(int, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
