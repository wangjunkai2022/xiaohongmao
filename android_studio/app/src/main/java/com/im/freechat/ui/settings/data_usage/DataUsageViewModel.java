package com.im.freechat.ui.settings.data_usage;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.im.freechat.domain.CacheFileType;
import com.im.freechat.domain.r;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: DataUsageViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u001f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b)\u0010*J\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0005\u001a\u00020\u0003J\u0014\u0010\t\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R#\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00060\u00168\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR#\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00060\u00168\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001bR%\u0010(\u001a\u0010\u0012\f\u0012\n #*\u0004\u0018\u00010\"0\"0!8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u0006,"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;", "Lkotlinx/coroutines/j2;", "n", "o", "", "Lcom/im/freechat/domain/CacheFileType;", "types", "m", "Lcom/im/freechat/domain/usecase/settings/c;", "c", "Lcom/im/freechat/domain/usecase/settings/c;", "getNetworkStatisticInteractor", "Lcom/im/freechat/domain/usecase/settings/b;", "d", "Lcom/im/freechat/domain/usecase/settings/b;", "getCacheStorageUsageInteractor", "Lcom/im/freechat/domain/usecase/settings/a;", "e", "Lcom/im/freechat/domain/usecase/settings/a;", "deleteCacheByTypeInteractor", "Landroidx/lifecycle/MutableLiveData;", "Lcom/im/freechat/domain/m;", "f", "Landroidx/lifecycle/MutableLiveData;", "q", "()Landroidx/lifecycle/MutableLiveData;", "networkStatistics", "Lcom/im/freechat/domain/r;", "g", "p", "cacheStorageStatistics", "Landroidx/lifecycle/LiveData;", "", "kotlin.jvm.PlatformType", "h", "Landroidx/lifecycle/LiveData;", "r", "()Landroidx/lifecycle/LiveData;", "totalCacheStorageUsage", "<init>", "(Lcom/im/freechat/domain/usecase/settings/c;Lcom/im/freechat/domain/usecase/settings/b;Lcom/im/freechat/domain/usecase/settings/a;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class DataUsageViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.settings.c f43643c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.settings.b f43644d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.settings.a f43645e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<List<com.im.freechat.domain.m>> f43646f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<List<r>> f43647g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final LiveData<Long> f43648h;

    /* compiled from: DataUsageViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;", "", "(Ljava/lang/String;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataUsageViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.data_usage.DataUsageViewModel$deleteCacheFilesOfType$1", f = "DataUsageViewModel.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43650a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<CacheFileType> f43652c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(List<? extends CacheFileType> list, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43652c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43652c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43650a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.settings.a aVar = DataUsageViewModel.this.f43645e;
                List<CacheFileType> list = this.f43652c;
                this.f43650a = 1;
                if (aVar.a(list, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            DataUsageViewModel.this.o();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataUsageViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.data_usage.DataUsageViewModel$fetchNetworkStatistics$1", f = "DataUsageViewModel.kt", i = {}, l = {29}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f43653a;

        /* renamed from: b  reason: collision with root package name */
        int f43654b;

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            MutableLiveData<List<com.im.freechat.domain.m>> mutableLiveData;
            Object obj2;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43654b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                MutableLiveData<List<com.im.freechat.domain.m>> q9 = DataUsageViewModel.this.q();
                com.im.freechat.domain.usecase.settings.c cVar = DataUsageViewModel.this.f43643c;
                Unit unit = Unit.INSTANCE;
                this.f43653a = q9;
                this.f43654b = 1;
                Object a10 = cVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutableLiveData = q9;
                obj2 = a10;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                mutableLiveData = (MutableLiveData) this.f43653a;
                ResultKt.throwOnFailure(obj);
                obj2 = ((Result) obj).m79unboximpl();
            }
            if (Result.m76isFailureimpl(obj2)) {
                obj2 = null;
            }
            mutableLiveData.setValue(obj2);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataUsageViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.data_usage.DataUsageViewModel$fetchStorageUsage$1", f = "DataUsageViewModel.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f43656a;

        /* renamed from: b  reason: collision with root package name */
        int f43657b;

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            MutableLiveData<List<r>> mutableLiveData;
            Object obj2;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43657b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                MutableLiveData<List<r>> p9 = DataUsageViewModel.this.p();
                com.im.freechat.domain.usecase.settings.b bVar = DataUsageViewModel.this.f43644d;
                Unit unit = Unit.INSTANCE;
                this.f43656a = p9;
                this.f43657b = 1;
                Object a10 = bVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutableLiveData = p9;
                obj2 = a10;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                mutableLiveData = (MutableLiveData) this.f43656a;
                ResultKt.throwOnFailure(obj);
                obj2 = ((Result) obj).m79unboximpl();
            }
            if (Result.m76isFailureimpl(obj2)) {
                obj2 = null;
            }
            mutableLiveData.setValue(obj2);
            return Unit.INSTANCE;
        }
    }

    public DataUsageViewModel(@m8.g com.im.freechat.domain.usecase.settings.c getNetworkStatisticInteractor, @m8.g com.im.freechat.domain.usecase.settings.b getCacheStorageUsageInteractor, @m8.g com.im.freechat.domain.usecase.settings.a deleteCacheByTypeInteractor) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(getNetworkStatisticInteractor, "getNetworkStatisticInteractor");
        Intrinsics.checkNotNullParameter(getCacheStorageUsageInteractor, "getCacheStorageUsageInteractor");
        Intrinsics.checkNotNullParameter(deleteCacheByTypeInteractor, "deleteCacheByTypeInteractor");
        this.f43643c = getNetworkStatisticInteractor;
        this.f43644d = getCacheStorageUsageInteractor;
        this.f43645e = deleteCacheByTypeInteractor;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f43646f = new MutableLiveData<>(emptyList);
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<r>> mutableLiveData = new MutableLiveData<>(emptyList2);
        this.f43647g = mutableLiveData;
        LiveData<Long> map = Transformations.map(mutableLiveData, j.f43668a);
        Intrinsics.checkNotNullExpressionValue(map, "map(cacheStorageStatisti…Of { it.totalSize }\n    }");
        this.f43648h = map;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long s(List it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Iterator it2 = it.iterator();
        long j4 = 0;
        while (it2.hasNext()) {
            j4 += ((r) it2.next()).h();
        }
        return Long.valueOf(j4);
    }

    @m8.g
    public final j2 m(@m8.g List<? extends CacheFileType> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        return c(new a(types, null));
    }

    @m8.g
    public final j2 n() {
        return c(new b(null));
    }

    @m8.g
    public final j2 o() {
        return c(new c(null));
    }

    @m8.g
    public final MutableLiveData<List<r>> p() {
        return this.f43647g;
    }

    @m8.g
    public final MutableLiveData<List<com.im.freechat.domain.m>> q() {
        return this.f43646f;
    }

    @m8.g
    public final LiveData<Long> r() {
        return this.f43648h;
    }
}
