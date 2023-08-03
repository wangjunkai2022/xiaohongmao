package androidx.paging;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.DataSource;
import androidx.paging.PositionalDataSource;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PositionalDataSource.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\b'\u0018\u0000 '*\b\b\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00010\u0003:\u0005'()*+B\u0005¢\u0006\u0002\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0012H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0011\u001a\u00020\u0016H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\u0015\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00162\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH'J\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0011\u001a\u00020\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ\u001e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u001d2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH'J*\u0010 \u001a\b\u0012\u0004\u0012\u0002H!0\u0000\"\b\b\u0001\u0010!*\u00020\u00022\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H!0#J*\u0010 \u001a\b\u0012\u0004\u0012\u0002H!0\u0000\"\b\b\u0001\u0010!*\u00020\u00022\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H!0$J6\u0010%\u001a\b\u0012\u0004\u0012\u0002H!0\u0000\"\b\b\u0001\u0010!*\u00020\u00022\u001e\u0010\"\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000&\u0012\n\u0012\b\u0012\u0004\u0012\u0002H!0&0#J6\u0010%\u001a\b\u0012\u0004\u0012\u0002H!0\u0000\"\b\b\u0001\u0010!*\u00020\u00022\u001e\u0010\"\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000&\u0012\n\u0012\b\u0012\u0004\u0012\u0002H!0&0$R\u001a\u0010\u0006\u001a\u00020\u0007X\u0090D¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Landroidx/paging/PositionalDataSource;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/DataSource;", "", "()V", "isContiguous", "", "isContiguous$paging_common$annotations", "isContiguous$paging_common", "()Z", "getKeyInternal", "item", "getKeyInternal$paging_common", "(Ljava/lang/Object;)Ljava/lang/Integer;", x0.f36550r, "Landroidx/paging/DataSource$BaseResult;", "params", "Landroidx/paging/DataSource$Params;", "load$paging_common", "(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadInitial", "Landroidx/paging/PositionalDataSource$LoadInitialParams;", "loadInitial$paging_common", "(Landroidx/paging/PositionalDataSource$LoadInitialParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", com.alipay.sdk.authjs.a.f6838i, "Landroidx/paging/PositionalDataSource$LoadInitialCallback;", "loadRange", "Landroidx/paging/PositionalDataSource$LoadRangeParams;", "(Landroidx/paging/PositionalDataSource$LoadRangeParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/PositionalDataSource$LoadRangeCallback;", "map", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, r.b.f83826b, "Lkotlin/Function1;", "Landroidx/arch/core/util/Function;", "mapByPage", "", "Companion", "LoadInitialCallback", "LoadInitialParams", "LoadRangeCallback", "LoadRangeParams", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Deprecated(message = "PositionalDataSource is deprecated and has been replaced by PagingSource", replaceWith = @ReplaceWith(expression = "PagingSource<Int, T>", imports = {"androidx.paging.PagingSource"}))
/* loaded from: classes.dex */
public abstract class PositionalDataSource<T> extends DataSource<Integer, T> {
    @g
    public static final Companion Companion = new Companion(null);
    private final boolean isContiguous;

