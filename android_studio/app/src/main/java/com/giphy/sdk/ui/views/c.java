package com.giphy.sdk.ui.views;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Images;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.ui.p;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: GPHMediaActionsView.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010*\u001a\u0004\u0018\u00010&\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020,0+¢\u0006\u0004\b0\u00101J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fR0\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00040\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R0\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00040\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR.\u0010%\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$R\u0019\u0010*\u001a\u0004\u0018\u00010&8\u0006¢\u0006\f\n\u0004\b\u0017\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020,0+8\u0006¢\u0006\f\n\u0004\b\u0012\u0010-\u001a\u0004\b\u001b\u0010.¨\u00062"}, d2 = {"Lcom/giphy/sdk/ui/views/c;", "Landroid/widget/PopupWindow;", "Landroid/view/View$OnClickListener;", "b", "", "o", "", "url", ContextChain.TAG_INFRA, "m", "p", "h", "", "show", "n", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "g", "()Lkotlin/jvm/functions/Function1;", "l", "(Lkotlin/jvm/functions/Function1;)V", "onShowMore", "f", "k", "onRemoveMedia", "", "c", "I", "shadowSize", "Lcom/giphy/sdk/core/models/Media;", "value", "e", "Lcom/giphy/sdk/core/models/Media;", "()Lcom/giphy/sdk/core/models/Media;", "j", "(Lcom/giphy/sdk/core/models/Media;)V", "media", "Landroid/content/Context;", "Landroid/content/Context;", "d", "()Landroid/content/Context;", "context", "", "Lcom/giphy/sdk/ui/views/GPHActions;", "[Lcom/giphy/sdk/ui/views/GPHActions;", "()[Lcom/giphy/sdk/ui/views/GPHActions;", "actions", "<init>", "(Landroid/content/Context;[Lcom/giphy/sdk/ui/views/GPHActions;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c extends PopupWindow {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super String, Unit> f19154a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super String, Unit> f19155b;

    /* renamed from: c  reason: collision with root package name */
    private final int f19156c;

    /* renamed from: d  reason: collision with root package name */
    private final h2.a f19157d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Media f19158e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final Context f19159f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final GPHActions[] f19160g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Images images;
            Image original;
            c cVar = c.this;
            Media e4 = cVar.e();
            cVar.i((e4 == null || (images = e4.getImages()) == null || (original = images.getOriginal()) == null) ? null : original.getGifUrl());
            c.this.dismiss();
        }
    }

    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f19162a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
        }
    }

    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.ui.views.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0145c extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0145c f19163a = new C0145c();

        C0145c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Function1<String, Unit> f10 = c.this.f();
            Media e4 = c.this.e();
            f10.invoke(e4 != null ? e4.getId() : null);
            c.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            User user;
            Function1<String, Unit> g4 = c.this.g();
            Media e4 = c.this.e();
            g4.invoke((e4 == null || (user = e4.getUser()) == null) ? null : user.getUsername());
            c.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHMediaActionsView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context d4 = c.this.d();
            if (d4 != null) {
                d4.startActivity(com.giphy.sdk.ui.utils.d.f18930a.c(c.this.e()));
            }
            c.this.dismiss();
        }
    }

    public c(@m8.h Context context, @m8.g GPHActions[] actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.f19159f = context;
        this.f19160g = actions;
        this.f19154a = C0145c.f19163a;
        this.f19155b = b.f19162a;
        int b10 = com.giphy.sdk.ui.utils.g.b(2);
        this.f19156c = b10;
        setContentView(View.inflate(context, p.m.f18083d0, null));
        h2.a a10 = h2.a.a(getContentView());
        Intrinsics.checkNotNullExpressionValue(a10, "GphActionsViewBinding.bind(contentView)");
        this.f19157d = a10;
        setWidth(-2);
        setHeight(-2);
        int i4 = Build.VERSION.SDK_INT;
        setElevation(b10);
        if (i4 >= 23) {
            setOverlapAnchor(true);
        }
        a10.f68955c.setOnClickListener(m());
        a10.f68958f.setOnClickListener(b());
        a10.f68957e.setOnClickListener(p());
        a10.f68956d.setOnClickListener(h());
        for (GPHActions gPHActions : actions) {
            int i10 = com.giphy.sdk.ui.views.b.$EnumSwitchMapping$0[gPHActions.ordinal()];
            if (i10 == 1) {
                TextView gphActionMore = a10.f68955c;
                Intrinsics.checkNotNullExpressionValue(gphActionMore, "gphActionMore");
                gphActionMore.setVisibility(0);
            } else if (i10 == 2) {
                TextView gphCopyLink = a10.f68958f;
                Intrinsics.checkNotNullExpressionValue(gphCopyLink, "gphCopyLink");
                gphCopyLink.setVisibility(0);
            } else if (i10 == 3) {
                TextView gphActionViewGiphy = a10.f68957e;
                Intrinsics.checkNotNullExpressionValue(gphActionViewGiphy, "gphActionViewGiphy");
                gphActionViewGiphy.setVisibility(0);
            }
        }
        setBackgroundDrawable(new ColorDrawable(0));
        setOutsideTouchable(true);
    }

    private final View.OnClickListener b() {
        return new a();
    }

    private final View.OnClickListener h() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(String str) {
        Context context = this.f19159f;
        Object systemService = context != null ? context.getSystemService("clipboard") : null;
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("Giphy", str));
    }

    private final View.OnClickListener m() {
        return new e();
    }

    private final void o() {
        getContentView().measure(-2, -2);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "contentView");
        setWidth(contentView.getMeasuredWidth());
    }

    private final View.OnClickListener p() {
        return new f();
    }

    @m8.g
    public final GPHActions[] c() {
        return this.f19160g;
    }

    @m8.h
    public final Context d() {
        return this.f19159f;
    }

    @m8.h
    public final Media e() {
        return this.f19158e;
    }

    @m8.g
    public final Function1<String, Unit> f() {
        return this.f19155b;
    }

    @m8.g
    public final Function1<String, Unit> g() {
        return this.f19154a;
    }

    public final void j(@m8.h Media media) {
        boolean contains;
        User user;
        String username;
        String str;
        String string;
        this.f19158e = media;
        TextView textView = this.f19157d.f68955c;
        Intrinsics.checkNotNullExpressionValue(textView, "contentViewBinding.gphActionMore");
        textView.setVisibility(8);
        if (media == null || media.isAnonymous()) {
            return;
        }
        contains = ArraysKt___ArraysKt.contains(this.f19160g, GPHActions.SearchMore);
        if (!contains || Intrinsics.areEqual(com.giphy.sdk.tracking.f.e(media), Boolean.TRUE) || (user = media.getUser()) == null || (username = user.getUsername()) == null) {
            return;
        }
        TextView textView2 = this.f19157d.f68955c;
        Intrinsics.checkNotNullExpressionValue(textView2, "contentViewBinding.gphActionMore");
        Context context = this.f19159f;
        if (context == null || (string = context.getString(p.o.f18176f1)) == null) {
            str = null;
        } else {
            str = String.format(string, Arrays.copyOf(new Object[]{username}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "java.lang.String.format(this, *args)");
        }
        textView2.setText(str);
        TextView textView3 = this.f19157d.f68955c;
        Intrinsics.checkNotNullExpressionValue(textView3, "contentViewBinding.gphActionMore");
        textView3.setVisibility(0);
        o();
    }

    public final void k(@m8.g Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f19155b = function1;
    }

    public final void l(@m8.g Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f19154a = function1;
    }

    public final void n(boolean z9) {
        TextView textView = this.f19157d.f68956d;
        Intrinsics.checkNotNullExpressionValue(textView, "contentViewBinding.gphActionRemove");
        textView.setVisibility(z9 ? 0 : 8);
        o();
    }
}
