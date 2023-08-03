package com.giphy.sdk.tracking;

import java.util.HashMap;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PingbacksDeduplicator.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0007RF\u0010\u000e\u001a4\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\n0\tj\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00020\nj\b\u0012\u0004\u0012\u00020\u0002`\f`\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/tracking/g;", "", "", "mediaId", "responseId", "", "b", "", "a", "Ljava/util/HashMap;", "Ljava/util/HashSet;", "Lkotlin/collections/HashMap;", "Lkotlin/collections/HashSet;", "Ljava/util/HashMap;", "tracked", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, HashSet<String>> f17015a = new HashMap<>();

    public final void a() {
        this.f17015a.clear();
    }

    public final boolean b(@m8.g String mediaId, @m8.g String responseId) {
        HashSet<String> hashSetOf;
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        Intrinsics.checkNotNullParameter(responseId, "responseId");
        HashSet<String> hashSet = this.f17015a.get(responseId);
        if (hashSet != null) {
            if (hashSet.contains(mediaId)) {
                return false;
            }
            hashSet.add(mediaId);
            return true;
        }
        HashMap<String, HashSet<String>> hashMap = this.f17015a;
        hashSetOf = SetsKt__SetsKt.hashSetOf(mediaId);
        hashMap.put(responseId, hashSetOf);
        return true;
    }
}
