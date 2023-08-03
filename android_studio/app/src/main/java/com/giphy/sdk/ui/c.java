package com.giphy.sdk.ui;

import androidx.exifinterface.media.ExifInterface;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.util.HashMap;
import kotlin.Metadata;

/* compiled from: GPHCache.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\nJ\b\u0010\f\u001a\u00020\u0006H\u0016R6\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000e8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/giphy/sdk/ui/c;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/giphy/sdk/ui/e;", "key", "value", "", "set", "(Ljava/lang/Object;Ljava/lang/Object;)V", "remove", "(Ljava/lang/Object;)Ljava/lang/Object;", "get", "clear", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "a", "Ljava/util/HashMap;", "()Ljava/util/HashMap;", ResponseCacheMiddleware.f44810o, "", "getSize", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class c<K, V> implements e<K, V> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<K, V> f17028a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final HashMap<K, V> a() {
        return this.f17028a;
    }

    @Override // com.giphy.sdk.ui.e
    public void clear() {
        this.f17028a.clear();
    }

    @Override // com.giphy.sdk.ui.e
    @m8.h
    public V get(K k10) {
        return this.f17028a.get(k10);
    }

    @Override // com.giphy.sdk.ui.e
    public int getSize() {
        return this.f17028a.size();
    }

    @Override // com.giphy.sdk.ui.e
    @m8.h
    public V remove(K k10) {
        return this.f17028a.remove(k10);
    }

    @Override // com.giphy.sdk.ui.e
    public void set(K k10, V v9) {
        this.f17028a.put(k10, v9);
    }
}
