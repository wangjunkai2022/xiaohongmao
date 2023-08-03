package androidx.paging;

import androidx.arch.core.util.Function;
import androidx.paging.DataSource;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.q;
import m8.g;
import m8.h;

/* compiled from: PageKeyedDataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0004-./0B\u0007¢\u0006\u0004\b,\u0010+J'\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\fJ0\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00122\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00070\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J'\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J*\u0010\b\u001a\u00020\u001a2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018H&J*\u0010\u000b\u001a\u00020\u001a2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012H&J*\u0010\r\u001a\u00020\u001a2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012H&J\u0017\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0001H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ<\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010\u001f*\u00020\u00012\u001e\u0010\"\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020!0 J<\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010\u001f*\u00020\u00012\u001e\u0010\"\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010!\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020!0$J0\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010\u001f*\u00020\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020 J0\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010\u001f*\u00020\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020$R \u0010&\u001a\u00020\u00108\u0010X\u0090D¢\u0006\u0012\n\u0004\b&\u0010'\u0012\u0004\b*\u0010+\u001a\u0004\b(\u0010)\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Landroidx/paging/PageKeyedDataSource;", "", "Key", "Value", "Landroidx/paging/DataSource;", "Landroidx/paging/PageKeyedDataSource$LoadInitialParams;", "params", "Landroidx/paging/DataSource$BaseResult;", "loadInitial", "(Landroidx/paging/PageKeyedDataSource$LoadInitialParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/PageKeyedDataSource$LoadParams;", "loadBefore", "(Landroidx/paging/PageKeyedDataSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadAfter", "Lkotlinx/coroutines/q;", "continuation", "", "isAppend", "Landroidx/paging/PageKeyedDataSource$LoadCallback;", "continuationAsCallback", "Landroidx/paging/DataSource$Params;", "load$paging_common", "(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", x0.f36550r, "Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;", com.alipay.sdk.authjs.a.f6838i, "", "item", "getKeyInternal$paging_common", "(Ljava/lang/Object;)Ljava/lang/Object;", "getKeyInternal", "ToValue", "Landroidx/arch/core/util/Function;", "", r.b.f83826b, "mapByPage", "Lkotlin/Function1;", "map", "supportsPageDropping", "Z", "getSupportsPageDropping$paging_common", "()Z", "getSupportsPageDropping$paging_common$annotations", "()V", "<init>", "LoadCallback", "LoadInitialCallback", "LoadInitialParams", "LoadParams", "paging-common"}, k = 1, mv = {1, 5, 1})
@Deprecated(message = "PageKeyedDataSource is deprecated and has been replaced by PagingSource", replaceWith = @ReplaceWith(expression = "PagingSource<Key, Value>", imports = {"androidx.paging.PagingSource"}))
/* loaded from: classes.dex */
public abstract class PageKeyedDataSource<Key, Value> extends DataSource<Key, Value> {
    private final boolean supportsPageDropping;

