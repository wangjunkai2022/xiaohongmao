package com.giphy.sdk.ui;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: GPHCache.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u0011\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\f\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\f\u0010\u000bJ\b\u0010\r\u001a\u00020\u0004H\u0016R0\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f`\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/giphy/sdk/ui/d;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/giphy/sdk/ui/c;", "", "b", "key", "value", "set", "(Ljava/lang/Object;Ljava/lang/Object;)V", "remove", "(Ljava/lang/Object;)Ljava/lang/Object;", "get", "clear", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "keyMap", "c", "J", "flushInterval", "", "getSize", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "(J)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class d<K, V> extends c<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<K, Long> f17029b;

    /* renamed from: c  reason: collision with root package name */
    private final long f17030c;

    public d() {
        this(0L, 1, null);
    }

    public /* synthetic */ d(long j4, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? TimeUnit.MINUTES.toMillis(1L) : j4);
    }

    private final void b() {
        HashMap<K, Long> hashMap = this.f17029b;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, Long> entry : hashMap.entrySet()) {
            if (System.nanoTime() - entry.getValue().longValue() > TimeUnit.MILLISECONDS.toNanos(this.f17030c)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<K, V> entry2 : linkedHashMap.entrySet()) {
            a().remove(entry2.getKey());
            this.f17029b.remove(entry2.getKey());
        }
    }

    @Override // com.giphy.sdk.ui.c, com.giphy.sdk.ui.e
    public void clear() {
        this.f17029b.clear();
        a().clear();
    }

    @Override // com.giphy.sdk.ui.c, com.giphy.sdk.ui.e
    @m8.h
    public V get(K k10) {
        b();
        return a().get(k10);
    }

    @Override // com.giphy.sdk.ui.c, com.giphy.sdk.ui.e
    public int getSize() {
        return a().size();
    }

    @Override // com.giphy.sdk.ui.c, com.giphy.sdk.ui.e
    @m8.h
    public V remove(K k10) {
        b();
        return a().remove(k10);
    }

    @Override // com.giphy.sdk.ui.c, com.giphy.sdk.ui.e
    public void set(K k10, V v9) {
        b();
        this.f17029b.put(k10, Long.valueOf(System.nanoTime()));
        a().put(k10, v9);
    }

    public d(long j4) {
        this.f17030c = j4;
        this.f17029b = new HashMap<>();
    }
}
