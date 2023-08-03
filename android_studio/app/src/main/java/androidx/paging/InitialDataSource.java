package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PageKeyedDataSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: InitialDataSource.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B\u0005¢\u0006\u0002\u0010\u0005J*\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bH\u0016J*\u0010\f\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bH\u0016J*\u0010\r\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000fH\u0016¨\u0006\u0010"}, d2 = {"Landroidx/paging/InitialDataSource;", "K", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/paging/PageKeyedDataSource;", "()V", "loadAfter", "", "params", "Landroidx/paging/PageKeyedDataSource$LoadParams;", com.alipay.sdk.authjs.a.f6838i, "Landroidx/paging/PageKeyedDataSource$LoadCallback;", "loadBefore", "loadInitial", "Landroidx/paging/PageKeyedDataSource$LoadInitialParams;", "Landroidx/paging/PageKeyedDataSource$LoadInitialCallback;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InitialDataSource<K, V> extends PageKeyedDataSource<K, V> {
    @Override // androidx.paging.PageKeyedDataSource
    public void loadAfter(@g PageKeyedDataSource.LoadParams<K> params, @g PageKeyedDataSource.LoadCallback<K, V> callback) {
        List<? extends V> emptyList;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        callback.onResult(emptyList, null);
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadBefore(@g PageKeyedDataSource.LoadParams<K> params, @g PageKeyedDataSource.LoadCallback<K, V> callback) {
        List<? extends V> emptyList;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        callback.onResult(emptyList, null);
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadInitial(@g PageKeyedDataSource.LoadInitialParams<K> params, @g PageKeyedDataSource.LoadInitialCallback<K, V> callback) {
        List<? extends V> emptyList;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        callback.onResult(emptyList, 0, 0, null, null);
    }
}
