package androidx.paging;

import androidx.arch.core.util.Function;
import androidx.paging.DataSource;
import com.googlecode.mp4parser.boxes.apple.x0;
import io.sentry.protocol.v;
import java.util.IdentityHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WrapperDataSource.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u0002*\b\b\u0002\u0010\u0004*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0005B9\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0017\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u0002H\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0011H\u0016J'\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0090@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\"\u0010 \u001a\u00020\u00112\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00020\tR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Landroidx/paging/WrapperDataSource;", "Key", "", "ValueFrom", "ValueTo", "Landroidx/paging/DataSource;", v.b.f83881a, "listFunction", "Landroidx/arch/core/util/Function;", "", "(Landroidx/paging/DataSource;Landroidx/arch/core/util/Function;)V", "isInvalid", "", "()Z", "keyMap", "Ljava/util/IdentityHashMap;", "addInvalidatedCallback", "", "onInvalidatedCallback", "Landroidx/paging/DataSource$InvalidatedCallback;", "getKeyInternal", "item", "getKeyInternal$paging_common", "(Ljava/lang/Object;)Ljava/lang/Object;", "invalidate", x0.f36550r, "Landroidx/paging/DataSource$BaseResult;", "params", "Landroidx/paging/DataSource$Params;", "load$paging_common", "(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeInvalidatedCallback", "stashKeysIfNeeded", "dest", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class WrapperDataSource<Key, ValueFrom, ValueTo> extends DataSource<Key, ValueTo> {
    @h
    private final IdentityHashMap<ValueTo, Key> keyMap;
    @g
    private final Function<List<ValueFrom>, List<ValueTo>> listFunction;
    @g
    private final DataSource<Key, ValueFrom> source;

    /* compiled from: WrapperDataSource.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.KeyType.values().length];
            iArr[DataSource.KeyType.ITEM_KEYED.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapperDataSource(@g DataSource<Key, ValueFrom> source, @g Function<List<ValueFrom>, List<ValueTo>> listFunction) {
        super(source.getType$paging_common());
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(listFunction, "listFunction");
        this.source = source;
        this.listFunction = listFunction;
        this.keyMap = WhenMappings.$EnumSwitchMapping$0[source.getType$paging_common().ordinal()] == 1 ? new IdentityHashMap<>() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object load$suspendImpl(androidx.paging.WrapperDataSource r4, androidx.paging.DataSource.Params r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof androidx.paging.WrapperDataSource$load$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.WrapperDataSource$load$1 r0 = (androidx.paging.WrapperDataSource$load$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.WrapperDataSource$load$1 r0 = new androidx.paging.WrapperDataSource$load$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            androidx.paging.WrapperDataSource r4 = (androidx.paging.WrapperDataSource) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.paging.DataSource<Key, ValueFrom> r6 = r4.source
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r6.load$paging_common(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            androidx.paging.DataSource$BaseResult r6 = (androidx.paging.DataSource.BaseResult) r6
            androidx.paging.DataSource$BaseResult$Companion r5 = androidx.paging.DataSource.BaseResult.Companion
            androidx.arch.core.util.Function<java.util.List<ValueFrom>, java.util.List<ValueTo>> r0 = r4.listFunction
            androidx.paging.DataSource$BaseResult r5 = r5.convert$paging_common(r6, r0)
            java.util.List<Value> r6 = r6.data
            java.util.List<Value> r0 = r5.data
            r4.stashKeysIfNeeded(r6, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.WrapperDataSource.load$suspendImpl(androidx.paging.WrapperDataSource, androidx.paging.DataSource$Params, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.addInvalidatedCallback(onInvalidatedCallback);
    }

    @Override // androidx.paging.DataSource
    @g
    public Key getKeyInternal$paging_common(@g ValueTo item) {
        Key key;
        Intrinsics.checkNotNullParameter(item, "item");
        IdentityHashMap<ValueTo, Key> identityHashMap = this.keyMap;
        if (identityHashMap != null) {
            synchronized (identityHashMap) {
                key = this.keyMap.get(item);
                Intrinsics.checkNotNull(key);
                Intrinsics.checkNotNullExpressionValue(key, "keyMap[item]!!");
            }
            return key;
        }
        throw new IllegalStateException("Cannot get key by item in non-item keyed DataSource");
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.DataSource
    @h
    public Object load$paging_common(@g DataSource.Params<Key> params, @g Continuation<? super DataSource.BaseResult<ValueTo>> continuation) {
        return load$suspendImpl(this, params, continuation);
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.removeInvalidatedCallback(onInvalidatedCallback);
    }

    public final void stashKeysIfNeeded(@g List<? extends ValueFrom> source, @g List<? extends ValueTo> dest) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(dest, "dest");
        IdentityHashMap<ValueTo, Key> identityHashMap = this.keyMap;
        if (identityHashMap != null) {
            synchronized (identityHashMap) {
                int i4 = 0;
                int size = dest.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i10 = i4 + 1;
                        ((IdentityHashMap<ValueTo, Key>) this.keyMap).put(dest.get(i4), ((ItemKeyedDataSource) this.source).getKey(source.get(i4)));
                        if (i10 > size) {
                            break;
                        }
                        i4 = i10;
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
