package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;

/* compiled from: Collection.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0004\u001a9\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a9\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a=\u0010\r\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0010\b\u0001\u0010\f*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00028\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "", "destination", "", "b", "(Lkotlinx/coroutines/flow/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "d", "(Lkotlinx/coroutines/flow/i;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "C", "a", "(Lkotlinx/coroutines/flow/i;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class m {

    /* compiled from: Collection.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CollectionKt", f = "Collection.kt", i = {0}, l = {26}, m = "toCollection", n = {"destination"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class a<T, C extends Collection<? super T>> extends ContinuationImpl {

        /* renamed from: a */
        Object f86062a;

        /* renamed from: b */
        /* synthetic */ Object f86063b;

        /* renamed from: c */
        int f86064c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86063b = obj;
            this.f86064c |= Integer.MIN_VALUE;
            return k.V1(null, null, this);
        }
    }

    /* compiled from: Collection.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "C", "", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ Collection f86065a;

        b(Collection collection) {
            this.f86065a = collection;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            this.f86065a.add(t9);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0036  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T, C extends java.util.Collection<? super T>> java.lang.Object a(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g C r5, @m8.g kotlin.coroutines.Continuation<? super C> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.m.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.m$a r0 = (kotlinx.coroutines.flow.m.a) r0
            int r1 = r0.f86064c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86064c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.m$a r0 = new kotlinx.coroutines.flow.m$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f86063b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86064c
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.f86062a
            r5 = r4
            java.util.Collection r5 = (java.util.Collection) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.m$b r6 = new kotlinx.coroutines.flow.m$b
            r6.<init>(r5)
            r0.f86062a = r5
            r0.f86064c = r3
            java.lang.Object r4 = r4.collect(r6, r0)
            if (r4 != r1) goto L49
            return r1
        L49:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m.a(kotlinx.coroutines.flow.i, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public static final <T> Object b(@m8.g i<? extends T> iVar, @m8.g List<T> list, @m8.g Continuation<? super List<? extends T>> continuation) {
        return k.V1(iVar, list, continuation);
    }

    public static /* synthetic */ Object c(i iVar, List list, Continuation continuation, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = new ArrayList();
        }
        return k.W1(iVar, list, continuation);
    }

    @m8.h
    public static final <T> Object d(@m8.g i<? extends T> iVar, @m8.g Set<T> set, @m8.g Continuation<? super Set<? extends T>> continuation) {
        return k.V1(iVar, set, continuation);
    }

    public static /* synthetic */ Object e(i iVar, Set set, Continuation continuation, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            set = new LinkedHashSet();
        }
        return k.Y1(iVar, set, continuation);
    }
}
