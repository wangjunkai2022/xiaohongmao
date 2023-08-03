package com.giphy.sdk.tracking;

import android.view.View;
import com.giphy.sdk.core.models.Media;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FullyVisibleOnceListener.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BT\u0012K\u0010\u001a\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\nH\u0016R'\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000f8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\\\u0010\u001a\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u00148\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/giphy/sdk/tracking/b;", "Lcom/giphy/sdk/tracking/e;", "", "position", "Lcom/giphy/sdk/core/models/Media;", "media", "Landroid/view/View;", "view", "", "visiblePercent", "", "a", "reset", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "Ljava/util/HashSet;", "c", "()Ljava/util/HashSet;", "viewed", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "b", "Lkotlin/jvm/functions/Function3;", "()Lkotlin/jvm/functions/Function3;", "onFullyViewedOnce", "<init>", "(Lkotlin/jvm/functions/Function3;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b implements e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<String> f16990a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function3<Integer, Media, View, Unit> f16991b;

    /* JADX WARN: Multi-variable type inference failed */
    public b(@m8.g Function3<? super Integer, ? super Media, ? super View, Unit> onFullyViewedOnce) {
        Intrinsics.checkNotNullParameter(onFullyViewedOnce, "onFullyViewedOnce");
        this.f16991b = onFullyViewedOnce;
        this.f16990a = new HashSet<>();
    }

    @Override // com.giphy.sdk.tracking.e
    public void a(int i4, @m8.g Media media, @m8.g View view, float f10) {
        Intrinsics.checkNotNullParameter(media, "media");
        Intrinsics.checkNotNullParameter(view, "view");
        if (f10 != 1.0f || this.f16990a.contains(media.getId())) {
            return;
        }
        this.f16990a.add(media.getId());
        this.f16991b.invoke(Integer.valueOf(i4), media, view);
    }

    @m8.g
    public final Function3<Integer, Media, View, Unit> b() {
        return this.f16991b;
    }

    @m8.g
    public final HashSet<String> c() {
        return this.f16990a;
    }

    @Override // com.giphy.sdk.tracking.e
    public void reset() {
        this.f16990a.clear();
    }
}
