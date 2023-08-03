package com.im.freechat.data;

import com.im.freechat.shared.entities.ApiException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import retrofit2.Response;

/* compiled from: ApiExtends.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u001aT\u0010\b\u001a\u0004\u0018\u00018\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00028\u00002-\u0010\u0007\u001a)\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001aR\u0010\n\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00028\u00002-\u0010\u0007\u001a)\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\t\u001a^\u0010\r\u001a\u0004\u0018\u00018\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00028\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b2-\u0010\u0007\u001a)\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0002\b\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Api", "Body", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lretrofit2/Response;", "", "Lkotlin/ExtensionFunctionType;", "caller", "b", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "", "throwOnFailure", "c", "(Ljava/lang/Object;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiExtends.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.ApiExtendsKt", f = "ApiExtends.kt", i = {0}, l = {59}, m = "call", n = {"throwOnFailure"}, s = {"Z$0"})
    /* renamed from: com.im.freechat.data.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0305a<Api, Body> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        boolean f39728a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39729b;

        /* renamed from: c  reason: collision with root package name */
        int f39730c;

        C0305a(Continuation<? super C0305a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39729b = obj;
            this.f39730c |= Integer.MIN_VALUE;
            return a.c(null, false, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApiExtends.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.ApiExtendsKt", f = "ApiExtends.kt", i = {}, l = {33}, m = "callWithThrow", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b<Api, Body> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39731a;

        /* renamed from: b  reason: collision with root package name */
        int f39732b;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39731a = obj;
            this.f39732b |= Integer.MIN_VALUE;
            return a.f(null, null, this);
        }
    }

    @m8.h
    public static final <Api, Body> Object b(Api api, @m8.g Function2<? super Api, ? super Continuation<? super Response<Body>>, ? extends Object> function2, @m8.g Continuation<? super Body> continuation) {
        return c(api, false, function2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <Api, Body> java.lang.Object c(Api r9, boolean r10, kotlin.jvm.functions.Function2<? super Api, ? super kotlin.coroutines.Continuation<? super retrofit2.Response<Body>>, ? extends java.lang.Object> r11, kotlin.coroutines.Continuation<? super Body> r12) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.a.c(java.lang.Object, boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object d(Object obj, boolean z9, Function2 function2, Continuation continuation, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return c(obj, z9, function2, continuation);
    }

    private static final <Body> Body e(boolean z9, Integer num, String str) {
        if (z9) {
            int intValue = num != null ? num.intValue() : -100;
            if (str == null) {
                str = "Undefined";
            }
            throw new ApiException(intValue, str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <Api, Body> java.lang.Object f(Api r4, @m8.g kotlin.jvm.functions.Function2<? super Api, ? super kotlin.coroutines.Continuation<? super retrofit2.Response<Body>>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super Body> r6) {
        /*
            boolean r0 = r6 instanceof com.im.freechat.data.a.b
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.a$b r0 = (com.im.freechat.data.a.b) r0
            int r1 = r0.f39732b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39732b = r1
            goto L18
        L13:
            com.im.freechat.data.a$b r0 = new com.im.freechat.data.a$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39731a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39732b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f39732b = r3
            java.lang.Object r6 = c(r4, r3, r5, r0)
            if (r6 != r1) goto L3d
            return r1
        L3d:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.a.f(java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
