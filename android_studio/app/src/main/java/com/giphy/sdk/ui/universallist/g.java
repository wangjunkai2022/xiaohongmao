package com.giphy.sdk.ui.universallist;

import com.giphy.sdk.core.models.Media;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SmartItemData.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\f\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u0005\u0010\u000bR\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "", "Lcom/giphy/sdk/core/models/Media;", "b", "Lcom/giphy/sdk/ui/universallist/SmartItemType;", "a", "Lcom/giphy/sdk/ui/universallist/SmartItemType;", "d", "()Lcom/giphy/sdk/ui/universallist/SmartItemType;", "viewType", "Ljava/lang/Object;", "()Ljava/lang/Object;", "data", "", "c", "I", "()I", "spanCount", "<init>", "(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SmartItemType f18899a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Object f18900b;

    /* renamed from: c  reason: collision with root package name */
    private final int f18901c;

    public g(@m8.g SmartItemType viewType, @m8.h Object obj, int i4) {
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        this.f18899a = viewType;
        this.f18900b = obj;
        this.f18901c = i4;
    }

    @m8.h
    public final Object a() {
        return this.f18900b;
    }

    @m8.h
    public final Media b() {
        if (this.f18899a == SmartItemType.Gif) {
            Object obj = this.f18900b;
            if (obj instanceof Media) {
                return (Media) obj;
            }
            return null;
        }
        return null;
    }

    public final int c() {
        return this.f18901c;
    }

    @m8.g
    public final SmartItemType d() {
        return this.f18899a;
    }

    public /* synthetic */ g(SmartItemType smartItemType, Object obj, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(smartItemType, obj, (i10 & 4) != 0 ? 1 : i4);
    }
}
