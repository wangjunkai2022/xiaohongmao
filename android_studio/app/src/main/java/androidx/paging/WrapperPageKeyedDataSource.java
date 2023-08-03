package androidx.paging;

import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.DataSource;
import androidx.paging.PageKeyedDataSource;
import io.sentry.protocol.v;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WrapperPageKeyedDataSource.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u0002*\b\b\u0002\u0010\u0004*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0005B9\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J*\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0017H\u0016J*\u0010\u0018\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0017H\u0016J*\u0010\u0019\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR&\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/paging/WrapperPageKeyedDataSource;", "K", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "Landroidx/paging/PageKeyedDataSource;", v.b.f83881a, "listFunction", "Landroidx/arch/core/util/Function;", "", "(Landroidx/paging/PageKeyedDataSource;Landroidx/arch/core/util/Function;)V", "isInvalid", "", "()Z", "addInvalidatedCallback", "", "onInvalidatedCallback", "Landroidx/paging/DataSource$InvalidatedCallback;", "invalidate", "loadAfter", "params", "Landroidx/paging/PageKeyedDataSource$LoadParams;", com.alipay.sdk.authjs.a.f6838i, "Landroidx/paging/PageKeyedDataSource$LoadCallback;", "loadBefore", "loadInitial", "Landroidx/paging/PageKeyedDataSource$LoadInitialParams;", "Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;", "removeInvalidatedCallback", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class WrapperPageKeyedDataSource<K, A, B> extends PageKeyedDataSource<K, B> {
    @g
    private final Function<List<A>, List<B>> listFunction;
    @g
    private final PageKeyedDataSource<K, A> source;

    public WrapperPageKeyedDataSource(@g PageKeyedDataSource<K, A> source, @g Function<List<A>, List<B>> listFunction) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(listFunction, "listFunction");
        this.source = source;
        this.listFunction = listFunction;
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.addInvalidatedCallback(onInvalidatedCallback);
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadAfter(@g PageKeyedDataSource.LoadParams<K> params, @g final PageKeyedDataSource.LoadCallback<K, B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadAfter(params, new PageKeyedDataSource.LoadCallback<K, A>() { // from class: androidx.paging.WrapperPageKeyedDataSource$loadAfter$1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends A> data, @h K k10) {
                Function function;
                Intrinsics.checkNotNullParameter(data, "data");
                PageKeyedDataSource.LoadCallback<K, B> loadCallback = callback;
                DataSource.Companion companion = DataSource.Companion;
                function = ((WrapperPageKeyedDataSource) this).listFunction;
                loadCallback.onResult(companion.convert$paging_common(function, data), k10);
            }
        });
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadBefore(@g PageKeyedDataSource.LoadParams<K> params, @g final PageKeyedDataSource.LoadCallback<K, B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadBefore(params, new PageKeyedDataSource.LoadCallback<K, A>() { // from class: androidx.paging.WrapperPageKeyedDataSource$loadBefore$1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(@g List<? extends A> data, @h K k10) {
                Function function;
                Intrinsics.checkNotNullParameter(data, "data");
                PageKeyedDataSource.LoadCallback<K, B> loadCallback = callback;
                DataSource.Companion companion = DataSource.Companion;
                function = ((WrapperPageKeyedDataSource) this).listFunction;
                loadCallback.onResult(companion.convert$paging_common(function, data), k10);
            }
        });
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadInitial(@g PageKeyedDataSource.LoadInitialParams<K> params, @g final PageKeyedDataSource.LoadInitialCallback<K, B> callback) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.source.loadInitial(params, new PageKeyedDataSource.LoadInitialCallback<K, A>(this) { // from class: androidx.paging.WrapperPageKeyedDataSource$loadInitial$1
            final /* synthetic */ WrapperPageKeyedDataSource<K, A, B> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends A> data, int i4, int i10, @h K k10, @h K k11) {
                Function function;
                Intrinsics.checkNotNullParameter(data, "data");
                DataSource.Companion companion = DataSource.Companion;
                function = ((WrapperPageKeyedDataSource) this.this$0).listFunction;
                callback.onResult(companion.convert$paging_common(function, data), i4, i10, k10, k11);
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(@g List<? extends A> data, @h K k10, @h K k11) {
                Function function;
                Intrinsics.checkNotNullParameter(data, "data");
                DataSource.Companion companion = DataSource.Companion;
                function = ((WrapperPageKeyedDataSource) this.this$0).listFunction;
                callback.onResult(companion.convert$paging_common(function, data), k10, k11);
            }
        });
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(@g DataSource.InvalidatedCallback onInvalidatedCallback) {
        Intrinsics.checkNotNullParameter(onInvalidatedCallback, "onInvalidatedCallback");
        this.source.removeInvalidatedCallback(onInvalidatedCallback);
    }
}
