package com.im.freechat.ui.chat.message_gallery;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: MessageGalleryLayoutManager.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J$\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u000b\u001a\u00060\tR\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "", "k", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "onLayoutCompleted", "", "dx", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "scrollHorizontallyBy", "getExtraLayoutSpace", "", "a", "F", "minScaleDistanceFactor", "b", "scaleDownBy", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;FF)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MessageGalleryLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private final float f43118a;

    /* renamed from: b  reason: collision with root package name */
    private final float f43119b;

    public /* synthetic */ MessageGalleryLayoutManager(Context context, float f10, float f11, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i4 & 2) != 0 ? 1.5f : f10, (i4 & 4) != 0 ? 0.35f : f11);
    }

    private final void k() {
        float coerceAtMost;
        float width = getWidth() / 2.0f;
        float f10 = this.f43118a * width;
        int childCount = getChildCount();
        float f11 = 0.0f;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            Intrinsics.checkNotNull(childAt);
            float left = (childAt.getLeft() + childAt.getRight()) / 2.0f;
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(Math.abs(left - width) / f10, 1.0f);
            float f12 = 1.0f - (this.f43119b * coerceAtMost);
            childAt.setScaleX(f12);
            childAt.setScaleY(f12);
            float width2 = (((left > width ? -1 : 1) * childAt.getWidth()) * (1 - f12)) / 2.0f;
            childAt.setTranslationX(f11 + width2);
            if (width2 > 0.0f && i4 >= 1) {
                View childAt2 = getChildAt(i4 - 1);
                Intrinsics.checkNotNull(childAt2);
                childAt2.setTranslationX(childAt2.getTranslationX() + (2 * width2));
            } else if (width2 < 0.0f) {
                f11 = 2 * width2;
            }
            f11 = 0.0f;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    protected int getExtraLayoutSpace(@m8.g RecyclerView.State state) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(state, "state");
        roundToInt = MathKt__MathJVMKt.roundToInt(getWidth() / (1 - this.f43119b));
        return roundToInt;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(@m8.h RecyclerView.State state) {
        super.onLayoutCompleted(state);
        Unit unit = Unit.INSTANCE;
        k();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i4, @m8.g RecyclerView.Recycler recycler, @m8.g RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        int scrollHorizontallyBy = super.scrollHorizontallyBy(i4, recycler, state);
        if (getOrientation() == 0) {
            k();
        }
        return scrollHorizontallyBy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageGalleryLayoutManager(@m8.g Context context, float f10, float f11) {
        super(context, 0, false);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f43118a = f10;
        this.f43119b = f11;
    }
}
