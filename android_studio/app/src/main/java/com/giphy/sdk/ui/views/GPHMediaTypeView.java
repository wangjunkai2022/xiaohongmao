package com.giphy.sdk.ui.views;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.animation.AnticipateOvershootInterpolator;
import android.widget.ImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.giphy.sdk.ui.GPHContentType;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: GPHMediaTypeView.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001AB'\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\u0006\u00107\u001a\u000206\u0012\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00130=¢\u0006\u0004\b?\u0010@J,\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\bH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rR.\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R4\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\b0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R*\u0010(\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u00138\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R*\u0010.\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001b8\u0006@BX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010/R\u0016\u00102\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0016\u00103\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010/R\u0016\u00105\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010/R\u0017\u00107\u001a\u0002068\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006B"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHMediaTypeView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintSet;", "constraintSet", "Landroid/view/View;", "view", "prev", "next", "", "b", "set", "a", "d", "", "inFocus", "e", "g", "c", "Lkotlin/Function1;", "Lcom/giphy/sdk/ui/GPHContentType;", "Lkotlin/jvm/functions/Function1;", "getMediaConfigListener", "()Lkotlin/jvm/functions/Function1;", "setMediaConfigListener", "(Lkotlin/jvm/functions/Function1;)V", "mediaConfigListener", "Lkotlin/Function2;", "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "Lkotlin/jvm/functions/Function2;", "getLayoutTypeListener", "()Lkotlin/jvm/functions/Function2;", "setLayoutTypeListener", "(Lkotlin/jvm/functions/Function2;)V", "layoutTypeListener", "value", "Lcom/giphy/sdk/ui/GPHContentType;", "getGphContentType", "()Lcom/giphy/sdk/ui/GPHContentType;", "setGphContentType", "(Lcom/giphy/sdk/ui/GPHContentType;)V", "gphContentType", "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "getLayoutType", "()Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "setLayoutType", "(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V", "layoutType", "Landroidx/constraintlayout/widget/ConstraintSet;", "activeContraintSet", "f", "categoriesContraintSet", "resultsContraintSet", "h", "searchConstraintSet", "Li2/e;", "theme", "Li2/e;", "getTheme", "()Li2/e;", "Landroid/content/Context;", "context", "", "mediaConfigs", "<init>", "(Landroid/content/Context;Li2/e;[Lcom/giphy/sdk/ui/GPHContentType;)V", "LayoutType", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHMediaTypeView extends ConstraintLayout {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super GPHContentType, Unit> f18938a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private Function2<? super LayoutType, ? super LayoutType, Unit> f18939b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private GPHContentType f18940c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private LayoutType f18941d;

    /* renamed from: e  reason: collision with root package name */
    private ConstraintSet f18942e;

    /* renamed from: f  reason: collision with root package name */
    private ConstraintSet f18943f;

    /* renamed from: g  reason: collision with root package name */
    private ConstraintSet f18944g;

    /* renamed from: h  reason: collision with root package name */
    private ConstraintSet f18945h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final i2.e f18946i;

    /* compiled from: GPHMediaTypeView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "", "(Ljava/lang/String;I)V", "browse", "searchFocus", "searchResults", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum LayoutType {
        browse,
        searchFocus,
        searchResults
    }

    /* compiled from: GPHMediaTypeView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/giphy/sdk/ui/views/GPHMediaTypeView$2$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f18949b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f18950c;

        a(Context context, List list) {
            this.f18949b = context;
            this.f18950c = list;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View it) {
            GPHMediaTypeView gPHMediaTypeView = GPHMediaTypeView.this;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            Object tag = it.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.giphy.sdk.ui.GPHContentType");
            gPHMediaTypeView.setGphContentType((GPHContentType) tag);
            GPHMediaTypeView.this.getMediaConfigListener().invoke(GPHMediaTypeView.this.getGphContentType());
        }
    }

    /* compiled from: GPHMediaTypeView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "old", "new", "", "a", "(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function2<LayoutType, LayoutType, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f18951a = new b();

        b() {
            super(2);
        }

        public final void a(@m8.g LayoutType old, @m8.g LayoutType layoutType) {
            Intrinsics.checkNotNullParameter(old, "old");
            Intrinsics.checkNotNullParameter(layoutType, "new");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(LayoutType layoutType, LayoutType layoutType2) {
            a(layoutType, layoutType2);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GPHMediaTypeView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/GPHContentType;", "it", "", "a", "(Lcom/giphy/sdk/ui/GPHContentType;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c extends Lambda implements Function1<GPHContentType, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f18952a = new c();

        c() {
            super(1);
        }

        public final void a(@m8.g GPHContentType it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GPHContentType gPHContentType) {
            a(gPHContentType);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068 A[LOOP:0: B:3:0x0041->B:19:0x0068, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x006c A[EDGE_INSN: B:92:0x006c->B:21:0x006c ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GPHMediaTypeView(@m8.h android.content.Context r9, @m8.g i2.e r10, @m8.g com.giphy.sdk.ui.GPHContentType[] r11) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GPHMediaTypeView.<init>(android.content.Context, i2.e, com.giphy.sdk.ui.GPHContentType[]):void");
    }

    private final void a(ConstraintSet constraintSet) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1));
        transitionSet.setInterpolator((TimeInterpolator) new AnticipateOvershootInterpolator(1.0f));
        transitionSet.setDuration(300L);
        if (!Intrinsics.areEqual(constraintSet, this.f18942e)) {
            TransitionManager.beginDelayedTransition(this, transitionSet);
            this.f18942e = constraintSet;
            constraintSet.applyTo(this);
        }
    }

    private final void b(ConstraintSet constraintSet, View view, View view2, View view3) {
        constraintSet.connect(view.getId(), 3, 0, 3);
        constraintSet.connect(view.getId(), 4, 0, 4);
        constraintSet.connect(view.getId(), 6, view2 == null ? 0 : view2.getId(), view2 == null ? 6 : 7);
        constraintSet.connect(view.getId(), 7, view3 == null ? 0 : view3.getId(), view3 == null ? 7 : 6);
        constraintSet.setMargin(view.getId(), 3, com.giphy.sdk.ui.utils.g.b(10));
        constraintSet.constrainHeight(view.getId(), 0);
        constraintSet.setMargin(view.getId(), 4, com.giphy.sdk.ui.utils.g.b(10));
        constraintSet.constrainWidth(view.getId(), -2);
    }

    private final void d() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View view = getChildAt(i4);
            ImageButton imageButton = (ImageButton) (!(view instanceof ImageButton) ? null : view);
            if (imageButton != null) {
                imageButton.setColorFilter(this.f18946i.h());
            }
            Intrinsics.checkNotNullExpressionValue(view, "view");
            if (view.getTag() == this.f18940c) {
                if (!(view instanceof ImageButton)) {
                    view = null;
                }
                ImageButton imageButton2 = (ImageButton) view;
                if (imageButton2 != null) {
                    imageButton2.setColorFilter(this.f18946i.a());
                }
            }
        }
    }

    public static /* synthetic */ void f(GPHMediaTypeView gPHMediaTypeView, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        gPHMediaTypeView.e(z9);
    }

    private final void setLayoutType(LayoutType layoutType) {
        LayoutType layoutType2 = this.f18941d;
        if (layoutType2 != layoutType) {
            this.f18939b.invoke(layoutType2, layoutType);
        }
        this.f18941d = layoutType;
    }

    public final void c(boolean z9) {
        if (z9 && Intrinsics.areEqual(this.f18942e, this.f18943f)) {
            a(this.f18945h);
            setLayoutType(LayoutType.searchFocus);
        }
        if (z9 || !Intrinsics.areEqual(this.f18942e, this.f18945h)) {
            return;
        }
        a(this.f18943f);
        setLayoutType(LayoutType.browse);
    }

    public final void e(boolean z9) {
        ConstraintSet constraintSet;
        if (z9) {
            setLayoutType(LayoutType.searchFocus);
            constraintSet = this.f18945h;
        } else {
            setLayoutType(LayoutType.browse);
            constraintSet = this.f18943f;
        }
        a(constraintSet);
    }

    public final void g() {
        a(this.f18944g);
        setLayoutType(LayoutType.searchResults);
    }

    @m8.g
    public final GPHContentType getGphContentType() {
        return this.f18940c;
    }

    @m8.g
    public final LayoutType getLayoutType() {
        return this.f18941d;
    }

    @m8.g
    public final Function2<LayoutType, LayoutType, Unit> getLayoutTypeListener() {
        return this.f18939b;
    }

    @m8.g
    public final Function1<GPHContentType, Unit> getMediaConfigListener() {
        return this.f18938a;
    }

    @m8.g
    public final i2.e getTheme() {
        return this.f18946i;
    }

    public final void setGphContentType(@m8.g GPHContentType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f18940c = value;
        d();
    }

    public final void setLayoutTypeListener(@m8.g Function2<? super LayoutType, ? super LayoutType, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f18939b = function2;
    }

    public final void setMediaConfigListener(@m8.g Function1<? super GPHContentType, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f18938a = function1;
    }
}
