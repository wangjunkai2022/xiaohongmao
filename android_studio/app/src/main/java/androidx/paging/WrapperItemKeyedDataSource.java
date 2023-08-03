package androidx.paging;

import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.DataSource;
import androidx.paging.ItemKeyedDataSource;
import io.sentry.protocol.v;
import java.util.IdentityHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: WrapperItemKeyedDataSource.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u0002*\b\b\u0002\u0010\u0004*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0005B9\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00020\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\tJ\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0011H\u0016J$\u0010\u0019\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00020\u001dH\u0016J$\u0010\u001e\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00020\u001dH\u0016J$\u0010\u001f\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000 2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/paging/WrapperItemKeyedDataSource;", "K", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "Landroidx/paging/ItemKeyedDataSource;", v.b.f83881a, "listFunction", "Landroidx/arch/core/util/Function;", "", "(Landroidx/paging/ItemKeyedDataSource;Landroidx/arch/core/util/Function;)V", "isInvalid", "", "()Z", "keyMap", "Ljava/util/IdentityHashMap;", "addInvalidatedCallback", "", "onInvalidatedCallback", "Landroidx/paging/DataSource$InvalidatedCallback;", "convertWithStashedKeys", "getKey", "item", "(Ljava/lang/Object;)Ljava/lang/Object;", "invalidate", "loadAfter", "params", "Landroidx/paging/ItemKeyedDataSource$LoadParams;", com.alipay.sdk.authjs.a.f6838i, "Landroidx/paging/ItemKeyedDataSource$LoadCallback;", "loadBefore", "loadInitial", "Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;", "Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;", "removeInvalidatedCallback", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class WrapperItemKeyedDataSource<K, A, B> extends ItemKeyedDataSource<K, B> {
    @g
    private final IdentityHashMap<B, K> keyMap;
    @g
    private final Function<List<A>, List<B>> listFunction;
    @g
    private final ItemKeyedDataSource<K, A> source;

    public WrapperItemKeyedDataSource(@g ItemKeyedDataSource<K, A> source, @g Function<List<A>, List<B>> listFunction) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(listFunction, "listFunction");
        this.source = source;
        this.listFunction = listFunction;
        this.keyMap = new IdentityHashMap<>();
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.addInvalidatedCallback(onInvalidatedCallback);
    }

    @g
    public final List<B> convertWithStashedKeys(@g List<? extends A> source) {
        Intrinsics.checkNotNullParameter(source, "source");
        List<B> convert$paging_common = DataSource.Companion.convert$paging_common(this.listFunction, source);
        synchronized (this.keyMap) {
            int i4 = 0;
            int size = convert$paging_common.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i10 = i4 + 1;
                    this.keyMap.put(convert$paging_common.get(i4), this.source.getKey(source.get(i4)));
                    if (i10 > size) {
                        break;
                    }
                    i4 = i10;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
        return convert$paging_common;
    }

    @Override // androidx.paging.ItemKeyedDataSource
    @g
    public K getKey(@g B item) {
        K k10;
        Intrinsics.checkNotNullParameter(item, "item");
        synchronized (this.keyMap) {
            k10 = this.keyMap.get(item);
            Intrinsics.checkNotNull(k10);
            Intrinsics.checkNotNullExpressionValue(k10, "keyMap[item]!!");
        }
        return k10;
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadAfter(@g ItemKeyedDataSource.LoadParams<K> params, @g final ItemKeyedDataSource.LoadCallback<B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadAfter(params, new ItemKeyedDataSource.LoadCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource$loadAfter$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends A> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                callback.onResult(this.convertWithStashedKeys(data));
            }
        });
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadBefore(@g ItemKeyedDataSource.LoadParams<K> params, @g final ItemKeyedDataSource.LoadCallback<B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadBefore(params, new ItemKeyedDataSource.LoadCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource$loadBefore$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends A> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                callback.onResult(this.convertWithStashedKeys(data));
            }
        });
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadInitial(@g ItemKeyedDataSource.LoadInitialParams<K> params, @g final ItemKeyedDataSource.LoadInitialCallback<B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadInitial(params, new ItemKeyedDataSource.LoadInitialCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource$loadInitial$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends A> data, int i4, int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                callback.onResult(this.convertWithStashedKeys(data), i4, i10);
            }

            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends A> data) {
                Intrinsics.checkNotNullParameter(data, "data");
                callback.onResult(this.convertWithStashedKeys(data));
            }
        });
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.removeInvalidatedCallback(onInvalidatedCallback);
    }
}
