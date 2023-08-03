package com.qennnsad.aknkaksd.util;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowLiveDataConversions;
import androidx.lifecycle.LiveData;
import androidx.paging.Pager;
import androidx.paging.PagingConfig;
import androidx.paging.PagingSource;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.j2;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Extensions.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a>\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005\u001a\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\t\u001aH\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013\"\b\b\u0000\u0010\r*\u00020\f\"\b\b\u0001\u0010\u0000*\u00020\f2\u0018\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u001a@\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013\"\b\b\u0000\u0010\r*\u00020\f\"\b\b\u0001\u0010\u0000*\u00020\f2\u0018\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\u000e¨\u0006\u0016"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "delayMillis", "Lkotlinx/coroutines/s0;", "scope", "Lkotlin/Function1;", "", com.alipay.sdk.packet.d.f6907q, "c", "Lkotlinx/coroutines/flow/t;", "Landroidx/lifecycle/LiveData;", "e", "", "Key", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "factory", "", "pageSize", "Landroidx/paging/Pager;", "a", "b", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class u {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Extensions.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, com.alipay.sdk.authjs.a.f6841l, "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<T, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<j2> f55101a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.s0 f55102b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<T, Unit> f55103c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f55104d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Extensions.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.util.ExtensionsKt$debounce$1$1", f = "Extensions.kt", i = {}, l = {20}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.util.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0466a extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f55105a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function1<T, Unit> f55106b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ T f55107c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ long f55108d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<j2> f55109e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0466a(Function1<? super T, Unit> function1, T t9, long j4, Ref.ObjectRef<j2> objectRef, Continuation<? super C0466a> continuation) {
                super(2, continuation);
                this.f55106b = function1;
                this.f55107c = t9;
                this.f55108d = j4;
                this.f55109e = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0466a(this.f55106b, this.f55107c, this.f55108d, this.f55109e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.s0 s0Var, Continuation<? super Unit> continuation) {
                return invoke2(s0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0466a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f55105a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f55106b.invoke(this.f55107c);
                    long j4 = this.f55108d;
                    this.f55105a = 1;
                    if (kotlinx.coroutines.b1.b(j4, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                this.f55109e.element = null;
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Ref.ObjectRef<j2> objectRef, kotlinx.coroutines.s0 s0Var, Function1<? super T, Unit> function1, long j4) {
            super(1);
            this.f55101a = objectRef;
            this.f55102b = s0Var;
            this.f55103c = function1;
            this.f55104d = j4;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2((a) obj);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Type inference failed for: r13v1, types: [kotlinx.coroutines.j2, T] */
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(T t9) {
            ?? f10;
            Ref.ObjectRef<j2> objectRef = this.f55101a;
            if (objectRef.element == null) {
                f10 = kotlinx.coroutines.l.f(this.f55102b, null, null, new C0466a(this.f55103c, t9, this.f55104d, objectRef, null), 3, null);
                objectRef.element = f10;
            }
        }
    }

    @m8.g
    public static final <Key, T> Pager<Key, T> a(@m8.g Function0<? extends PagingSource<Key, T>> factory, int i4) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return new Pager<>(new PagingConfig(i4, i4 / 5, false, i4, 0, 0, 52, null), null, factory, 2, null);
    }

    @m8.g
    public static final <Key, T> Pager<Key, T> b(@m8.g Function0<? extends PagingSource<Key, T>> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return new Pager<>(new PagingConfig(10, 0, false, 10, 0, 0, 54, null), null, factory, 2, null);
    }

    @m8.g
    public static final <T> Function1<T, Unit> c(long j4, @m8.g kotlinx.coroutines.s0 scope, @m8.g Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(action, "action");
        return new a(new Ref.ObjectRef(), scope, action, j4);
    }

    public static /* synthetic */ Function1 d(long j4, kotlinx.coroutines.s0 s0Var, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = 300;
        }
        return c(j4, s0Var, function1);
    }

    @m8.g
    public static final <T> LiveData<T> e(@m8.g kotlinx.coroutines.flow.t<T> tVar) {
        Intrinsics.checkNotNullParameter(tVar, "<this>");
        return FlowLiveDataConversions.asLiveData$default(tVar, kotlinx.coroutines.i1.e(), 0L, 2, (Object) null);
    }
}
