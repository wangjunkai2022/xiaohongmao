package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import io.sentry.protocol.y;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;

/* compiled from: ViewGroup.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0015\u0010\f\u001a\u00020\r*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\n\u001a3\u0010\u000f\u001a\u00020\u0010*\u00020\u00032!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00100\u0012H\u0086\bø\u0001\u0000\u001aH\u0010\u0015\u001a\u00020\u0010*\u00020\u000326\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00100\u0016H\u0086\bø\u0001\u0000\u001a\u0015\u0010\u0018\u001a\u00020\u0002*\u00020\u00032\u0006\u0010\u0017\u001a\u00020\tH\u0086\u0002\u001a\r\u0010\u0019\u001a\u00020\r*\u00020\u0003H\u0086\b\u001a\r\u0010\u001a\u001a\u00020\r*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c*\u00020\u0003H\u0086\u0002\u001a\u0015\u0010\u001d\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u001e\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\n\u001a\u0017\u0010\u001f\u001a\u00020\u0010*\u00020 2\b\b\u0001\u0010\b\u001a\u00020\tH\u0086\b\u001a5\u0010!\u001a\u00020\u0010*\u00020 2\b\b\u0003\u0010\"\u001a\u00020\t2\b\b\u0003\u0010#\u001a\u00020\t2\b\b\u0003\u0010$\u001a\u00020\t2\b\b\u0003\u0010%\u001a\u00020\tH\u0086\b\u001a5\u0010&\u001a\u00020\u0010*\u00020 2\b\b\u0003\u0010'\u001a\u00020\t2\b\b\u0003\u0010#\u001a\u00020\t2\b\b\u0003\u0010(\u001a\u00020\t2\b\b\u0003\u0010%\u001a\u00020\tH\u0087\b\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u001b\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005\"\u0016\u0010\b\u001a\u00020\t*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {y.b.f83923k, "Lkotlin/sequences/Sequence;", "Landroid/view/View;", "Landroid/view/ViewGroup;", "getChildren", "(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;", "descendants", "getDescendants", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "getSize", "(Landroid/view/ViewGroup;)I", "contains", "", "view", "forEach", "", com.alipay.sdk.packet.d.f6907q, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "isEmpty", "isNotEmpty", "iterator", "", "minusAssign", "plusAssign", "setMargins", "Landroid/view/ViewGroup$MarginLayoutParams;", "updateMargins", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "updateMarginsRelative", com.google.android.exoplayer2.text.ttml.d.f25725o0, com.google.android.exoplayer2.text.ttml.d.f25727p0, "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ViewGroupKt {
    public static final boolean contains(@m8.g ViewGroup viewGroup, @m8.g View view) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void forEach(@m8.g ViewGroup viewGroup, @m8.g Function1<? super View, Unit> action) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int childCount = viewGroup.getChildCount();
        if (childCount <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            View childAt = viewGroup.getChildAt(i4);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            action.invoke(childAt);
            if (i10 >= childCount) {
                return;
            }
            i4 = i10;
        }
    }

    public static final void forEachIndexed(@m8.g ViewGroup viewGroup, @m8.g Function2<? super Integer, ? super View, Unit> action) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int childCount = viewGroup.getChildCount();
        if (childCount <= 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            Integer valueOf = Integer.valueOf(i4);
            View childAt = viewGroup.getChildAt(i4);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            action.invoke(valueOf, childAt);
            if (i10 >= childCount) {
                return;
            }
            i4 = i10;
        }
    }

    @m8.g
    public static final View get(@m8.g ViewGroup viewGroup, int i4) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        View childAt = viewGroup.getChildAt(i4);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + viewGroup.getChildCount());
    }

    @m8.g
    public static final Sequence<View> getChildren(@m8.g final ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return new Sequence<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // kotlin.sequences.Sequence
            @m8.g
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    @m8.g
    public static final Sequence<View> getDescendants(@m8.g ViewGroup viewGroup) {
        Sequence<View> sequence;
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        sequence = SequencesKt__SequenceBuilderKt.sequence(new ViewGroupKt$descendants$1(viewGroup, null));
        return sequence;
    }

    public static final int getSize(@m8.g ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(@m8.g ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(@m8.g ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return viewGroup.getChildCount() != 0;
    }

    @m8.g
    public static final Iterator<View> iterator(@m8.g ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final void minusAssign(@m8.g ViewGroup viewGroup, @m8.g View view) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        viewGroup.removeView(view);
    }

    public static final void plusAssign(@m8.g ViewGroup viewGroup, @m8.g View view) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        viewGroup.addView(view);
    }

    public static final void setMargins(@m8.g ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i4) {
        Intrinsics.checkNotNullParameter(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i4, i4, i4, i4);
    }

    public static final void updateMargins(@m8.g ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i4, @Px int i10, @Px int i11, @Px int i12) {
        Intrinsics.checkNotNullParameter(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i4, i10, i11, i12);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i4 = marginLayoutParams.leftMargin;
        }
        if ((i13 & 2) != 0) {
            i10 = marginLayoutParams.topMargin;
        }
        if ((i13 & 4) != 0) {
            i11 = marginLayoutParams.rightMargin;
        }
        if ((i13 & 8) != 0) {
            i12 = marginLayoutParams.bottomMargin;
        }
        Intrinsics.checkNotNullParameter(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i4, i10, i11, i12);
    }

    @RequiresApi(17)
    public static final void updateMarginsRelative(@m8.g ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i4, @Px int i10, @Px int i11, @Px int i12) {
        Intrinsics.checkNotNullParameter(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i4);
        marginLayoutParams.topMargin = i10;
        marginLayoutParams.setMarginEnd(i11);
        marginLayoutParams.bottomMargin = i12;
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i4 = marginLayoutParams.getMarginStart();
        }
        if ((i13 & 2) != 0) {
            i10 = marginLayoutParams.topMargin;
        }
        if ((i13 & 4) != 0) {
            i11 = marginLayoutParams.getMarginEnd();
        }
        if ((i13 & 8) != 0) {
            i12 = marginLayoutParams.bottomMargin;
        }
        Intrinsics.checkNotNullParameter(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i4);
        marginLayoutParams.topMargin = i10;
        marginLayoutParams.setMarginEnd(i11);
        marginLayoutParams.bottomMargin = i12;
    }
}
