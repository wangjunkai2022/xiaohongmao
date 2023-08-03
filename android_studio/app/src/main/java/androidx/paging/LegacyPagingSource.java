package androidx.paging;

import androidx.annotation.RestrictTo;
import androidx.paging.DataSource;
import androidx.paging.PagingSource;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.t;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.j;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* compiled from: LegacyPagingSource.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u0000 \"*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001\"B#\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0016¢\u0006\u0004\b \u0010!J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0007H\u0007J-\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0011\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R&\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00168\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Landroidx/paging/LegacyPagingSource;", "", "Key", "Value", "Landroidx/paging/PagingSource;", "Landroidx/paging/PagingSource$LoadParams;", "params", "", "guessPageSize", "pageSize", "", "setPageSize", "Landroidx/paging/PagingSource$LoadResult;", x0.f36550r, "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/PagingState;", t.b.f83859d, "getRefreshKey", "(Landroidx/paging/PagingState;)Ljava/lang/Object;", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "Lkotlinx/coroutines/n0;", "Landroidx/paging/DataSource;", "dataSource", "Landroidx/paging/DataSource;", "getDataSource$paging_common", "()Landroidx/paging/DataSource;", "I", "", "getJumpingSupported", "()Z", "jumpingSupported", "<init>", "(Lkotlinx/coroutines/n0;Landroidx/paging/DataSource;)V", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class LegacyPagingSource<Key, Value> extends PagingSource<Key, Value> {
    @g
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final int PAGE_SIZE_NOT_SET = Integer.MIN_VALUE;
    @g
    private final DataSource<Key, Value> dataSource;
    @g
    private final n0 fetchDispatcher;
    private int pageSize;

    /* compiled from: LegacyPagingSource.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: androidx.paging.LegacyPagingSource$1  reason: invalid class name */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass1 implements DataSource.InvalidatedCallback, FunctionAdapter {
        final /* synthetic */ LegacyPagingSource<Key, Value> $tmp0;

        AnonymousClass1(LegacyPagingSource<Key, Value> legacyPagingSource) {
            this.$tmp0 = legacyPagingSource;
        }

        public final boolean equals(@h Object obj) {
            if ((obj instanceof DataSource.InvalidatedCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @g
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(0, this.$tmp0, LegacyPagingSource.class, "invalidate", "invalidate()V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.paging.DataSource.InvalidatedCallback
        public final void onInvalidated() {
            this.$tmp0.invalidate();
        }
    }

    /* compiled from: LegacyPagingSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000H\n"}, d2 = {"", "Key", "Value", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.LegacyPagingSource$2  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass2 extends Lambda implements Function0<Unit> {
        final /* synthetic */ LegacyPagingSource<Key, Value> this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LegacyPagingSource.kt */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* renamed from: androidx.paging.LegacyPagingSource$2$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public /* synthetic */ class AnonymousClass1 implements DataSource.InvalidatedCallback, FunctionAdapter {
            final /* synthetic */ LegacyPagingSource<Key, Value> $tmp0;

            AnonymousClass1(LegacyPagingSource<Key, Value> legacyPagingSource) {
                this.$tmp0 = legacyPagingSource;
            }

            public final boolean equals(@h Object obj) {
                if ((obj instanceof DataSource.InvalidatedCallback) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            @g
            public final Function<?> getFunctionDelegate() {
                return new FunctionReferenceImpl(0, this.$tmp0, LegacyPagingSource.class, "invalidate", "invalidate()V", 0);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            @Override // androidx.paging.DataSource.InvalidatedCallback
            public final void onInvalidated() {
                this.$tmp0.invalidate();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LegacyPagingSource<Key, Value> legacyPagingSource) {
            super(0);
            this.this$0 = legacyPagingSource;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.this$0.getDataSource$paging_common().removeInvalidatedCallback(new AnonymousClass1(this.this$0));
            this.this$0.getDataSource$paging_common().invalidate();
        }
    }

    /* compiled from: LegacyPagingSource.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/paging/LegacyPagingSource$Companion;", "", "()V", "PAGE_SIZE_NOT_SET", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: LegacyPagingSource.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.KeyType.values().length];
            iArr[DataSource.KeyType.POSITIONAL.ordinal()] = 1;
            iArr[DataSource.KeyType.PAGE_KEYED.ordinal()] = 2;
            iArr[DataSource.KeyType.ITEM_KEYED.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LegacyPagingSource(@g n0 fetchDispatcher, @g DataSource<Key, Value> dataSource) {
        Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        this.fetchDispatcher = fetchDispatcher;
        this.dataSource = dataSource;
        this.pageSize = Integer.MIN_VALUE;
        dataSource.addInvalidatedCallback(new AnonymousClass1(this));
        registerInvalidatedCallback(new AnonymousClass2(this));
    }

    private final int guessPageSize(PagingSource.LoadParams<Key> loadParams) {
        if ((loadParams instanceof PagingSource.LoadParams.Refresh) && loadParams.getLoadSize() % 3 == 0) {
            return loadParams.getLoadSize() / 3;
        }
        return loadParams.getLoadSize();
    }

    @g
    public final DataSource<Key, Value> getDataSource$paging_common() {
        return this.dataSource;
    }

    @Override // androidx.paging.PagingSource
    public boolean getJumpingSupported() {
        return this.dataSource.getType$paging_common() == DataSource.KeyType.POSITIONAL;
    }

    /* JADX WARN: Incorrect condition in loop: B:22:0x005b */
    @Override // androidx.paging.PagingSource
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Key getRefreshKey(@m8.g androidx.paging.PagingState<Key, Value> r6) {
        /*
            r5 = this;
            java.lang.String r0 = "state"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            androidx.paging.DataSource<Key, Value> r0 = r5.dataSource
            androidx.paging.DataSource$KeyType r0 = r0.getType$paging_common()
            int[] r1 = androidx.paging.LegacyPagingSource.WhenMappings.$EnumSwitchMapping$0
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L40
            r1 = 2
            if (r0 == r1) goto La4
            r1 = 3
            if (r0 != r1) goto L3a
            java.lang.Integer r0 = r6.getAnchorPosition()
            if (r0 != 0) goto L25
            goto La4
        L25:
            int r0 = r0.intValue()
            java.lang.Object r6 = r6.closestItemToPosition(r0)
            if (r6 != 0) goto L31
            goto La4
        L31:
            androidx.paging.DataSource r0 = r5.getDataSource$paging_common()
            java.lang.Object r2 = r0.getKeyInternal$paging_common(r6)
            goto La4
        L3a:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        L40:
            java.lang.Integer r0 = r6.getAnchorPosition()
            if (r0 != 0) goto L47
            goto La4
        L47:
            int r0 = r0.intValue()
            int r1 = androidx.paging.PagingState.access$getLeadingPlaceholderCount$p(r6)
            int r1 = r0 - r1
            r2 = 0
            r3 = 0
        L53:
            java.util.List r4 = r6.getPages()
            int r4 = kotlin.collections.CollectionsKt.getLastIndex(r4)
            if (r3 >= r4) goto L87
            java.util.List r4 = r6.getPages()
            java.lang.Object r4 = r4.get(r3)
            androidx.paging.PagingSource$LoadResult$Page r4 = (androidx.paging.PagingSource.LoadResult.Page) r4
            java.util.List r4 = r4.getData()
            int r4 = kotlin.collections.CollectionsKt.getLastIndex(r4)
            if (r1 <= r4) goto L87
            java.util.List r4 = r6.getPages()
            java.lang.Object r4 = r4.get(r3)
            androidx.paging.PagingSource$LoadResult$Page r4 = (androidx.paging.PagingSource.LoadResult.Page) r4
            java.util.List r4 = r4.getData()
            int r4 = r4.size()
            int r1 = r1 - r4
            int r3 = r3 + 1
            goto L53
        L87:
            androidx.paging.PagingSource$LoadResult$Page r6 = r6.closestPageToPosition(r0)
            if (r6 != 0) goto L92
        L8d:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            goto L99
        L92:
            java.lang.Object r6 = r6.getPrevKey()
            if (r6 != 0) goto L99
            goto L8d
        L99:
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            int r6 = r6 + r1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
        La4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.LegacyPagingSource.getRefreshKey(androidx.paging.PagingState):java.lang.Object");
    }

    @Override // androidx.paging.PagingSource
    @h
    public Object load(@g PagingSource.LoadParams<Key> loadParams, @g Continuation<? super PagingSource.LoadResult<Key, Value>> continuation) {
        LoadType loadType;
        if (loadParams instanceof PagingSource.LoadParams.Refresh) {
            loadType = LoadType.REFRESH;
        } else if (loadParams instanceof PagingSource.LoadParams.Append) {
            loadType = LoadType.APPEND;
        } else if (!(loadParams instanceof PagingSource.LoadParams.Prepend)) {
            throw new NoWhenBranchMatchedException();
        } else {
            loadType = LoadType.PREPEND;
        }
        LoadType loadType2 = loadType;
        if (this.pageSize == Integer.MIN_VALUE) {
            System.out.println((Object) "WARNING: pageSize on the LegacyPagingSource is not set.\nWhen using legacy DataSource / DataSourceFactory with Paging3, page size\nshould've been set by the paging library but it is not set yet.\n\nIf you are seeing this message in tests where you are testing DataSource\nin isolation (without a Pager), it is expected and page size will be estimated\nbased on parameters.\n\nIf you are seeing this message despite using a Pager, please file a bug:\nhttps://issuetracker.google.com/issues/new?component=413106");
            this.pageSize = guessPageSize(loadParams);
        }
        return j.h(this.fetchDispatcher, new LegacyPagingSource$load$2(this, new DataSource.Params(loadType2, loadParams.getKey(), loadParams.getLoadSize(), loadParams.getPlaceholdersEnabled(), this.pageSize), loadParams, null), continuation);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setPageSize(int i4) {
        int i10 = this.pageSize;
        if (i10 == Integer.MIN_VALUE || i4 == i10) {
            this.pageSize = i4;
            return;
        }
        throw new IllegalStateException(("Page size is already set to " + this.pageSize + '.').toString());
    }
}
