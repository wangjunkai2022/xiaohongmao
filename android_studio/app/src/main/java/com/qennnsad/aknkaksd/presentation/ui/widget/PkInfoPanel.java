package com.qennnsad.aknkaksd.presentation.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.text.ttml.d;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.g;
import com.qennnsad.aknkaksd.util.a1;
import io.sentry.Session;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import m8.g;
import m8.h;

/* compiled from: PkInfoPanel.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010P\u001a\u0004\u0018\u00010O¢\u0006\u0004\bQ\u0010RB\u001d\b\u0016\u0012\b\u0010P\u001a\u0004\u0018\u00010O\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\bQ\u0010SB%\b\u0016\u0012\b\u0010P\u001a\u0004\u0018\u00010O\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bQ\u0010TJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\f\u0010\u0015\u001a\u00020\u0004*\u00020\u0014H\u0002J0\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0014J)\u0010!\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001f¢\u0006\u0004\b!\u0010\"J)\u0010#\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001f¢\u0006\u0004\b#\u0010\"J!\u0010%\u001a\u00020\u00062\u0012\u0010$\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001f¢\u0006\u0004\b%\u0010&J!\u0010'\u001a\u00020\u00062\u0012\u0010$\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001f¢\u0006\u0004\b'\u0010&J\u0016\u0010(\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010)\u001a\u00020\u0006J\u000f\u0010*\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b,\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010.R\u0016\u00101\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u00100R\u0016\u00102\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u00100R\u0016\u00103\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u00100R\u0016\u00104\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u00100R\u001c\u00106\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u00105R\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u00105R\u0016\u00109\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010;R\u0016\u0010>\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010=R\u001e\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010?R\u001e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010?R\u001b\u0010F\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER0\u0010N\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0006\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010M¨\u0006U"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;", "Landroid/widget/LinearLayout;", "Landroid/util/AttributeSet;", Session.b.f81849j, "", "defStyle", "", "e", "d", "f", "Landroid/view/ViewGroup;", "id", "", d.f25720l0, "", "Lcom/facebook/drawee/view/SimpleDraweeView;", "c", "scoresLeft", "scoresRight", "k", "Landroid/widget/TextView;", "j", "changed", "l", "t", "r", "b", "onLayout", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "", "", "avatars", "g", "(Lcom/qennnsad/aknkaksd/data/repository/m;[Ljava/lang/String;)V", "h", "ids", "setLeftIds", "([Ljava/lang/String;)V", "setRightIds", ContextChain.TAG_INFRA, "a", "getLeftScores", "()Ljava/lang/Integer;", "getRightScores", "Landroid/view/View;", "Landroid/view/View;", "root", "Landroid/widget/TextView;", "rightScores", "leftScores", "ourSideLabel", "theirSideLabel", "Ljava/util/List;", "leftAvatars", "rightAvatars", "Landroid/view/ViewGroup;", "scoresFlowThumb", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "scoresConstraintLayout", "Z", "mReversed", "[Ljava/lang/String;", "leftIds", "rightIds", "m", "Lkotlin/Lazy;", "getThumbPadding", "()I", "thumbPadding", "Lkotlin/Function1;", "n", "Lkotlin/jvm/functions/Function1;", "getOnDonatorClickListener", "()Lkotlin/jvm/functions/Function1;", "setOnDonatorClickListener", "(Lkotlin/jvm/functions/Function1;)V", "onDonatorClickListener", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class PkInfoPanel extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f54332a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f54333b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f54334c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f54335d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f54336e;

    /* renamed from: f  reason: collision with root package name */
    private List<? extends SimpleDraweeView> f54337f;

    /* renamed from: g  reason: collision with root package name */
    private List<? extends SimpleDraweeView> f54338g;

    /* renamed from: h  reason: collision with root package name */
    private ViewGroup f54339h;

    /* renamed from: i  reason: collision with root package name */
    private ConstraintLayout f54340i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54341j;
    @g

    /* renamed from: k  reason: collision with root package name */
    private String[] f54342k;
    @g

    /* renamed from: l  reason: collision with root package name */
    private String[] f54343l;
    @g

    /* renamed from: m  reason: collision with root package name */
    private final Lazy f54344m;
    @h

    /* renamed from: n  reason: collision with root package name */
    private Function1<? super String, Unit> f54345n;

    /* compiled from: PkInfoPanel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<Integer> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final Integer invoke() {
            return Integer.valueOf(a1.a(PkInfoPanel.this.getContext(), 15.0f));
        }
    }

    public PkInfoPanel(@h Context context) {
        super(context);
        Lazy lazy;
        this.f54342k = new String[3];
        this.f54343l = new String[3];
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f54344m = lazy;
        e(null, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<SimpleDraweeView> c(ViewGroup viewGroup, @IdRes int i4, boolean z9) {
        List emptyList;
        List<SimpleDraweeView> mutableList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) emptyList);
        if (z9) {
            View findViewById = viewGroup.findViewById(R.id.donator_avatar_left_1);
            Intrinsics.checkNotNullExpressionValue(findViewById, "this.findViewById(R.id.donator_avatar_left_1)");
            mutableList.add(findViewById);
            View findViewById2 = viewGroup.findViewById(R.id.donator_avatar_left_2);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "this.findViewById(R.id.donator_avatar_left_2)");
            mutableList.add(findViewById2);
            View findViewById3 = viewGroup.findViewById(R.id.donator_avatar_left_3);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "this.findViewById(R.id.donator_avatar_left_3)");
            mutableList.add(findViewById3);
        } else {
            View findViewById4 = viewGroup.findViewById(R.id.donator_avatar_right_1);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "this.findViewById(R.id.donator_avatar_right_1)");
            mutableList.add(findViewById4);
            View findViewById5 = viewGroup.findViewById(R.id.donator_avatar_right_2);
            Intrinsics.checkNotNullExpressionValue(findViewById5, "this.findViewById(R.id.donator_avatar_right_2)");
            mutableList.add(findViewById5);
            View findViewById6 = viewGroup.findViewById(R.id.donator_avatar_right_3);
            Intrinsics.checkNotNullExpressionValue(findViewById6, "this.findViewById(R.id.donator_avatar_right_3)");
            mutableList.add(findViewById6);
        }
        return mutableList;
    }

    private final void d() {
        View inflate = LayoutInflater.from(getContext()).inflate(this.f54341j ? R.layout.pk_panel_root_2 : R.layout.pk_panel_root, (ViewGroup) this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(context).inflate(\n …           true\n        )");
        this.f54332a = inflate;
    }

    private final void e(AttributeSet attributeSet, int i4) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.u.wz, i4, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…el, defStyle, 0\n        )");
        this.f54341j = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        d();
        f();
    }

    private final void f() {
        View view = this.f54332a;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
            view = null;
        }
        View findViewById = view.findViewById(R.id.pk_scores_constraint);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.pk_scores_constraint)");
        this.f54340i = (ConstraintLayout) findViewById;
        View findViewById2 = view.findViewById(R.id.tv_left_pk_scores);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.tv_left_pk_scores)");
        this.f54334c = (TextView) findViewById2;
        View findViewById3 = view.findViewById(R.id.tv_right_pk_scores);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.tv_right_pk_scores)");
        this.f54333b = (TextView) findViewById3;
        View findViewById4 = view.findViewById(R.id.vsFlowThumb);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.vsFlowThumb)");
        this.f54339h = (ViewGroup) findViewById4;
        this.f54337f = c(this, R.id.pk_avatars_list_left, true);
        this.f54338g = c(this, R.id.pk_avatars_list_right, false);
        View findViewById5 = view.findViewById(R.id.label_our_side);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.label_our_side)");
        this.f54335d = (TextView) findViewById5;
        View findViewById6 = view.findViewById(R.id.label_their_side);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.label_their_side)");
        this.f54336e = (TextView) findViewById6;
    }

    private final int getThumbPadding() {
        return ((Number) this.f54344m.getValue()).intValue();
    }

    private final int j(TextView textView) {
        Rect rect = new Rect();
        textView.getPaint().getTextBounds(textView.getText().toString(), 0, textView.getText().length(), rect);
        return rect.width();
    }

    private final void k(int i4, int i10) {
        float f10 = i4 == i10 ? 0.5f : i4 / (i4 + i10);
        ConstraintSet constraintSet = new ConstraintSet();
        ConstraintLayout constraintLayout = this.f54340i;
        ViewGroup viewGroup = null;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scoresConstraintLayout");
            constraintLayout = null;
        }
        constraintSet.clone(constraintLayout);
        constraintSet.setHorizontalBias(R.id.vsFlowThumb, f10);
        ConstraintLayout constraintLayout2 = this.f54340i;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scoresConstraintLayout");
            constraintLayout2 = null;
        }
        constraintSet.applyTo(constraintLayout2);
        TextView textView = this.f54334c;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftScores");
            textView = null;
        }
        int j4 = j(textView);
        TextView textView2 = this.f54335d;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ourSideLabel");
            textView2 = null;
        }
        int j10 = j4 + j(textView2);
        TextView textView3 = this.f54333b;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightScores");
            textView3 = null;
        }
        int j11 = j(textView3);
        TextView textView4 = this.f54336e;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("theirSideLabel");
            textView4 = null;
        }
        int j12 = j11 + j(textView4);
        ViewGroup viewGroup2 = this.f54339h;
        if (viewGroup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scoresFlowThumb");
            viewGroup2 = null;
        }
        ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(j10 + getThumbPadding());
        marginLayoutParams.setMarginEnd(j12 + getThumbPadding());
        ViewGroup viewGroup3 = this.f54339h;
        if (viewGroup3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scoresFlowThumb");
        } else {
            viewGroup = viewGroup3;
        }
        viewGroup.setLayoutParams(marginLayoutParams);
    }

    public final void a() {
        List<? extends SimpleDraweeView> list = this.f54337f;
        List<? extends SimpleDraweeView> list2 = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftAvatars");
            list = null;
        }
        for (SimpleDraweeView simpleDraweeView : list) {
            simpleDraweeView.setActualImageResource(R.drawable.ic_default_head_small);
        }
        List<? extends SimpleDraweeView> list3 = this.f54338g;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightAvatars");
        } else {
            list2 = list3;
        }
        for (SimpleDraweeView simpleDraweeView2 : list2) {
            simpleDraweeView2.setActualImageResource(R.drawable.ic_default_head_small);
        }
    }

    public final void b() {
        TextView textView = this.f54334c;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftScores");
            textView = null;
        }
        textView.setText("0");
        TextView textView3 = this.f54333b;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightScores");
        } else {
            textView2 = textView3;
        }
        textView2.setText("0");
        k(0, 0);
    }

    public final void g(@m8.g m sourceFactory, @m8.g String... avatars) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(avatars, "avatars");
        int i4 = 0;
        if (avatars.length == 0) {
            return;
        }
        int length = avatars.length;
        int i10 = 0;
        while (i4 < length) {
            int i11 = i10 + 1;
            String valueOf = String.valueOf(sourceFactory.j(avatars[i4]));
            List<? extends SimpleDraweeView> list = this.f54337f;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftAvatars");
                list = null;
            }
            list.get(i10).setImageURI(valueOf);
            i4++;
            i10 = i11;
        }
    }

    @h
    public final Integer getLeftScores() {
        Integer intOrNull;
        TextView textView = this.f54334c;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftScores");
            textView = null;
        }
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(textView.getText().toString());
        return intOrNull;
    }

    @h
    public final Function1<String, Unit> getOnDonatorClickListener() {
        return this.f54345n;
    }

    @h
    public final Integer getRightScores() {
        Integer intOrNull;
        TextView textView = this.f54333b;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightScores");
            textView = null;
        }
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(textView.getText().toString());
        return intOrNull;
    }

    public final void h(@m8.g m sourceFactory, @m8.g String... avatars) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(avatars, "avatars");
        int i4 = 0;
        if (avatars.length == 0) {
            return;
        }
        int length = avatars.length;
        int i10 = 0;
        while (i4 < length) {
            int i11 = i10 + 1;
            String valueOf = String.valueOf(sourceFactory.j(avatars[i4]));
            List<? extends SimpleDraweeView> list = this.f54338g;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightAvatars");
                list = null;
            }
            list.get(i10).setImageURI(valueOf);
            i4++;
            i10 = i11;
        }
    }

    public final void i(int i4, int i10) {
        TextView textView = this.f54334c;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftScores");
            textView = null;
        }
        if (i4 >= Integer.parseInt(textView.getText().toString())) {
            TextView textView3 = this.f54333b;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightScores");
                textView3 = null;
            }
            if (i10 < Integer.parseInt(textView3.getText().toString())) {
                return;
            }
            TextView textView4 = this.f54334c;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftScores");
                textView4 = null;
            }
            textView4.setText(String.valueOf(i4));
            TextView textView5 = this.f54333b;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightScores");
            } else {
                textView2 = textView5;
            }
            textView2.setText(String.valueOf(i10));
            k(i4, i10);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
    }

    public final void setLeftIds(@m8.g String... ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        int length = ids.length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            this.f54342k[i10] = ids[i4];
            i4++;
            i10++;
        }
    }

    public final void setOnDonatorClickListener(@h Function1<? super String, Unit> function1) {
        this.f54345n = function1;
    }

    public final void setRightIds(@m8.g String... ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        int length = ids.length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            this.f54343l[i10] = ids[i4];
            i4++;
            i10++;
        }
    }

    public PkInfoPanel(@h Context context, @h AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        this.f54342k = new String[3];
        this.f54343l = new String[3];
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f54344m = lazy;
        e(attributeSet, 0);
    }

    public PkInfoPanel(@h Context context, @h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Lazy lazy;
        this.f54342k = new String[3];
        this.f54343l = new String[3];
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f54344m = lazy;
        e(attributeSet, i4);
    }
}
