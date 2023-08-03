package com.giphy.sdk.ui.views;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.ui.p;
import com.google.android.gms.common.internal.x;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GPHSuggestionsView.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u000fB1\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0006\u0010%\u001a\u00020$\u0012\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\n0!¢\u0006\u0004\b&\u0010'J\u001c\u0010\u0007\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\n2\n\u0010\b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0014\u0010\f\u001a\u00020\n2\n\u0010\b\u001a\u00060\u0002R\u00020\u0000H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0010R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0010R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0010R(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b\u0018\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\n0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\"¨\u0006("}, d2 = {"Lcom/giphy/sdk/ui/views/f;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/giphy/sdk/ui/views/f$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "holder", "position", "", "f", "h", "getItemCount", "Landroid/graphics/drawable/Drawable;", "a", "Landroid/graphics/drawable/Drawable;", "searchDrawableWhite", "b", "searchDrawableBlack", "c", "trendingsDrawable", "d", "verifiedDrawable", "e", "textDrawable", "", "Lcom/giphy/sdk/ui/h;", "Ljava/util/List;", "()Ljava/util/List;", ContextChain.TAG_INFRA, "(Ljava/util/List;)V", "suggestions", "Lkotlin/Function1;", "Lkotlin/jvm/functions/Function1;", x.a.f29212a, "Li2/e;", "theme", "<init>", "(Ljava/util/List;Li2/e;Lkotlin/jvm/functions/Function1;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class f extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f19167a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f19168b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f19169c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f19170d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f19171e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private List<com.giphy.sdk.ui.h> f19172f;

    /* renamed from: g  reason: collision with root package name */
    private final i2.e f19173g;

    /* renamed from: h  reason: collision with root package name */
    private final Function1<com.giphy.sdk.ui.h, Unit> f19174h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GPHSuggestionsView.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\"\u0010\u001c\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006!"}, d2 = {"Lcom/giphy/sdk/ui/views/f$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "b", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "f", "()Landroid/widget/TextView;", "j", "(Landroid/widget/TextView;)V", "text", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "c", "()Landroid/widget/ImageView;", "g", "(Landroid/widget/ImageView;)V", "leftImage", "e", ContextChain.TAG_INFRA, "rightImage", "Landroid/graphics/drawable/GradientDrawable;", "d", "Landroid/graphics/drawable/GradientDrawable;", "()Landroid/graphics/drawable/GradientDrawable;", "h", "(Landroid/graphics/drawable/GradientDrawable;)V", "regularGradientDrawable", "Landroid/view/View;", "view", "<init>", "(Lcom/giphy/sdk/ui/views/f;Landroid/view/View;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private TextView f19175a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private ImageView f19176b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private ImageView f19177c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private GradientDrawable f19178d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ f f19179e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g f fVar, View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.f19179e = fVar;
            View findViewById = view.findViewById(p.j.T5);
            Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.suggestionText)");
            this.f19175a = (TextView) findViewById;
            View findViewById2 = view.findViewById(p.j.R5);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.suggestionLeftImage)");
            this.f19176b = (ImageView) findViewById2;
            View findViewById3 = view.findViewById(p.j.S5);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "view.findViewById(R.id.suggestionRightImage)");
            this.f19177c = (ImageView) findViewById3;
            GradientDrawable gradientDrawable = new GradientDrawable();
            this.f19178d = gradientDrawable;
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TL_BR);
            this.f19178d.setCornerRadii(new float[]{60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f, 60.0f});
            View itemView = this.itemView;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            itemView.setBackground(this.f19178d);
        }

        public final void b() {
            this.f19176b.setVisibility(8);
            this.f19177c.setVisibility(8);
            this.f19176b.setPadding(0, 0, 0, 0);
            this.f19175a.setPadding(0, 0, 0, 0);
            this.f19177c.setPadding(0, 0, 0, 0);
        }

        @m8.g
        public final ImageView c() {
            return this.f19176b;
        }

        @m8.g
        public final GradientDrawable d() {
            return this.f19178d;
        }

        @m8.g
        public final ImageView e() {
            return this.f19177c;
        }

        @m8.g
        public final TextView f() {
            return this.f19175a;
        }

        public final void g(@m8.g ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.f19176b = imageView;
        }

        public final void h(@m8.g GradientDrawable gradientDrawable) {
            Intrinsics.checkNotNullParameter(gradientDrawable, "<set-?>");
            this.f19178d = gradientDrawable;
        }

        public final void i(@m8.g ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.f19177c = imageView;
        }

        public final void j(@m8.g TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.f19175a = textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHSuggestionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.h f19181b;

        b(com.giphy.sdk.ui.h hVar) {
            this.f19181b = hVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            f.this.f19174h.invoke(this.f19181b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@m8.g List<com.giphy.sdk.ui.h> suggestions, @m8.g i2.e theme, @m8.g Function1<? super com.giphy.sdk.ui.h, Unit> listener) {
        Intrinsics.checkNotNullParameter(suggestions, "suggestions");
        Intrinsics.checkNotNullParameter(theme, "theme");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f19172f = suggestions;
        this.f19173g = theme;
        this.f19174h = listener;
    }

    @m8.g
    public final List<com.giphy.sdk.ui.h> e() {
        return this.f19172f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        int[] intArray;
        int[] intArray2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        com.giphy.sdk.ui.h hVar = this.f19172f.get(i4);
        holder.f().setText(hVar.e());
        holder.itemView.setOnClickListener(new b(hVar));
        GradientDrawable d4 = holder.d();
        intArray = ArraysKt___ArraysKt.toIntArray(new Integer[]{Integer.valueOf(this.f19173g.l()), Integer.valueOf(this.f19173g.l())});
        d4.setColors(intArray);
        holder.f().setTextColor(this.f19173g.k());
        int i10 = g.$EnumSwitchMapping$0[hVar.f().ordinal()];
        if (i10 == 1) {
            holder.c().setVisibility(0);
            holder.c().setImageDrawable(this.f19169c);
            holder.c().getLayoutParams().height = com.giphy.sdk.ui.utils.g.b(12);
            holder.c().setPadding(com.giphy.sdk.ui.utils.g.b(4), 0, 0, 0);
            holder.f().setPadding(0, com.giphy.sdk.ui.utils.g.b(4), com.giphy.sdk.ui.utils.g.b(18), com.giphy.sdk.ui.utils.g.b(6));
        } else if (i10 == 2) {
            holder.c().setVisibility(0);
            ImageView c10 = holder.c();
            i2.e eVar = this.f19173g;
            c10.setImageDrawable(((eVar instanceof i2.d) || (eVar instanceof i2.b)) ? this.f19168b : this.f19167a);
            holder.c().getLayoutParams().height = com.giphy.sdk.ui.utils.g.b(15);
            holder.c().setPadding(com.giphy.sdk.ui.utils.g.b(4), 0, 0, 0);
            holder.f().setPadding(0, com.giphy.sdk.ui.utils.g.b(4), com.giphy.sdk.ui.utils.g.b(12), com.giphy.sdk.ui.utils.g.b(6));
        } else if (i10 == 3) {
            holder.e().setImageDrawable(this.f19170d);
            holder.e().setVisibility(0);
            holder.f().setPadding(com.giphy.sdk.ui.utils.g.b(12), com.giphy.sdk.ui.utils.g.b(3), 0, com.giphy.sdk.ui.utils.g.b(7));
            holder.e().getLayoutParams().height = com.giphy.sdk.ui.utils.g.b(18);
            holder.e().setPadding(0, 0, 0, 0);
        } else if (i10 != 4) {
        } else {
            GradientDrawable d10 = holder.d();
            intArray2 = ArraysKt___ArraysKt.toIntArray(new Integer[]{Integer.valueOf(Color.parseColor("#FF6666")), Integer.valueOf(Color.parseColor("#9933FF"))});
            d10.setColors(intArray2);
            holder.c().setVisibility(0);
            holder.c().setImageDrawable(this.f19171e);
            holder.c().getLayoutParams().height = com.giphy.sdk.ui.utils.g.b(16);
            holder.c().setPadding(com.giphy.sdk.ui.utils.g.b(4), 0, 0, 0);
            holder.f().setPadding(0, com.giphy.sdk.ui.utils.g.b(4), com.giphy.sdk.ui.utils.g.b(18), com.giphy.sdk.ui.utils.g.b(6));
            holder.f().setTextColor(-1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.f19167a = ContextCompat.getDrawable(parent.getContext(), p.h.N2);
        this.f19168b = ContextCompat.getDrawable(parent.getContext(), p.h.L2);
        this.f19169c = ContextCompat.getDrawable(parent.getContext(), p.h.T2);
        this.f19170d = ContextCompat.getDrawable(parent.getContext(), p.h.U2);
        this.f19171e = ContextCompat.getDrawable(parent.getContext(), p.h.S2);
        View itemView = LayoutInflater.from(parent.getContext()).inflate(p.m.f18119p0, parent, false);
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        return new a(this, itemView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f19172f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onViewRecycled(@m8.g a holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.b();
        super.onViewRecycled(holder);
    }

    public final void i(@m8.g List<com.giphy.sdk.ui.h> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f19172f = list;
    }
}