    /* compiled from: PageKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00018\u0002H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PageKeyedDataSource$LoadCallback;", "Key", "Value", "", "()V", "onResult", "", "data", "", "adjacentPageKey", "(Ljava/util/List;Ljava/lang/Object;)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadCallback<Key, Value> {
        public abstract void onResult(@g List<? extends Value> list, @h Key key);
    }

    /* compiled from: PageKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J/\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00018\u00022\b\u0010\n\u001a\u0004\u0018\u00018\u0002H&¢\u0006\u0002\u0010\u000bJ?\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00030\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00018\u00022\b\u0010\n\u001a\u0004\u0018\u00018\u0002H&¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;", "Key", "Value", "", "()V", "onResult", "", "data", "", "previousPageKey", "nextPageKey", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V", "position", "", "totalCount", "(Ljava/util/List;IILjava/lang/Object;Ljava/lang/Object;)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadInitialCallback<Key, Value> {
        public abstract void onResult(@g List<? extends Value> list, int i4, int i10, @h Key key, @h Key key2);

        public abstract void onResult(@g List<? extends Value> list, @h Key key, @h Key key2);
    }

    /* compiled from: PageKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/paging/PageKeyedDataSource$LoadInitialParams;", "Key", "", "requestedLoadSize", "", "placeholdersEnabled", "", "(IZ)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static class LoadInitialParams<Key> {
        @JvmField
        public final boolean placeholdersEnabled;
        @JvmField
        public final int requestedLoadSize;

        public LoadInitialParams(int i4, boolean z9) {
            this.requestedLoadSize = i4;
            this.placeholdersEnabled = z9;
        }
    }

    /* compiled from: PageKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00028\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0012\u0010\u0003\u001a\u00028\u00028\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/paging/PageKeyedDataSource$LoadParams;", "Key", "", "key", "requestedLoadSize", "", "(Ljava/lang/Object;I)V", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static class LoadParams<Key> {
        @JvmField
        @g
        public final Key key;
        @JvmField
        public final int requestedLoadSize;

        public LoadParams(@g Key key, int i4) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.requestedLoadSize = i4;
        }
    }

    public PageKeyedDataSource() {
        super(DataSource.KeyType.PAGE_KEYED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadCallback<Key, Value> continuationAsCallback(final q<? super DataSource.BaseResult<Value>> qVar, final boolean z9) {
        return new LoadCallback<Key, Value>() { // from class: androidx.paging.PageKeyedDataSource$continuationAsCallback$1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends Value> data, @h Key key) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation = qVar;
                boolean z10 = z9;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, z10 ? null : key, z10 ? key : null, 0, 0, 24, null);
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(baseResult));
            }
        };
    }

    public static /* synthetic */ void getSupportsPageDropping$paging_common$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadAfter(LoadParams<Key> loadParams, Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadAfter(loadParams, continuationAsCallback(rVar, true));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadBefore(LoadParams<Key> loadParams, Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadBefore(loadParams, continuationAsCallback(rVar, false));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadInitial(LoadInitialParams<Key> loadInitialParams, Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadInitial(loadInitialParams, new LoadInitialCallback<Key, Value>() { // from class: androidx.paging.PageKeyedDataSource$loadInitial$2$1
            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends Value> data, int i4, int i10, @h Key key, @h Key key2) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation2 = rVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, key, key2, i4, (i10 - data.size()) - i4);
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(baseResult));
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends Value> data, @h Key key, @h Key key2) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation2 = rVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, key, key2, 0, 0, 24, null);
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(baseResult));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    @Override // androidx.paging.DataSource
    @g
    public Key getKeyInternal$paging_common(@g Value item) {
        Intrinsics.checkNotNullParameter(item, "item");
        throw new IllegalStateException("Cannot get key by item in pageKeyedDataSource");
    }

    @Override // androidx.paging.DataSource
    public boolean getSupportsPageDropping$paging_common() {
        return this.supportsPageDropping;
    }

    @Override // androidx.paging.DataSource
    @h
    public final Object load$paging_common(@g DataSource.Params<Key> params, @g Continuation<? super DataSource.BaseResult<Value>> continuation) {
        if (params.getType$paging_common() == LoadType.REFRESH) {
            return loadInitial(new LoadInitialParams<>(params.getInitialLoadSize(), params.getPlaceholdersEnabled()), continuation);
        }
        if (params.getKey() == null) {
            return DataSource.BaseResult.Companion.empty$paging_common();
        }
        if (params.getType$paging_common() == LoadType.PREPEND) {
            return loadBefore(new LoadParams<>(params.getKey(), params.getPageSize()), continuation);
        }
        if (params.getType$paging_common() == LoadType.APPEND) {
            return loadAfter(new LoadParams<>(params.getKey(), params.getPageSize()), continuation);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported type ", params.getType$paging_common()));
    }

    public abstract void loadAfter(@g LoadParams<Key> loadParams, @g LoadCallback<Key, Value> loadCallback);

    public abstract void loadBefore(@g LoadParams<Key> loadParams, @g LoadCallback<Key, Value> loadCallback);

    public abstract void loadInitial(@g LoadInitialParams<Key> loadInitialParams, @g LoadInitialCallback<Key, Value> loadInitialCallback);

    @Override // androidx.paging.DataSource
    @g
    public final <ToValue> PageKeyedDataSource<Key, ToValue> map(@g final Function<Value, ToValue> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PageKeyedDataSource$map$1
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<ToValue> apply(List<? extends Value> list) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(list, "list");
                Function<Value, ToValue> function2 = function;
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
    public final <ToValue> PageKeyedDataSource<Key, ToValue> mapByPage(@g Function<List<Value>, List<ToValue>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new WrapperPageKeyedDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    @g
    public final <ToValue> PageKeyedDataSource<Key, ToValue> map(@g final Function1<? super Value, ? extends ToValue> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PageKeyedDataSource$map$2
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<ToValue> apply(List<? extends Value> list) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullExpressionValue(list, "list");
                Function1<Value, ToValue> function1 = function;
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
    public final <ToValue> PageKeyedDataSource<Key, ToValue> mapByPage(@g final Function1<? super List<? extends Value>, ? extends List<? extends ToValue>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.PageKeyedDataSource$mapByPage$1
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<ToValue> apply(List<? extends Value> it) {
                Function1<List<? extends Value>, List<ToValue>> function1 = function;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return (List) function1.invoke(it);
            }
        });
    }
}
