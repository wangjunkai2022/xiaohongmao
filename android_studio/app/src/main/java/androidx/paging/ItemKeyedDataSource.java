package androidx.paging;

import androidx.annotation.VisibleForTesting;
import androidx.arch.core.util.Function;
import androidx.paging.DataSource;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
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

/* compiled from: ItemKeyedDataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0007\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u00040123B\u0007¢\u0006\u0004\b.\u0010/J+\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00060\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0080@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0012\u001a\u0004\u0018\u00018\u0000*\b\u0012\u0004\u0012\u00028\u00010\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u0004\u0018\u00018\u0000*\b\u0012\u0004\u0012\u00028\u00010\u000fH\u0000¢\u0006\u0004\b\u0013\u0010\u0011J'\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001bJ$\u0010\u0018\u001a\u00020!2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\u001fH&J$\u0010\u001e\u001a\u00020!2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00192\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\"H&J$\u0010\u001c\u001a\u00020!2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00192\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\"H&J\u0017\u0010$\u001a\u00028\u00002\u0006\u0010#\u001a\u00028\u0001H&¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00028\u00002\u0006\u0010#\u001a\u00028\u0001H\u0010¢\u0006\u0004\b&\u0010%J<\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010(*\u00020\u00012\u001e\u0010*\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000f0)J<\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010(*\u00020\u00012\u001e\u0010*\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000f0,J0\u0010-\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010(*\u00020\u00012\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020)J0\u0010-\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0000\"\b\b\u0002\u0010(*\u00020\u00012\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020,\u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, d2 = {"Landroidx/paging/ItemKeyedDataSource;", "", "Key", "Value", "Landroidx/paging/DataSource;", "Lkotlinx/coroutines/q;", "Landroidx/paging/DataSource$BaseResult;", "androidx/paging/ItemKeyedDataSource$asCallback$1", "asCallback", "(Lkotlinx/coroutines/q;)Landroidx/paging/ItemKeyedDataSource$asCallback$1;", "Landroidx/paging/DataSource$Params;", "params", "load$paging_common", "(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", x0.f36550r, "", "getPrevKey$paging_common", "(Ljava/util/List;)Ljava/lang/Object;", "getPrevKey", "getNextKey$paging_common", "getNextKey", "Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;", "loadInitial$paging_common", "(Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadInitial", "Landroidx/paging/ItemKeyedDataSource$LoadParams;", "loadBefore$paging_common", "(Landroidx/paging/ItemKeyedDataSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadBefore", "loadAfter$paging_common", "loadAfter", "Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;", com.alipay.sdk.authjs.a.f6838i, "", "Landroidx/paging/ItemKeyedDataSource$LoadCallback;", "item", "getKey", "(Ljava/lang/Object;)Ljava/lang/Object;", "getKeyInternal$paging_common", "getKeyInternal", "ToValue", "Landroidx/arch/core/util/Function;", r.b.f83826b, "mapByPage", "Lkotlin/Function1;", "map", "<init>", "()V", "LoadCallback", "LoadInitialCallback", "LoadInitialParams", "LoadParams", "paging-common"}, k = 1, mv = {1, 5, 1})
@Deprecated(message = "ItemKeyedDataSource is deprecated and has been replaced by PagingSource", replaceWith = @ReplaceWith(expression = "PagingSource<Key, Value>", imports = {"androidx.paging.PagingSource"}))
/* loaded from: classes.dex */
public abstract class ItemKeyedDataSource<Key, Value> extends DataSource<Key, Value> {

