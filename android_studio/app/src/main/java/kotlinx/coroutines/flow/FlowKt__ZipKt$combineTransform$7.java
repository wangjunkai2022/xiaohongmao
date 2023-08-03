package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Zip.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FlowKt__ZipKt$combineTransform$7 extends SuspendLambda implements Function2<j<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f85810a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f85811b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i<T>[] f85812c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function3<j<? super R>, T[], Continuation<? super Unit>, Object> f85813d;

    /* compiled from: Zip.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010\u0000\u001a\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "invoke", "()[Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function0<T[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<T>[] f85814a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(i<T>[] iVarArr) {
            super(0);
            this.f85814a = iVarArr;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T[], java.lang.Object[]] */
        @Override // kotlin.jvm.functions.Function0
        @m8.h
        public final T[] invoke() {
            int length = this.f85814a.length;
            Intrinsics.reifiedOperationMarker(0, "T?");
            return new Object[length];
        }
    }

    /* compiled from: Zip.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<j<? super R>, T[], Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85815a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85816b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f85817c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function3<j<? super R>, T[], Continuation<? super Unit>, Object> f85818d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function3<? super j<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.f85818d = function3;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        public final Object invoke(@m8.g j<? super R> jVar, @m8.g T[] tArr, @m8.h Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f85818d, continuation);
            anonymousClass2.f85816b = jVar;
            anonymousClass2.f85817c = tArr;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85815a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<j<? super R>, T[], Continuation<? super Unit>, Object> function3 = this.f85818d;
                this.f85816b = null;
                this.f85815a = 1;
                if (function3.invoke((j) this.f85816b, (Object[]) this.f85817c, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @m8.h
        public final Object invokeSuspend$$forInline(@m8.g Object obj) {
            this.f85818d.invoke((j) this.f85816b, (Object[]) this.f85817c, this);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineTransform$7(i<T>[] iVarArr, Function3<? super j<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__ZipKt$combineTransform$7> continuation) {
        super(2, continuation);
        this.f85812c = iVarArr;
        this.f85813d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.g
    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$7 flowKt__ZipKt$combineTransform$7 = new FlowKt__ZipKt$combineTransform$7(this.f85812c, this.f85813d, continuation);
        flowKt__ZipKt$combineTransform$7.f85811b = obj;
        return flowKt__ZipKt$combineTransform$7;
    }

    @Override // kotlin.jvm.functions.Function2
    @m8.h
    public final Object invoke(@m8.g j<? super R> jVar, @m8.h Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$7) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f85810a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            i<T>[] iVarArr = this.f85812c;
            Intrinsics.needClassReification();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f85812c);
            Intrinsics.needClassReification();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f85813d, null);
            this.f85810a = 1;
            if (kotlinx.coroutines.flow.internal.k.a((j) this.f85811b, iVarArr, anonymousClass1, anonymousClass2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @m8.h
    public final Object invokeSuspend$$forInline(@m8.g Object obj) {
        i<T>[] iVarArr = this.f85812c;
        Intrinsics.needClassReification();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f85812c);
        Intrinsics.needClassReification();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f85813d, null);
        InlineMarker.mark(0);
        kotlinx.coroutines.flow.internal.k.a((j) this.f85811b, iVarArr, anonymousClass1, anonymousClass2, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