    /* compiled from: PositionalDataSource.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J \u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Landroidx/paging/PositionalDataSource$Companion;", "", "()V", "computeInitialLoadPosition", "", "params", "Landroidx/paging/PositionalDataSource$LoadInitialParams;", "totalCount", "computeInitialLoadSize", "initialLoadPosition", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int computeInitialLoadPosition(@g LoadInitialParams params, int i4) {
            Intrinsics.checkNotNullParameter(params, "params");
            int i10 = params.requestedStartPosition;
            int i11 = params.requestedLoadSize;
            int i12 = params.pageSize;
            return Math.max(0, Math.min(((((i4 - i11) + i12) - 1) / i12) * i12, (i10 / i12) * i12));
        }

        @JvmStatic
        public final int computeInitialLoadSize(@g LoadInitialParams params, int i4, int i10) {
            Intrinsics.checkNotNullParameter(params, "params");
            return Math.min(i10 - i4, params.requestedLoadSize);
        }
    }

    /* compiled from: PositionalDataSource.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\u0006\u0010\b\u001a\u00020\tH&J&\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&¨\u0006\u000b"}, d2 = {"Landroidx/paging/PositionalDataSource$LoadInitialCallback;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "onResult", "", "data", "", "position", "", "totalCount", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadInitialCallback<T> {
        public abstract void onResult(@g List<? extends T> list, int i4);

        public abstract void onResult(@g List<? extends T> list, int i4, int i10);
    }

    /* compiled from: PositionalDataSource.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0010\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/paging/PositionalDataSource$LoadInitialParams;", "", "requestedStartPosition", "", "requestedLoadSize", "pageSize", "placeholdersEnabled", "", "(IIIZ)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static class LoadInitialParams {
        @JvmField
        public final int pageSize;
        @JvmField
        public final boolean placeholdersEnabled;
        @JvmField
        public final int requestedLoadSize;
        @JvmField
        public final int requestedStartPosition;

        public LoadInitialParams(int i4, int i10, int i11, boolean z9) {
            this.requestedStartPosition = i4;
            this.requestedLoadSize = i10;
            this.pageSize = i11;
            this.placeholdersEnabled = z9;
            if (!(i4 >= 0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("invalid start position: ", Integer.valueOf(i4)).toString());
            }
            if (!(i10 >= 0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("invalid load size: ", Integer.valueOf(i10)).toString());
            }
            if (!(i11 >= 0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("invalid page size: ", Integer.valueOf(i11)).toString());
            }
        }
    }

    /* compiled from: PositionalDataSource.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\b&\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007H&¨\u0006\b"}, d2 = {"Landroidx/paging/PositionalDataSource$LoadRangeCallback;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "onResult", "", "data", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadRangeCallback<T> {
        public abstract void onResult(@g List<? extends T> list);
    }

    /* compiled from: PositionalDataSource.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/paging/PositionalDataSource$LoadRangeParams;", "", "startPosition", "", "loadSize", "(II)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static class LoadRangeParams {
        @JvmField
        public final int loadSize;
        @JvmField
        public final int startPosition;

        public LoadRangeParams(int i4, int i10) {
            this.startPosition = i4;
            this.loadSize = i10;
        }
    }

    public PositionalDataSource() {
        super(DataSource.KeyType.POSITIONAL);
    }

    @JvmStatic
    public static final int computeInitialLoadPosition(@g LoadInitialParams loadInitialParams, int i4) {
        return Companion.computeInitialLoadPosition(loadInitialParams, i4);
    }

    @JvmStatic
    public static final int computeInitialLoadSize(@g LoadInitialParams loadInitialParams, int i4, int i10) {
        return Companion.computeInitialLoadSize(loadInitialParams, i4, i10);
    }

    public static /* synthetic */ void isContiguous$paging_common$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadRange(final LoadRangeParams loadRangeParams, Continuation<? super DataSource.BaseResult<T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadRange(loadRangeParams, new LoadRangeCallback<T>() { // from class: androidx.paging.PositionalDataSource$loadRange$2$1
            @Override // androidx.paging.PositionalDataSource.LoadRangeCallback
            public void onResult(@g List<? extends T> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                int i4 = PositionalDataSource.LoadRangeParams.this.startPosition;
                Integer valueOf = i4 == 0 ? null : Integer.valueOf(i4);
                if (this.isInvalid()) {
                    Continuation continuation2 = rVar;
                    DataSource.BaseResult empty$paging_common = DataSource.BaseResult.Companion.empty$paging_common();
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m70constructorimpl(empty$paging_common));
                    return;
                }
                Continuation continuation3 = rVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, valueOf, Integer.valueOf(PositionalDataSource.LoadRangeParams.this.startPosition + data.size()), 0, 0, 24, null);
                Result.Companion companion2 = Result.Companion;
                continuation3.resumeWith(Result.m70constructorimpl(baseResult));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.paging.DataSource
    public /* bridge */ /* synthetic */ Integer getKeyInternal$paging_common(Object obj) {
        return getKeyInternal$paging_common((PositionalDataSource<T>) obj);
    }

    @Override // androidx.paging.DataSource
    public boolean isContiguous$paging_common() {
        return this.isContiguous;
    }

    @Override // androidx.paging.DataSource
    @h
    public final Object load$paging_common(@g DataSource.Params<Integer> params, @g Continuation<? super DataSource.BaseResult<T>> continuation) {
        if (params.getType$paging_common() == LoadType.REFRESH) {
            int initialLoadSize = params.getInitialLoadSize();
            int i4 = 0;
            if (params.getKey() != null) {
                int intValue = params.getKey().intValue();
                if (params.getPlaceholdersEnabled()) {
                    initialLoadSize = Math.max(initialLoadSize / params.getPageSize(), 2) * params.getPageSize();
                    i4 = Math.max(0, ((intValue - (initialLoadSize / 2)) / params.getPageSize()) * params.getPageSize());
                } else {
                    i4 = Math.max(0, intValue - (initialLoadSize / 2));
                }
            }
            return loadInitial$paging_common(new LoadInitialParams(i4, initialLoadSize, params.getPageSize(), params.getPlaceholdersEnabled()), continuation);
        }
        Integer key = params.getKey();
        Intrinsics.checkNotNull(key);
        int intValue2 = key.intValue();
        int pageSize = params.getPageSize();
        if (params.getType$paging_common() == LoadType.PREPEND) {
            pageSize = Math.min(pageSize, intValue2);
            intValue2 -= pageSize;
        }
        return loadRange(new LoadRangeParams(intValue2, pageSize), continuation);
    }

    @WorkerThread
    public abstract void loadInitial(@g LoadInitialParams loadInitialParams, @g LoadInitialCallback<T> loadInitialCallback);

    @h
    @VisibleForTesting
    public final Object loadInitial$paging_common(@g final LoadInitialParams loadInitialParams, @g Continuation<? super DataSource.BaseResult<T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadInitial(loadInitialParams, new LoadInitialCallback<T>(this) { // from class: androidx.paging.PositionalDataSource$loadInitial$2$1
            final /* synthetic */ PositionalDataSource<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            {
                this.this$0 = this;
            }

            private final void resume(PositionalDataSource.LoadInitialParams loadInitialParams2, DataSource.BaseResult<T> baseResult) {
                if (loadInitialParams2.placeholdersEnabled) {
                    baseResult.validateForInitialTiling$paging_common(loadInitialParams2.pageSize);
                }
                Continuation continuation2 = rVar;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(baseResult));
            }

            @Override // androidx.paging.PositionalDataSource.LoadInitialCallback
            public void onResult(@g List<? extends T> data, int i4, int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (this.this$0.isInvalid()) {
                    Continuation continuation2 = rVar;
                    DataSource.BaseResult empty$paging_common = DataSource.BaseResult.Companion.empty$paging_common();
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m70constructorimpl(empty$paging_common));
                    return;
                }
                int size = data.size() + i4;
                resume(loadInitialParams, new DataSource.BaseResult(data, i4 == 0 ? null : Integer.valueOf(i4), size == i10 ? null : Integer.valueOf(size), i4, (i10 - data.size()) - i4));
            }

            @Override // androidx.paging.PositionalDataSource.LoadInitialCallback
            public void onResult(@g List<? extends T> data, int i4) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (this.this$0.isInvalid()) {
                    Continuation continuation2 = rVar;
                    DataSource.BaseResult empty$paging_common = DataSource.BaseResult.Companion.empty$paging_common();
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m70constructorimpl(empty$paging_common));
                    return;
                }
                resume(loadInitialParams, new DataSource.BaseResult(data, i4 == 0 ? null : Integer.valueOf(i4), Integer.valueOf(data.size() + i4), i4, Integer.MIN_VALUE));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    @WorkerThread
    public abstract void loadRange(@g LoadRangeParams loadRangeParams, @g LoadRangeCallback<T> loadRangeCallback);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.paging.DataSource
    @g
    public final Integer getKeyInternal$paging_common(@g T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        throw new IllegalStateException("Cannot get key by item in positionalDataSource");
    }

    @Override // androidx.paging.DataSource
    @g
    public final <V> PositionalDataSource<V> map(@g final Function<T, V> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PositionalDataSource$map$1
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<V> apply(List<? extends T> list) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(list, "list");
                Function<T, V> function2 = function;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(function2.apply(it.next()));
                }
                return arrayList;
            }
        });
    }

    @Override // androidx.paging.DataSource
    @g
    public final <V> PositionalDataSource<V> mapByPage(@g Function<List<T>, List<V>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new WrapperPositionalDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    @g
    public final <V> PositionalDataSource<V> map(@g final Function1<? super T, ? extends V> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PositionalDataSource$map$2
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<V> apply(List<? extends T> list) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(list, "list");
                Function1<T, V> function1 = function;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(function1.invoke(it.next()));
                }
                return arrayList;
            }
        });
    }

    @Override // androidx.paging.DataSource
    @g
    public final <V> PositionalDataSource<V> mapByPage(@g final Function1<? super List<? extends T>, ? extends List<? extends V>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PositionalDataSource$mapByPage$1
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<V> apply(List<? extends T> it) {
                Function1<List<? extends T>, List<V>> function1 = function;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return (List) function1.invoke(it);
            }
        });
    }
}
