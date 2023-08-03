package com.giphy.sdk.ui.universallist;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.views.GifView;
import h2.l;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SmartVideoPreviewViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00062\u00020\u0001:\u0001\u0005B\u001b\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\n\u0010\u000e\u001a\u00060\u000bR\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0018\u0010\u000e\u001a\u00060\u000bR\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/ui/universallist/i;", "Lcom/giphy/sdk/ui/universallist/j;", "", "data", "", "b", "d", "Lcom/giphy/sdk/ui/views/GifView;", "a", "Lcom/giphy/sdk/ui/views/GifView;", "gifView", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "Lcom/giphy/sdk/ui/universallist/e$a;", "adapterHelper", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class i extends j {

    /* renamed from: a  reason: collision with root package name */
    private final GifView f18904a;

    /* renamed from: b  reason: collision with root package name */
    private final e.a f18905b;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final b f18903d = new b(null);
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<ViewGroup, e.a, j> f18902c = a.f18906a;

    /* compiled from: SmartVideoPreviewViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/i;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/i;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function2<ViewGroup, e.a, i> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18906a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final i invoke(@m8.g ViewGroup parent, @m8.g e.a adapterHelper) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
            l d4 = l.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d4, "GphSmartVideoPreviewItem…  false\n                )");
            ConstraintLayout root = d4.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "binding.root");
            return new i(root, adapterHelper);
        }
    }

    /* compiled from: SmartVideoPreviewViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011RO\u0010\f\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/giphy/sdk/ui/universallist/i$b;", "", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "createViewHolder", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        @m8.g
        public final Function2<ViewGroup, e.a, j> a() {
            return i.f18902c;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@m8.g View view, @m8.g e.a adapterHelper) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
        this.f18905b = adapterHelper;
        GifView gifView = l.a(this.itemView).f68999b;
        Intrinsics.checkNotNullExpressionValue(gifView, "GphSmartVideoPreviewItem…ng.bind(itemView).gifView");
        this.f18904a = gifView;
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void b(@m8.h Object obj) {
        Media media = (Media) (!(obj instanceof Media) ? null : obj);
        if (media != null) {
            Drawable d4 = com.giphy.sdk.ui.b.d(getAdapterPosition());
            this.f18904a.setImageFormat(this.f18905b.f());
            String str = "Media # " + (getAdapterPosition() + 1) + " of " + this.f18905b.g() + ' ';
            String title = media.getTitle();
            if (title != null) {
                str = str + title;
            }
            this.f18904a.setContentDescription(str);
            this.f18904a.I((Media) obj, this.f18905b.b(), d4);
            this.f18904a.setScaleX(1.0f);
            this.f18904a.setScaleY(1.0f);
            this.f18904a.setCornerRadius(GifView.E.a());
        }
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
        this.f18904a.setGifCallback(null);
        this.f18904a.E();
    }
}
