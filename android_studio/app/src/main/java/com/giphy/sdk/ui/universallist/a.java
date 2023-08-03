package com.giphy.sdk.ui.universallist;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.drawee.drawable.s;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.views.GifView;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: DynamicTextViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u000bB\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\u0010\u0011\u001a\u00060\u000eR\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u00060\u000eR\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/giphy/sdk/ui/universallist/a;", "Lcom/giphy/sdk/ui/universallist/j;", "", "shouldAnimate", "", "f", "", "data", "b", "d", "Lcom/giphy/sdk/ui/views/GifView;", "a", "Lcom/giphy/sdk/ui/views/GifView;", "gifView", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "Lcom/giphy/sdk/ui/universallist/e$a;", "adapterHelper", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V", "c", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a extends j {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final C0140a f18852c = new C0140a(null);

    /* renamed from: a  reason: collision with root package name */
    private final GifView f18853a;

    /* renamed from: b  reason: collision with root package name */
    private final e.a f18854b;

    /* compiled from: DynamicTextViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010JF\u0010\u000e\u001a:\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0017\u0012\u00150\tR\u00020\n¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0004j\u0002`\r2\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/ui/universallist/a$a;", "", "", "showMoreByView", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "a", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.ui.universallist.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0140a {

        /* compiled from: DynamicTextViewHolder.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/a;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/a;"}, k = 3, mv = {1, 4, 1})
        /* renamed from: com.giphy.sdk.ui.universallist.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static final class C0141a extends Lambda implements Function2<ViewGroup, e.a, a> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f18855a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0141a(boolean z9) {
                super(2);
                this.f18855a = z9;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.g
            /* renamed from: a */
            public final a invoke(@m8.g ViewGroup parent, @m8.g e.a adapterHelper) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
                h2.c d4 = h2.c.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d4, "GphDynamicTextItemBindin…  false\n                )");
                d4.f68975d.setBackgroundResource(p.h.f17829y2);
                View dynamicTextView = d4.f68973b;
                Intrinsics.checkNotNullExpressionValue(dynamicTextView, "dynamicTextView");
                ViewGroup.LayoutParams layoutParams = dynamicTextView.getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                if (this.f18855a) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadii(new float[]{60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f});
                    GPHSettings e4 = adapterHelper.e();
                    if (e4 != null) {
                        gradientDrawable.setColor(e4.getTheme().getThemeResources$giphy_ui_2_1_9_release(parent.getContext()).i());
                    }
                    LinearLayout moreByYouBack = d4.f68976e;
                    Intrinsics.checkNotNullExpressionValue(moreByYouBack, "moreByYouBack");
                    moreByYouBack.setBackground(gradientDrawable);
                    layoutParams2.dimensionRatio = "H,2:2";
                } else {
                    LinearLayout moreByYouBack2 = d4.f68976e;
                    Intrinsics.checkNotNullExpressionValue(moreByYouBack2, "moreByYouBack");
                    moreByYouBack2.setVisibility(8);
                    layoutParams2.dimensionRatio = "H,3:2";
                }
                View dynamicTextView2 = d4.f68973b;
                Intrinsics.checkNotNullExpressionValue(dynamicTextView2, "dynamicTextView");
                dynamicTextView2.setLayoutParams(layoutParams2);
                ConstraintLayout root = d4.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "binding.root");
                return new a(root, adapterHelper);
            }
        }

        private C0140a() {
        }

        @m8.g
        public final Function2<ViewGroup, e.a, j> a(boolean z9) {
            return new C0141a(z9);
        }

        public /* synthetic */ C0140a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: DynamicTextViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000f"}, d2 = {"com/giphy/sdk/ui/universallist/a$b", "Lcom/giphy/sdk/ui/views/GifView$b;", "Lcom/facebook/imagepipeline/image/g;", "imageInfo", "Landroid/graphics/drawable/Animatable;", "anim", "", "loopDuration", "", "loopCount", "", "b", "", "throwable", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements GifView.b {
        b() {
        }

        @Override // com.giphy.sdk.ui.views.GifView.b
        public void a(@m8.h Throwable th) {
            a.this.f(false);
        }

        @Override // com.giphy.sdk.ui.views.GifView.b
        public void b(@m8.h com.facebook.imagepipeline.image.g gVar, @m8.h Animatable animatable, long j4, int i4) {
            a.this.f(false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@m8.g View view, @m8.g e.a adapterHelper) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
        this.f18854b = adapterHelper;
        GifView gifView = h2.c.a(this.itemView).f68974c;
        Intrinsics.checkNotNullExpressionValue(gifView, "GphDynamicTextItemBinding.bind(itemView).gifView");
        this.f18853a = gifView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(boolean z9) {
        h2.c a10 = h2.c.a(this.itemView);
        ImageView loader = a10.f68975d;
        Intrinsics.checkNotNullExpressionValue(loader, "loader");
        Drawable background = loader.getBackground();
        Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        AnimationDrawable animationDrawable = (AnimationDrawable) background;
        if (z9) {
            ImageView loader2 = a10.f68975d;
            Intrinsics.checkNotNullExpressionValue(loader2, "loader");
            loader2.setVisibility(0);
            animationDrawable.start();
            return;
        }
        ImageView loader3 = a10.f68975d;
        Intrinsics.checkNotNullExpressionValue(loader3, "loader");
        loader3.setVisibility(8);
        animationDrawable.stop();
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void b(@m8.h Object obj) {
        f(true);
        this.f18853a.setGifCallback(new b());
        Media media = (Media) (!(obj instanceof Media) ? null : obj);
        if (media != null) {
            this.f18853a.setScaleType(s.c.f11562e);
            this.f18853a.setBackgroundVisible(this.f18854b.i());
            this.f18853a.setImageFormat(this.f18854b.f());
            String str = "Media # " + (getAdapterPosition() + 1) + " of " + this.f18854b.g() + ' ';
            String title = media.getTitle();
            if (title != null) {
                str = str + title;
            }
            this.f18853a.setContentDescription(str);
            GifView.J(this.f18853a, (Media) obj, this.f18854b.h(), null, 4, null);
            this.f18853a.setScaleX(1.0f);
            this.f18853a.setScaleY(1.0f);
        }
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
        this.f18853a.setGifCallback(null);
        this.f18853a.E();
    }
}
