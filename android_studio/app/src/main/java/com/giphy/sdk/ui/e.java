package com.giphy.sdk.ui;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: GPHCache.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\b`\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0001H¦\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\t\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0004\u001a\u00028\u0000H¦\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u000b\u0010\nJ\b\u0010\f\u001a\u00020\u0006H&R\u0014\u0010\u0010\u001a\u00020\r8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/ui/e;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "key", "value", "", "set", "(Ljava/lang/Object;Ljava/lang/Object;)V", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "remove", "clear", "", "getSize", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface e<K, V> {
    void clear();

    @m8.h
    V get(K k10);

    int getSize();

    @m8.h
    V remove(K k10);

    void set(K k10, V v9);
}
