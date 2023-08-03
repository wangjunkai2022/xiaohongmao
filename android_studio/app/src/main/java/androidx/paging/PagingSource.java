package androidx.paging;

import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import com.google.common.net.b;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PagingSource.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0002\"#B\u0005¢\u0006\u0002\u0010\u0004J#\u0010\u0015\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0017H&¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0010J+\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH¦@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ\u0014\u0010\u001f\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u0014\u0010!\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00100\u000fR\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0014\u0010\u0013\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Landroidx/paging/PagingSource;", "Key", "", "Value", "()V", "invalid", "", "getInvalid", "()Z", "invalidateCallbackCount", "", "getInvalidateCallbackCount$paging_common", "()I", "invalidateCallbackTracker", "Landroidx/paging/InvalidateCallbackTracker;", "Lkotlin/Function0;", "", "jumpingSupported", "getJumpingSupported", "keyReuseSupported", "getKeyReuseSupported", "getRefreshKey", t.b.f83859d, "Landroidx/paging/PagingState;", "(Landroidx/paging/PagingState;)Ljava/lang/Object;", "invalidate", x0.f36550r, "Landroidx/paging/PagingSource$LoadResult;", "params", "Landroidx/paging/PagingSource$LoadParams;", "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerInvalidatedCallback", "onInvalidatedCallback", "unregisterInvalidatedCallback", "LoadParams", "LoadResult", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class PagingSource<Key, Value> {
    @g
    private final InvalidateCallbackTracker<Function0<Unit>> invalidateCallbackTracker = new InvalidateCallbackTracker<>(PagingSource$invalidateCallbackTracker$1.INSTANCE, null, 2, null);

    /* compiled from: PagingSource.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u0010*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002:\u0004\u000f\u0010\u0011\u0012B\u0017\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0014\u0010\b\u001a\u0004\u0018\u00018\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0003\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Landroidx/paging/PagingSource$LoadParams;", "Key", "", "loadSize", "", "placeholdersEnabled", "", "(IZ)V", "key", "getKey", "()Ljava/lang/Object;", "getLoadSize", "()I", "getPlaceholdersEnabled", "()Z", "Append", "Companion", "Prepend", b.f34644q0, "Landroidx/paging/PagingSource$LoadParams$Refresh;", "Landroidx/paging/PagingSource$LoadParams$Append;", "Landroidx/paging/PagingSource$LoadParams$Prepend;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadParams<Key> {
        @g
        public static final Companion Companion = new Companion(null);
        private final int loadSize;
        private final boolean placeholdersEnabled;

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000*\b\b\u0003\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00028\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u00028\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Append;", "Key", "", "Landroidx/paging/PagingSource$LoadParams;", "key", "loadSize", "", "placeholdersEnabled", "", "(Ljava/lang/Object;IZ)V", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Append<Key> extends LoadParams<Key> {
            @g
            private final Key key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Append(@g Key key, int i4, boolean z9) {
                super(i4, z9, null);
                Intrinsics.checkNotNullParameter(key, "key");
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            @g
            public Key getKey() {
                return this.key;
            }
        }

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\b\b\u0003\u0010\u0005*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u0001H\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Companion;", "", "()V", "create", "Landroidx/paging/PagingSource$LoadParams;", "Key", "loadType", "Landroidx/paging/LoadType;", "key", "loadSize", "", "placeholdersEnabled", "", "(Landroidx/paging/LoadType;Ljava/lang/Object;IZ)Landroidx/paging/PagingSource$LoadParams;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {

            /* compiled from: PagingSource.kt */
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

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final <Key> LoadParams<Key> create(@g LoadType loadType, @h Key key, int i4, boolean z9) {
                Intrinsics.checkNotNullParameter(loadType, "loadType");
                int i10 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        if (key != null) {
                            return new Prepend(key, i4, z9);
                        }
                        throw new IllegalArgumentException("key cannot be null for prepend".toString());
                    } else if (i10 == 3) {
                        if (key != null) {
                            return new Append(key, i4, z9);
                        }
                        throw new IllegalArgumentException("key cannot be null for append".toString());
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                return new Refresh(key, i4, z9);
            }
        }

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000*\b\b\u0003\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00028\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u00028\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Prepend;", "Key", "", "Landroidx/paging/PagingSource$LoadParams;", "key", "loadSize", "", "placeholdersEnabled", "", "(Ljava/lang/Object;IZ)V", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Prepend<Key> extends LoadParams<Key> {
            @g
            private final Key key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Prepend(@g Key key, int i4, boolean z9) {
                super(i4, z9, null);
                Intrinsics.checkNotNullParameter(key, "key");
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            @g
            public Key getKey() {
                return this.key;
            }
        }

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000*\b\b\u0003\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00018\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00018\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Refresh;", "Key", "", "Landroidx/paging/PagingSource$LoadParams;", "key", "loadSize", "", "placeholdersEnabled", "", "(Ljava/lang/Object;IZ)V", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Refresh<Key> extends LoadParams<Key> {
            @h
            private final Key key;

            public Refresh(@h Key key, int i4, boolean z9) {
                super(i4, z9, null);
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            @h
            public Key getKey() {
                return this.key;
            }
        }

        private LoadParams(int i4, boolean z9) {
            this.loadSize = i4;
            this.placeholdersEnabled = z9;
        }

        public /* synthetic */ LoadParams(int i4, boolean z9, DefaultConstructorMarker defaultConstructorMarker) {
            this(i4, z9);
        }

        @h
        public abstract Key getKey();

        public final int getLoadSize() {
            return this.loadSize;
        }

        public final boolean getPlaceholdersEnabled() {
            return this.placeholdersEnabled;
        }
    }

    /* compiled from: PagingSource.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u0002*\b\b\u0003\u0010\u0003*\u00020\u00022\u00020\u0002:\u0003\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0004\u0082\u0001\u0003\b\t\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingSource$LoadResult;", "Key", "", "Value", "()V", "Error", "Invalid", "Page", "Landroidx/paging/PagingSource$LoadResult$Error;", "Landroidx/paging/PagingSource$LoadResult$Invalid;", "Landroidx/paging/PagingSource$LoadResult$Page;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class LoadResult<Key, Value> {

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\b\b\u0004\u0010\u0001*\u00020\u0002*\b\b\u0005\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u0006HÆ\u0003J\u001f\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Error;", "Key", "", "Value", "Landroidx/paging/PagingSource$LoadResult;", "throwable", "", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Error<Key, Value> extends LoadResult<Key, Value> {
            @g
            private final Throwable throwable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(@g Throwable throwable) {
                super(null);
                Intrinsics.checkNotNullParameter(throwable, "throwable");
                this.throwable = throwable;
            }

            public static /* synthetic */ Error copy$default(Error error, Throwable th, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    th = error.throwable;
                }
                return error.copy(th);
            }

            @g
            public final Throwable component1() {
                return this.throwable;
            }

            @g
            public final Error<Key, Value> copy(@g Throwable throwable) {
                Intrinsics.checkNotNullParameter(throwable, "throwable");
                return new Error<>(throwable);
            }

            public boolean equals(@h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.throwable, ((Error) obj).throwable);
            }

            @g
            public final Throwable getThrowable() {
                return this.throwable;
            }

            public int hashCode() {
                return this.throwable.hashCode();
            }

            @g
            public String toString() {
                return "Error(throwable=" + this.throwable + ')';
            }
        }

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0004\u0010\u0001*\u00020\u0002*\b\b\u0005\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B\u0005¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Invalid;", "Key", "", "Value", "Landroidx/paging/PagingSource$LoadResult;", "()V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Invalid<Key, Value> extends LoadResult<Key, Value> {
            public Invalid() {
                super(null);
            }
        }

        /* compiled from: PagingSource.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 $*\b\b\u0004\u0010\u0001*\u00020\u0002*\b\b\u0005\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004:\u0001$B)\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0004¢\u0006\u0002\u0010\tB;\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0004\u0012\b\b\u0003\u0010\n\u001a\u00020\u000b\u0012\b\b\u0003\u0010\f\u001a\u00020\u000b¢\u0006\u0002\u0010\rJ\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00018\u0004HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0019\u001a\u0004\u0018\u00018\u0004HÆ\u0003¢\u0006\u0002\u0010\u0014J\t\u0010\u001a\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001b\u001a\u00020\u000bHÆ\u0003JV\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00050\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00018\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u00042\b\b\u0003\u0010\n\u001a\u00020\u000b2\b\b\u0003\u0010\f\u001a\u00020\u000bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010!\u001a\u00020\u000bHÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00018\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\u0007\u001a\u0004\u0018\u00018\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0014¨\u0006%"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Page;", "Key", "", "Value", "Landroidx/paging/PagingSource$LoadResult;", "data", "", "prevKey", "nextKey", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V", "itemsBefore", "", "itemsAfter", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V", "getData", "()Ljava/util/List;", "getItemsAfter", "()I", "getItemsBefore", "getNextKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getPrevKey", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)Landroidx/paging/PagingSource$LoadResult$Page;", "equals", "", "other", "hashCode", "toString", "", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Page<Key, Value> extends LoadResult<Key, Value> {
            public static final int COUNT_UNDEFINED = Integer.MIN_VALUE;
            @g
            public static final Companion Companion = new Companion(null);
            @g
            private static final Page EMPTY;
            @g
            private final List<Value> data;
            private final int itemsAfter;
            private final int itemsBefore;
            @h
            private final Key nextKey;
            @h
            private final Key prevKey;

            /* compiled from: PagingSource.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r0\u0006\"\b\b\u0006\u0010\f*\u00020\u0001\"\b\b\u0007\u0010\r*\u00020\u0001H\u0000¢\u0006\u0002\b\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006X\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Page$Companion;", "", "()V", "COUNT_UNDEFINED", "", "EMPTY", "Landroidx/paging/PagingSource$LoadResult$Page;", "", "getEMPTY$paging_common$annotations", "getEMPTY$paging_common", "()Landroidx/paging/PagingSource$LoadResult$Page;", "empty", "Key", "Value", "empty$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
            /* loaded from: classes.dex */
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public static /* synthetic */ void getEMPTY$paging_common$annotations() {
                }

                @g
                public final <Key, Value> Page<Key, Value> empty$paging_common() {
                    return getEMPTY$paging_common();
                }

                @g
                public final Page getEMPTY$paging_common() {
                    return Page.EMPTY;
                }
            }

            static {
                List emptyList;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                EMPTY = new Page(emptyList, null, null, 0, 0);
            }

            public /* synthetic */ Page(List list, Object obj, Object obj2, int i4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
                this(list, obj, obj2, (i11 & 8) != 0 ? Integer.MIN_VALUE : i4, (i11 & 16) != 0 ? Integer.MIN_VALUE : i10);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Page copy$default(Page page, List list, Object obj, Object obj2, int i4, int i10, int i11, Object obj3) {
                List<Value> list2 = list;
                if ((i11 & 1) != 0) {
                    list2 = page.data;
                }
                Key key = obj;
                if ((i11 & 2) != 0) {
                    key = page.prevKey;
                }
                Key key2 = key;
                Key key3 = obj2;
                if ((i11 & 4) != 0) {
                    key3 = page.nextKey;
                }
                Key key4 = key3;
                if ((i11 & 8) != 0) {
                    i4 = page.itemsBefore;
                }
                int i12 = i4;
                if ((i11 & 16) != 0) {
                    i10 = page.itemsAfter;
                }
                return page.copy(list2, key2, key4, i12, i10);
            }

            @g
            public final List<Value> component1() {
                return this.data;
            }

            @h
            public final Key component2() {
                return this.prevKey;
            }

            @h
            public final Key component3() {
                return this.nextKey;
            }

            public final int component4() {
                return this.itemsBefore;
            }

            public final int component5() {
                return this.itemsAfter;
            }

            @g
            public final Page<Key, Value> copy(@g List<? extends Value> data, @h Key key, @h Key key2, @IntRange(from = -2147483648L) int i4, @IntRange(from = -2147483648L) int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                return new Page<>(data, key, key2, i4, i10);
            }

            public boolean equals(@h Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Page) {
                    Page page = (Page) obj;
                    return Intrinsics.areEqual(this.data, page.data) && Intrinsics.areEqual(this.prevKey, page.prevKey) && Intrinsics.areEqual(this.nextKey, page.nextKey) && this.itemsBefore == page.itemsBefore && this.itemsAfter == page.itemsAfter;
                }
                return false;
            }

            @g
            public final List<Value> getData() {
                return this.data;
            }

            public final int getItemsAfter() {
                return this.itemsAfter;
            }

            public final int getItemsBefore() {
                return this.itemsBefore;
            }

            @h
            public final Key getNextKey() {
                return this.nextKey;
            }

            @h
            public final Key getPrevKey() {
                return this.prevKey;
            }

            public int hashCode() {
                int hashCode = this.data.hashCode() * 31;
                Key key = this.prevKey;
                int hashCode2 = (hashCode + (key == null ? 0 : key.hashCode())) * 31;
                Key key2 = this.nextKey;
                return ((((hashCode2 + (key2 != null ? key2.hashCode() : 0)) * 31) + this.itemsBefore) * 31) + this.itemsAfter;
            }

            @g
            public String toString() {
                return "Page(data=" + this.data + ", prevKey=" + this.prevKey + ", nextKey=" + this.nextKey + ", itemsBefore=" + this.itemsBefore + ", itemsAfter=" + this.itemsAfter + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Page(@g List<? extends Value> data, @h Key key, @h Key key2, @IntRange(from = -2147483648L) int i4, @IntRange(from = -2147483648L) int i10) {
                super(null);
                Intrinsics.checkNotNullParameter(data, "data");
                this.data = data;
                this.prevKey = key;
                this.nextKey = key2;
                this.itemsBefore = i4;
                this.itemsAfter = i10;
                boolean z9 = false;
                if (!(i4 == Integer.MIN_VALUE || i4 >= 0)) {
                    throw new IllegalArgumentException("itemsBefore cannot be negative".toString());
                }
                if (!((i10 == Integer.MIN_VALUE || i10 >= 0) ? true : true)) {
                    throw new IllegalArgumentException("itemsAfter cannot be negative".toString());
                }
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Page(@g List<? extends Value> data, @h Key key, @h Key key2) {
                this(data, key, key2, Integer.MIN_VALUE, Integer.MIN_VALUE);
                Intrinsics.checkNotNullParameter(data, "data");
            }
        }

        private LoadResult() {
        }

        public /* synthetic */ LoadResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final boolean getInvalid() {
        return this.invalidateCallbackTracker.getInvalid$paging_common();
    }

    @VisibleForTesting
    public final int getInvalidateCallbackCount$paging_common() {
        return this.invalidateCallbackTracker.callbackCount$paging_common();
    }

    public boolean getJumpingSupported() {
        return false;
    }

    public boolean getKeyReuseSupported() {
        return false;
    }

    @h
    public abstract Key getRefreshKey(@g PagingState<Key, Value> pagingState);

    public final void invalidate() {
        this.invalidateCallbackTracker.invalidate$paging_common();
    }

    @h
    public abstract Object load(@g LoadParams<Key> loadParams, @g Continuation<? super LoadResult<Key, Value>> continuation);

    public final void registerInvalidatedCallback(@g Function0<Unit> onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.invalidateCallbackTracker.registerInvalidatedCallback$paging_common(onInvalidatedCallback);
    }

    public final void unregisterInvalidatedCallback(@g Function0<Unit> onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.invalidateCallbackTracker.unregisterInvalidatedCallback$paging_common(onInvalidatedCallback);
    }
}
