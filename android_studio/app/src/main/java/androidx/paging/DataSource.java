package androidx.paging;

import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.DataSource;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.r;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* compiled from: DataSource.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\b\b&\u0018\u0000 .*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0006-./012B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u0017J\u0017\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0001H ¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0018H\u0017J'\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\"H @ø\u0001\u0000¢\u0006\u0004\b#\u0010$J2\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H&0\u0000\"\b\b\u0002\u0010&*\u00020\u00022\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H&0(H\u0016J2\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H&0\u0000\"\b\b\u0002\u0010&*\u00020\u00022\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H&0)H\u0016J>\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H&0\u0000\"\b\b\u0002\u0010&*\u00020\u00022\u001e\u0010'\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010+\u0012\n\u0012\b\u0012\u0004\u0012\u0002H&0+0(H\u0016J>\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H&0\u0000\"\b\b\u0002\u0010&*\u00020\u00022\u001e\u0010'\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010+\u0012\n\u0012\b\u0012\u0004\u0012\u0002H&0+0)H\u0016J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u0017R\u0014\u0010\u0007\u001a\u00020\b8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0090D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u000fX\u0090D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"Landroidx/paging/DataSource;", "Key", "", "Value", "type", "Landroidx/paging/DataSource$KeyType;", "(Landroidx/paging/DataSource$KeyType;)V", "invalidateCallbackCount", "", "getInvalidateCallbackCount$paging_common", "()I", "invalidateCallbackTracker", "Landroidx/paging/InvalidateCallbackTracker;", "Landroidx/paging/DataSource$InvalidatedCallback;", "isContiguous", "", "isContiguous$paging_common", "()Z", "isInvalid", "supportsPageDropping", "getSupportsPageDropping$paging_common", "getType$paging_common", "()Landroidx/paging/DataSource$KeyType;", "addInvalidatedCallback", "", "onInvalidatedCallback", "getKeyInternal", "item", "getKeyInternal$paging_common", "(Ljava/lang/Object;)Ljava/lang/Object;", "invalidate", x0.f36550r, "Landroidx/paging/DataSource$BaseResult;", "params", "Landroidx/paging/DataSource$Params;", "load$paging_common", "(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "map", "ToValue", r.b.f83826b, "Lkotlin/Function1;", "Landroidx/arch/core/util/Function;", "mapByPage", "", "removeInvalidatedCallback", "BaseResult", "Companion", "Factory", "InvalidatedCallback", "KeyType", "Params", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class DataSource<Key, Value> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final InvalidateCallbackTracker<InvalidatedCallback> invalidateCallbackTracker;
    private final boolean isContiguous;
    private final boolean supportsPageDropping;
    @g
    private final KeyType type;

    /* compiled from: DataSource.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JM\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0002\u0010\u0006\"\u0004\b\u0003\u0010\u00052\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00040\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0004H\u0000¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/DataSource$Companion;", "", "()V", "convert", "", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, r.b.f83826b, "Landroidx/arch/core/util/Function;", v.b.f83881a, "convert$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @g
        public final <A, B> List<B> convert$paging_common(@g Function<List<A>, List<B>> function, @g List<? extends A> source) {
            Intrinsics.checkNotNullParameter(function, "function");
            Intrinsics.checkNotNullParameter(source, "source");
            List<B> dest = function.apply(source);
            if (dest.size() == source.size()) {
                Intrinsics.checkNotNullExpressionValue(dest, "dest");
                return dest;
            }
            throw new IllegalStateException("Invalid Function " + function + " changed return size. This is not supported.");
        }
    }

    /* compiled from: DataSource.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004H&J2\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00040\u0000\"\b\b\u0004\u0010\u0006*\u00020\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040\u0007H\u0016J2\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00040\u0000\"\b\b\u0004\u0010\u0006*\u00020\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040\nH\u0016J>\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00040\u0000\"\b\b\u0004\u0010\u0006*\u00020\u00012\u001e\u0010\b\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00030\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00040\u000b0\u0007H\u0016J>\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00040\u0000\"\b\b\u0004\u0010\u0006*\u00020\u00012\u001e\u0010\b\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00030\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00040\u000b0\nH\u0016J$\u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00100\u000f2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0007¨\u0006\u0014"}, d2 = {"Landroidx/paging/DataSource$Factory;", "", "Key", "Value", "Landroidx/paging/DataSource;", "create", "ToValue", "Landroidx/arch/core/util/Function;", r.b.f83826b, "map", "Lkotlin/Function1;", "", "mapByPage", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "asPagingSourceFactory", "<init>", "()V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static abstract class Factory<Key, Value> {
        public static /* synthetic */ Function0 asPagingSourceFactory$default(Factory factory, n0 n0Var, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    n0Var = i1.c();
                }
                return factory.asPagingSourceFactory(n0Var);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: asPagingSourceFactory");
        }

        @JvmOverloads
        @g
        public final Function0<PagingSource<Key, Value>> asPagingSourceFactory() {
            return asPagingSourceFactory$default(this, null, 1, null);
        }

        @JvmOverloads
        @g
        public final Function0<PagingSource<Key, Value>> asPagingSourceFactory(@g n0 fetchDispatcher) {
            Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
            return new SuspendingPagingSourceFactory(fetchDispatcher, new DataSource$Factory$asPagingSourceFactory$1(fetchDispatcher, this));
        }

        @g
        public abstract DataSource<Key, Value> create();

        @g
        public <ToValue> Factory<Key, ToValue> map(@g final Function<Value, ToValue> function) {
            Intrinsics.checkNotNullParameter(function, "function");
            return mapByPage(new Function() { // from class: androidx.paging.DataSource$Factory$map$1
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

        @g
        public <ToValue> Factory<Key, ToValue> mapByPage(@g final Function<List<Value>, List<ToValue>> function) {
            Intrinsics.checkNotNullParameter(function, "function");
            return new Factory<Key, ToValue>(this) { // from class: androidx.paging.DataSource$Factory$mapByPage$1
                final /* synthetic */ DataSource.Factory<Key, Value> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.this$0 = this;
                }

                @Override // androidx.paging.DataSource.Factory
                @g
                public DataSource<Key, ToValue> create() {
                    return this.this$0.create().mapByPage((Function) function);
                }
            };
        }

        public /* synthetic */ Factory map(final Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            return mapByPage(new Function() { // from class: androidx.paging.DataSource$Factory$map$2
                @Override // androidx.arch.core.util.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply((List) ((List) obj));
                }

                public final List<Object> apply(List<? extends Value> list) {
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullExpressionValue(list, "list");
                    Function1<Value, Object> function1 = function;
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

        public /* synthetic */ Factory mapByPage(final Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            return mapByPage(new Function() { // from class: androidx.paging.DataSource$Factory$mapByPage$2
                @Override // androidx.arch.core.util.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply((List) ((List) obj));
                }

                public final List<Object> apply(List<? extends Value> it) {
                    Function1<List<? extends Value>, List<Object>> function1 = function;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    return function1.invoke(it);
                }
            });
        }
    }

    /* compiled from: DataSource.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'¨\u0006\u0004"}, d2 = {"Landroidx/paging/DataSource$InvalidatedCallback;", "", "onInvalidated", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface InvalidatedCallback {
        @AnyThread
        void onInvalidated();
    }

    /* compiled from: DataSource.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/DataSource$KeyType;", "", "(Ljava/lang/String;I)V", "POSITIONAL", "PAGE_KEYED", "ITEM_KEYED", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum KeyType {
        POSITIONAL,
        PAGE_KEYED,
        ITEM_KEYED
    }

    /* compiled from: DataSource.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0000\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002B1\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0002¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/paging/DataSource$Params;", "K", "", "type", "Landroidx/paging/LoadType;", "key", "initialLoadSize", "", "placeholdersEnabled", "", "pageSize", "(Landroidx/paging/LoadType;Ljava/lang/Object;IZI)V", "getInitialLoadSize", "()I", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getPageSize", "getPlaceholdersEnabled", "()Z", "getType$paging_common", "()Landroidx/paging/LoadType;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Params<K> {
        private final int initialLoadSize;
        @h
        private final K key;
        private final int pageSize;
        private final boolean placeholdersEnabled;
        @g
        private final LoadType type;

        public Params(@g LoadType type, @h K k10, int i4, boolean z9, int i10) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            this.key = k10;
            this.initialLoadSize = i4;
            this.placeholdersEnabled = z9;
            this.pageSize = i10;
            if (type != LoadType.REFRESH && k10 == null) {
                throw new IllegalArgumentException("Key must be non-null for prepend/append");
            }
        }

        public final int getInitialLoadSize() {
            return this.initialLoadSize;
        }

        @h
        public final K getKey() {
            return this.key;
        }

        public final int getPageSize() {
            return this.pageSize;
        }

        public final boolean getPlaceholdersEnabled() {
            return this.placeholdersEnabled;
        }

        @g
        public final LoadType getType$paging_common() {
            return this.type;
        }
    }

    public DataSource(@g KeyType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.invalidateCallbackTracker = new InvalidateCallbackTracker<>(DataSource$invalidateCallbackTracker$1.INSTANCE, new DataSource$invalidateCallbackTracker$2(this));
        this.isContiguous = true;
        this.supportsPageDropping = true;
    }

    @AnyThread
    public void addInvalidatedCallback(@g InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.invalidateCallbackTracker.registerInvalidatedCallback$paging_common(onInvalidatedCallback);
    }

    @VisibleForTesting
    public final int getInvalidateCallbackCount$paging_common() {
        return this.invalidateCallbackTracker.callbackCount$paging_common();
    }

    @g
    public abstract Key getKeyInternal$paging_common(@g Value value);

    public boolean getSupportsPageDropping$paging_common() {
        return this.supportsPageDropping;
    }

    @g
    public final KeyType getType$paging_common() {
        return this.type;
    }

    @AnyThread
    public void invalidate() {
        this.invalidateCallbackTracker.invalidate$paging_common();
    }

    public boolean isContiguous$paging_common() {
        return this.isContiguous;
    }

    @WorkerThread
    public boolean isInvalid() {
        return this.invalidateCallbackTracker.getInvalid$paging_common();
    }

    @h
    public abstract Object load$paging_common(@g Params<Key> params, @g Continuation<? super BaseResult<Value>> continuation);

    @g
    public <ToValue> DataSource<Key, ToValue> map(@g Function<Value, ToValue> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage(new DataSource$map$1(function));
    }

    @g
    public <ToValue> DataSource<Key, ToValue> mapByPage(@g Function<List<Value>, List<ToValue>> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new WrapperDataSource(this, function);
    }

    @AnyThread
    public void removeInvalidatedCallback(@g InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.invalidateCallbackTracker.unregisterInvalidatedCallback$paging_common(onInvalidatedCallback);
    }

    public /* synthetic */ DataSource map(final Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return map(new Function() { // from class: androidx.paging.DataSource$map$2
            @Override // androidx.arch.core.util.Function
            public final Object apply(Value it) {
                Function1<Value, Object> function1 = function;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return function1.invoke(it);
            }
        });
    }

    public /* synthetic */ DataSource mapByPage(final Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return mapByPage(new Function() { // from class: androidx.paging.DataSource$mapByPage$1
            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((List) ((List) obj));
            }

            public final List<Object> apply(List<? extends Value> it) {
                Function1<List<? extends Value>, List<Object>> function1 = function;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return function1.invoke(it);
            }
        });
    }

    /* compiled from: DataSource.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u0018*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001\u0018B=\b\u0000\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\bH\u0000¢\u0006\u0002\b\u0017R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0019"}, d2 = {"Landroidx/paging/DataSource$BaseResult;", "Value", "", "data", "", "prevKey", "nextKey", "itemsBefore", "", "itemsAfter", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V", "getItemsAfter", "()I", "getItemsBefore", "getNextKey", "()Ljava/lang/Object;", "getPrevKey", "equals", "", "other", "validateForInitialTiling", "", "pageSize", "validateForInitialTiling$paging_common", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class BaseResult<Value> {
        @g
        public static final Companion Companion = new Companion(null);
        @JvmField
        @g
        public final List<Value> data;
        private final int itemsAfter;
        private final int itemsBefore;
        @h
        private final Object nextKey;
        @h
        private final Object prevKey;

        /* compiled from: DataSource.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\b\b\u0003\u0010\u0006*\u00020\u0001\"\b\b\u0004\u0010\u0005*\u00020\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00042\u001e\u0010\b\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\n0\tH\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0004\"\b\b\u0003\u0010\r*\u00020\u0001H\u0000¢\u0006\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Landroidx/paging/DataSource$BaseResult$Companion;", "", "()V", "convert", "Landroidx/paging/DataSource$BaseResult;", "Value", "ToValue", "result", r.b.f83826b, "Landroidx/arch/core/util/Function;", "", "convert$paging_common", "empty", ExifInterface.GPS_DIRECTION_TRUE, "empty$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final <ToValue, Value> BaseResult<Value> convert$paging_common(@g BaseResult<ToValue> result, @g Function<List<ToValue>, List<Value>> function) {
                Intrinsics.checkNotNullParameter(result, "result");
                Intrinsics.checkNotNullParameter(function, "function");
                return new BaseResult<>(DataSource.Companion.convert$paging_common(function, result.data), result.getPrevKey(), result.getNextKey(), result.getItemsBefore(), result.getItemsAfter());
            }

            @g
            public final <T> BaseResult<T> empty$paging_common() {
                List emptyList;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return new BaseResult<>(emptyList, null, null, 0, 0);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public BaseResult(@g List<? extends Value> data, @h Object obj, @h Object obj2, int i4, int i10) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
            this.prevKey = obj;
            this.nextKey = obj2;
            this.itemsBefore = i4;
            this.itemsAfter = i10;
            if (i4 < 0 && i4 != Integer.MIN_VALUE) {
                throw new IllegalArgumentException("Position must be non-negative");
            }
            if (data.isEmpty() && (i4 > 0 || i10 > 0)) {
                throw new IllegalArgumentException("Initial result cannot be empty if items are present in data set.");
            }
            if (i10 < 0 && i10 != Integer.MIN_VALUE) {
                throw new IllegalArgumentException("List size + position too large, last item in list beyond totalCount.");
            }
        }

        public boolean equals(@h Object obj) {
            if (obj instanceof BaseResult) {
                BaseResult baseResult = (BaseResult) obj;
                return Intrinsics.areEqual(this.data, baseResult.data) && Intrinsics.areEqual(this.prevKey, baseResult.prevKey) && Intrinsics.areEqual(this.nextKey, baseResult.nextKey) && this.itemsBefore == baseResult.itemsBefore && this.itemsAfter == baseResult.itemsAfter;
            }
            return false;
        }

        public final int getItemsAfter() {
            return this.itemsAfter;
        }

        public final int getItemsBefore() {
            return this.itemsBefore;
        }

        @h
        public final Object getNextKey() {
            return this.nextKey;
        }

        @h
        public final Object getPrevKey() {
            return this.prevKey;
        }

        public final void validateForInitialTiling$paging_common(int i4) {
            int i10;
            if (this.itemsBefore != Integer.MIN_VALUE && (i10 = this.itemsAfter) != Integer.MIN_VALUE) {
                if (i10 > 0 && this.data.size() % i4 != 0) {
                    throw new IllegalArgumentException("PositionalDataSource requires initial load size to be a multiple of page size to support internal tiling. loadSize " + this.data.size() + ", position " + this.itemsBefore + ", totalCount " + (this.itemsBefore + this.data.size() + this.itemsAfter) + ", pageSize " + i4);
                } else if (this.itemsBefore % i4 == 0) {
                    return;
                } else {
                    throw new IllegalArgumentException("Initial load must be pageSize aligned.Position = " + this.itemsBefore + ", pageSize = " + i4);
                }
            }
            throw new IllegalStateException("Placeholders requested, but totalCount not provided. Please call the three-parameter onResult method, or disable placeholders in the PagedList.Config");
        }

        public /* synthetic */ BaseResult(List list, Object obj, Object obj2, int i4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, obj, obj2, (i11 & 8) != 0 ? Integer.MIN_VALUE : i4, (i11 & 16) != 0 ? Integer.MIN_VALUE : i10);
        }
    }
}
