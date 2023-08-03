package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PagedList$dispatchStateChangeAsync$1", f = "PagedList.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PagedList$dispatchStateChangeAsync$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoadState $state;
    final /* synthetic */ LoadType $type;
    int label;
    final /* synthetic */ PagedList<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PagedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u00002\u001e\u0010\u0007\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00030\u0002H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ref/WeakReference;", "Lkotlin/Function2;", "Landroidx/paging/LoadType;", "Landroidx/paging/LoadState;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.PagedList$dispatchStateChangeAsync$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends Lambda implements Function1<WeakReference<Function2<? super LoadType, ? super LoadState, ? extends Unit>>, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @g
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Boolean invoke2(@g WeakReference<Function2<LoadType, LoadState, Unit>> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(it.get() == null);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(WeakReference<Function2<? super LoadType, ? super LoadState, ? extends Unit>> weakReference) {
            return invoke2((WeakReference<Function2<LoadType, LoadState, Unit>>) weakReference);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedList$dispatchStateChangeAsync$1(PagedList<T> pagedList, LoadType loadType, LoadState loadState, Continuation<? super PagedList$dispatchStateChangeAsync$1> continuation) {
        super(2, continuation);
        this.this$0 = pagedList;
        this.$type = loadType;
        this.$state = loadState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new PagedList$dispatchStateChangeAsync$1(this.this$0, this.$type, this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((PagedList$dispatchStateChangeAsync$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        List list;
        List<WeakReference> list2;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            list = ((PagedList) this.this$0).loadStateListeners;
            CollectionsKt__MutableCollectionsKt.removeAll(list, (Function1) AnonymousClass1.INSTANCE);
            list2 = ((PagedList) this.this$0).loadStateListeners;
            LoadType loadType = this.$type;
            LoadState loadState = this.$state;
            for (WeakReference weakReference : list2) {
                Function2 function2 = (Function2) weakReference.get();
                if (function2 != null) {
                    function2.invoke(loadType, loadState);
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
