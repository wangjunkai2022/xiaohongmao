package com.giphy.sdk.ui.universallist;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.views.GifView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SmartGifViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \n2\u00020\u0001:\u0001\tB\u001b\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\u0010\u0012\u001a\u00060\u000fR\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u0012\u001a\u00060\u000fR\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/giphy/sdk/ui/universallist/c;", "Lcom/giphy/sdk/ui/universallist/j;", "Lkotlin/Function0;", "", "onLoad", "", "c", "", "data", "b", "d", "Lcom/giphy/sdk/ui/views/GifView;", "a", "Lcom/giphy/sdk/ui/views/GifView;", "gifView", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "Lcom/giphy/sdk/ui/universallist/e$a;", "adapterHelper", "f", "()Z", "isGifLoaded", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c extends j {

    /* renamed from: a  reason: collision with root package name */
    private final GifView f18862a;

    /* renamed from: b  reason: collision with root package name */
    private final e.a f18863b;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final b f18861d = new b(null);
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<ViewGroup, e.a, j> f18860c = a.f18864a;

    /* compiled from: SmartGifViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/c;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/c;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function2<ViewGroup, e.a, c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18864a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final c invoke(@m8.g ViewGroup parent, @m8.g e.a adapterHelper) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
            Context context = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            GifView gifView = new GifView(context, null, 0, 6, null);
            if (Build.VERSION.SDK_INT >= 23) {
                gifView.setForeground(context.getResources().getDrawable(p.h.f17730e3));
            }
            return new c(gifView, adapterHelper);
        }
    }

    /* compiled from: SmartGifViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011RO\u0010\f\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/giphy/sdk/ui/universallist/c$b;", "", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "createViewHolder", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        @m8.g
        public final Function2<ViewGroup, e.a, j> a() {
            return c.f18860c;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: SmartGifViewHolder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.ui.universallist.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0143c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0 f18865a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0143c(Function0 function0) {
            super(0);
            this.f18865a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f18865a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@m8.g View itemView, @m8.g e.a adapterHelper) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
        this.f18863b = adapterHelper;
        this.f18862a = (GifView) itemView;
    }

    private final boolean f() {
        return this.f18862a.getLoaded();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0124 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // com.giphy.sdk.ui.universallist.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(@m8.h java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.universallist.c.b(java.lang.Object):void");
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public boolean c(@m8.g Function0<Unit> onLoad) {
        Intrinsics.checkNotNullParameter(onLoad, "onLoad");
        if (!f()) {
            this.f18862a.setOnPingbackGifLoadSuccess(new C0143c(onLoad));
        }
        return f();
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
        this.f18862a.E();
    }
}
