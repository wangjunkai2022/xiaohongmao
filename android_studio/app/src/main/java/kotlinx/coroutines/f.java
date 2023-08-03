package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: Await.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a?\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001\"\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a/\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\r\u001a\u00020\f2\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0001\"\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u000f\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\n0\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlinx/coroutines/y0;", "deferreds", "", "b", "([Lkotlinx/coroutines/y0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/j2;", "jobs", "", "d", "([Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {54}, m = "joinAll", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85250a;

        /* renamed from: b  reason: collision with root package name */
        int f85251b;

        /* renamed from: c  reason: collision with root package name */
        int f85252c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f85253d;

        /* renamed from: e  reason: collision with root package name */
        int f85254e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85253d = obj;
            this.f85254e |= Integer.MIN_VALUE;
            return f.d(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {66}, m = "joinAll", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85255a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85256b;

        /* renamed from: c  reason: collision with root package name */
        int f85257c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85256b = obj;
            this.f85257c |= Integer.MIN_VALUE;
            return f.c(null, this);
        }
    }

    @m8.h
    public static final <T> Object a(@m8.g Collection<? extends y0<? extends T>> collection, @m8.g Continuation<? super List<? extends T>> continuation) {
        List emptyList;
        if (collection.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Object[] array = collection.toArray(new y0[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return new e((y0[]) array).b(continuation);
    }

    @m8.h
    public static final <T> Object b(@m8.g y0<? extends T>[] y0VarArr, @m8.g Continuation<? super List<? extends T>> continuation) {
        List emptyList;
        if (y0VarArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return new e(y0VarArr).b(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object c(@m8.g java.util.Collection<? extends kotlinx.coroutines.j2> r4, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.f.b
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.f$b r0 = (kotlinx.coroutines.f.b) r0
            int r1 = r0.f85257c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85257c = r1
            goto L18
        L13:
            kotlinx.coroutines.f$b r0 = new kotlinx.coroutines.f$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85256b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85257c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85255a
            java.util.Iterator r4 = (java.util.Iterator) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.Iterator r4 = r4.iterator()
        L3c:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L53
            java.lang.Object r5 = r4.next()
            kotlinx.coroutines.j2 r5 = (kotlinx.coroutines.j2) r5
            r0.f85255a = r4
            r0.f85257c = r3
            java.lang.Object r5 = r5.X(r0)
            if (r5 != r1) goto L3c
            return r1
        L53:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.f.c(java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object d(@m8.g kotlinx.coroutines.j2[] r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.f.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.f$a r0 = (kotlinx.coroutines.f.a) r0
            int r1 = r0.f85254e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85254e = r1
            goto L18
        L13:
            kotlinx.coroutines.f$a r0 = new kotlinx.coroutines.f$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f85253d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85254e
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r6 = r0.f85252c
            int r2 = r0.f85251b
            java.lang.Object r4 = r0.f85250a
            kotlinx.coroutines.j2[] r4 = (kotlinx.coroutines.j2[]) r4
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r4
            r5 = r1
            r1 = r0
            r0 = r2
            r2 = r5
            goto L48
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = 0
            int r2 = r6.length
            r7 = r6
            r6 = r2
            r2 = r1
            r1 = r0
            r0 = 0
        L48:
            if (r0 >= r6) goto L5d
            r4 = r7[r0]
            int r0 = r0 + 1
            r1.f85250a = r7
            r1.f85251b = r0
            r1.f85252c = r6
            r1.f85254e = r3
            java.lang.Object r4 = r4.X(r1)
            if (r4 != r2) goto L48
            return r2
        L5d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.f.d(kotlinx.coroutines.j2[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
