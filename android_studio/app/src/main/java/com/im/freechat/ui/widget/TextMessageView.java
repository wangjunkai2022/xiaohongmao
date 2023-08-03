package com.im.freechat.ui.widget;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import androidx.emoji2.widget.EmojiTextView;
import io.sentry.Session;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: TextMessageView.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0014¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/ui/widget/TextMessageView;", "Landroidx/emoji2/widget/EmojiTextView;", "Landroid/text/Layout;", com.google.android.exoplayer2.text.ttml.d.f25740w, "", "a", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class TextMessageView extends EmojiTextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TextMessageView(@g Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TextMessageView(@g Context context, @h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TextMessageView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final float a(Layout layout) {
        IntRange until;
        Float valueOf;
        until = RangesKt___RangesKt.until(0, layout.getLineCount());
        Iterator<Integer> it = until.iterator();
        if (it.hasNext()) {
            IntIterator intIterator = (IntIterator) it;
            float lineWidth = layout.getLineWidth(intIterator.nextInt());
            while (it.hasNext()) {
                lineWidth = Math.max(lineWidth, layout.getLineWidth(intIterator.nextInt()));
            }
            valueOf = Float.valueOf(lineWidth);
        } else {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.floatValue();
        }
        return 0.0f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i4, int i10) {
        if (getLayout() != null) {
            Layout layout = getLayout();
            Intrinsics.checkNotNullExpressionValue(layout, "layout");
            int ceil = (int) Math.ceil(a(layout));
            int compoundPaddingLeft = getCompoundPaddingLeft() + ceil + getCompoundPaddingRight();
            setMeasuredDimension(compoundPaddingLeft - (ceil - getLayout().getWidth()), getMeasuredHeight());
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(getMaxWidth(), Integer.MIN_VALUE), i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TextMessageView(@g Context context, @h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