    /* compiled from: ItemKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\b&\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007H&¨\u0006\b"}, d2 = {"Landroidx/paging/ItemKeyedDataSource$LoadCallback;", "Value", "", "()V", "onResult", "", "data", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadCallback<Value> {
        public abstract void onResult(@g List<? extends Value> list);
    }

    /* compiled from: ItemKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&¨\u0006\u000b"}, d2 = {"Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;", "Value", "Landroidx/paging/ItemKeyedDataSource$LoadCallback;", "()V", "onResult", "", "data", "", "position", "", "totalCount", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadInitialCallback<Value> extends LoadCallback<Value> {
        public abstract void onResult(@g List<? extends Value> list, int i4, int i10);
    }

    /* compiled from: ItemKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0004\u0018\u00018\u00028\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;", "Key", "", "requestedInitialKey", "requestedLoadSize", "", "placeholdersEnabled", "", "(Ljava/lang/Object;IZ)V", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static class LoadInitialParams<Key> {
        @JvmField
        public final boolean placeholdersEnabled;
        @h
        @JvmField
        public final Key requestedInitialKey;
        @JvmField
        public final int requestedLoadSize;

        public LoadInitialParams(@h Key key, int i4, boolean z9) {
            this.requestedInitialKey = key;
            this.requestedLoadSize = i4;
            this.placeholdersEnabled = z9;
        }
    }

    /* compiled from: ItemKeyedDataSource.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00028\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0012\u0010\u0003\u001a\u00028\u00028\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/paging/ItemKeyedDataSource$LoadParams;", "Key", "", "key", "requestedLoadSize", "", "(Ljava/lang/Object;I)V", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
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

    /* compiled from: ItemKeyedDataSource.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            iArr[LoadType.PREPEND.ordinal()] = 2;
            iArr[LoadType.APPEND.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ItemKeyedDataSource() {
        super(DataSource.KeyType.ITEM_KEYED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.paging.ItemKeyedDataSource$asCallback$1] */
    public final ItemKeyedDataSource$asCallback$1 asCallback(final q<? super DataSource.BaseResult<Value>> qVar) {
        return new LoadCallback<Value>() { // from class: androidx.paging.ItemKeyedDataSource$asCallback$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends Value> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation = qVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, this.getPrevKey$paging_common(data), this.getNextKey$paging_common(data), 0, 0, 24, null);
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m70constructorimpl(baseResult));
            }
        };
    }

    @g
    public abstract Key getKey(@g Value value);

    @Override // androidx.paging.DataSource
    @g
    public Key getKeyInternal$paging_common(@g Value item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return getKey(item);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h
    public final Key getNextKey$paging_common(@g List<? extends Value> list) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) list);
        if (lastOrNull == null) {
            return null;
        }
        return (Key) getKey(lastOrNull);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h
    public final Key getPrevKey$paging_common(@g List<? extends Value> list) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
        if (firstOrNull == null) {
            return null;
        }
        return (Key) getKey(firstOrNull);
    }

    @Override // androidx.paging.DataSource
    @h
    public final Object load$paging_common(@g DataSource.Params<Key> params, @g Continuation<? super DataSource.BaseResult<Value>> continuation) {
        int i4 = WhenMappings.$EnumSwitchMapping$0[params.getType$paging_common().ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                Key key = params.getKey();
                Intrinsics.checkNotNull(key);
                return loadBefore$paging_common(new LoadParams<>(key, params.getPageSize()), continuation);
            } else if (i4 == 3) {
                Key key2 = params.getKey();
                Intrinsics.checkNotNull(key2);
                return loadAfter$paging_common(new LoadParams<>(key2, params.getPageSize()), continuation);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return loadInitial$paging_common(new LoadInitialParams<>(params.getKey(), params.getInitialLoadSize(), params.getPlaceholdersEnabled()), continuation);
    }

    public abstract void loadAfter(@g LoadParams<Key> loadParams, @g LoadCallback<Value> loadCallback);

    @h
    @VisibleForTesting
    public final Object loadAfter$paging_common(@g LoadParams<Key> loadParams, @g Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadAfter(loadParams, asCallback(rVar));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    public abstract void loadBefore(@g LoadParams<Key> loadParams, @g LoadCallback<Value> loadCallback);

    @h
    @VisibleForTesting
    public final Object loadBefore$paging_common(@g LoadParams<Key> loadParams, @g Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadBefore(loadParams, asCallback(rVar));
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    public abstract void loadInitial(@g LoadInitialParams<Key> loadInitialParams, @g LoadInitialCallback<Value> loadInitialCallback);

    @h
    @VisibleForTesting
    public final Object loadInitial$paging_common(@g LoadInitialParams<Key> loadInitialParams, @g Continuation<? super DataSource.BaseResult<Value>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final kotlinx.coroutines.r rVar = new kotlinx.coroutines.r(intercepted, 1);
        rVar.C();
        loadInitial(loadInitialParams, new LoadInitialCallback<Value>() { // from class: androidx.paging.ItemKeyedDataSource$loadInitial$2$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends Value> data, int i4, int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation2 = rVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, this.getPrevKey$paging_common(data), this.getNextKey$paging_common(data), i4, (i10 - data.size()) - i4);
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m70constructorimpl(baseResult));
            }

            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends Value> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                Continuation continuation2 = rVar;
                DataSource.BaseResult baseResult = new DataSource.BaseResult(data, this.getPrevKey$paging_common(data), this.getNextKey$paging_common(data), 0, 0, 24, null);
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
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> map(@g final Function<Value, ToValue> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.ItemKeyedDataSource$map$1
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
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> mapByPage(@g Function<List<Value>, List<ToValue>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new WrapperItemKeyedDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    @g
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> map(@g final Function1<? super Value, ? extends ToValue> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.ItemKeyedDataSource$map$2
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
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> mapByPage(@g final Function1<? super List<? extends Value>, ? extends List<? extends ToValue>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage((Function) new Function() { // from class: androidx.paging.ItemKeyedDataSource$mapByPage$1
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
