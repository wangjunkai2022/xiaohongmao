package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.PinMessageConfig;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import e5.n1;
import io.sentry.protocol.t;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: PurchaseItemListFragmentDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 A2\u00020\u0001:\u0001BB\u0007¢\u0006\u0004\b?\u0010@J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J$\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u001a\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011R\u001b\u0010\u0019\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R$\u0010+\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00109\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006C"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "", "t0", "Le5/n1;", "o0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "onDestroyView", "view", "onViewCreated", "Landroid/text/Editable;", "content", "n0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "f", "Lkotlin/Lazy;", "g0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/data/websocket/j;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/websocket/j;", "h0", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "s0", "(Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "wsObjectPool", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;", "k", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;", "purchaseAdapter", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "l", "Ljava/util/List;", "items", "binding", "Le5/n1;", "e0", "()Le5/n1;", "q0", "(Le5/n1;)V", "Lg5/a;", "localDataManager", "Lg5/a;", "f0", "()Lg5/a;", "r0", "(Lg5/a;)V", "Lx4/a;", "analytics", "Lx4/a;", "d0", "()Lx4/a;", "p0", "(Lx4/a;)V", "<init>", "()V", "m", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class PurchaseItemListFragmentDialog extends com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.a {
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    public static final a f53371m = new a(null);
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f53372f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(PlayerViewModel.class), new PurchaseItemListFragmentDialog$special$$inlined$activityViewModels$default$1(this), new PurchaseItemListFragmentDialog$special$$inlined$activityViewModels$default$2(null, this), new PurchaseItemListFragmentDialog$special$$inlined$activityViewModels$default$3(this));
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private n1 f53373g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public g5.a f53374h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.websocket.j f53375i;
    @u7.a

    /* renamed from: j  reason: collision with root package name */
    public x4.a f53376j;

    /* renamed from: k  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c f53377k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final List<ItemTypeAttrs> f53378l;

    /* compiled from: PurchaseItemListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$a;", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final PurchaseItemListFragmentDialog a() {
            return new PurchaseItemListFragmentDialog();
        }
    }

    /* compiled from: PurchaseItemListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J*\u0010\u000b\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000e"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$b", "Landroid/text/TextWatcher;", "", "s", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "", "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            PurchaseItemListFragmentDialog.this.n0(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PurchaseItemListFragmentDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            PurchaseItemListFragmentDialog.this.dismiss();
        }
    }

    /* compiled from: PurchaseItemListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n1 f53386b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(n1 n1Var) {
            super(1);
            this.f53386b = n1Var;
        }

        public final void a(int i4) {
            PurchaseItemListFragmentDialog.this.n0(this.f53386b.f62770c.getText());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PurchaseItemListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\f8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0013"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$e", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "", "getItemOffsets", "", "a", "I", "()I", "px", "b", "spanCount", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        private final int f53387a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53388b = 3;

        e(RecyclerView recyclerView) {
            this.f53387a = recyclerView.getResources().getDimensionPixelSize(R.dimen.activity_horizontal_margin);
        }

        public final int a() {
            return this.f53387a;
        }

        public final int b() {
            return this.f53388b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@m8.g Rect outRect, @m8.g View view, @m8.g RecyclerView parent, @m8.g RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            outRect.setEmpty();
            if (parent.getChildLayoutPosition(view) % this.f53388b == 0) {
            }
            outRect.set(this.f53387a, 0, this.f53387a, this.f53387a * 3);
        }
    }

    public PurchaseItemListFragmentDialog() {
        List<ItemTypeAttrs> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ItemTypeAttrs[]{ItemTypeAttrs.Type1, ItemTypeAttrs.Type3, ItemTypeAttrs.Type5, ItemTypeAttrs.Type2, ItemTypeAttrs.Type4, ItemTypeAttrs.Type6});
        this.f53378l = listOf;
    }

    @JvmStatic
    @m8.g
    public static final PurchaseItemListFragmentDialog i0() {
        return f53371m.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(PurchaseItemListFragmentDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(PurchaseItemListFragmentDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(PurchaseItemListFragmentDialog this$0, n1 this_with, View view) {
        String replace$default;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c cVar = this$0.f53377k;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("purchaseAdapter");
            cVar = null;
        }
        ItemTypeAttrs g4 = cVar.g();
        if (g4 != null) {
            PlayerViewModel g02 = this$0.g0();
            replace$default = StringsKt__StringsJVMKt.replace$default(this_with.f62770c.getText().toString(), "\n", " ", false, 4, (Object) null);
            g02.G0(g4, replace$default, new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(LiveSummary liveSummary, PurchaseItemListFragmentDialog this$0, LiveSummary liveSummary2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(liveSummary2, liveSummary)) {
            return;
        }
        this$0.dismiss();
    }

    private final void t0() {
        final Dialog dialog = new Dialog(requireContext(), R.style.BottomDialog);
        dialog.setContentView(R.layout.dialog_pinned_msg_intro);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
        }
        Window window2 = dialog.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
        }
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.d
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                PurchaseItemListFragmentDialog.u0(dialog, this, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(Dialog this_apply, PurchaseItemListFragmentDialog this$0, DialogInterface dialogInterface) {
        PinMessageConfig pinMessage;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = (TextView) this_apply.findViewById(R.id.tvContent);
        ConfigBean e4 = this$0.f0().e();
        textView.setText((e4 == null || (pinMessage = e4.getPinMessage()) == null || (r1 = pinMessage.getIntro()) == null) ? "" : "");
    }

    @m8.g
    public final x4.a d0() {
        x4.a aVar = this.f53376j;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    @m8.h
    public final n1 e0() {
        return this.f53373g;
    }

    @m8.g
    public final g5.a f0() {
        g5.a aVar = this.f53374h;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final PlayerViewModel g0() {
        return (PlayerViewModel) this.f53372f.getValue();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.websocket.j h0() {
        com.qennnsad.aknkaksd.data.websocket.j jVar = this.f53375i;
        if (jVar != null) {
            return jVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wsObjectPool");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
        if (r4.g() != null) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n0(@m8.h android.text.Editable r4) {
        /*
            r3 = this;
            e5.n1 r0 = r3.o0()
            android.widget.TextView r0 = r0.f62769b
            r1 = 1
            r2 = 0
            if (r4 == 0) goto L17
            int r4 = r4.length()
            if (r4 <= 0) goto L12
            r4 = 1
            goto L13
        L12:
            r4 = 0
        L13:
            if (r4 != r1) goto L17
            r4 = 1
            goto L18
        L17:
            r4 = 0
        L18:
            if (r4 == 0) goto L2b
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c r4 = r3.f53377k
            if (r4 != 0) goto L24
            java.lang.String r4 = "purchaseAdapter"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            r4 = 0
        L24:
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs r4 = r4.g()
            if (r4 == 0) goto L2b
            goto L2c
        L2b:
            r1 = 0
        L2c:
            r0.setEnabled(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.n0(android.text.Editable):void");
    }

    @m8.g
    public final n1 o0() {
        n1 n1Var = this.f53373g;
        Intrinsics.checkNotNull(n1Var);
        return n1Var;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        n1 d4 = n1.d(inflater, viewGroup, false);
        this.f53373g = d4;
        ConstraintLayout root = d4.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…ing = this\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f53373g = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        final n1 o02 = o0();
        o02.f62770c.addTextChangedListener(new b());
        o02.f62771d.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PurchaseItemListFragmentDialog.j0(PurchaseItemListFragmentDialog.this, view2);
            }
        });
        o02.f62772e.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PurchaseItemListFragmentDialog.k0(PurchaseItemListFragmentDialog.this, view2);
            }
        });
        o02.f62769b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PurchaseItemListFragmentDialog.l0(PurchaseItemListFragmentDialog.this, o02, view2);
            }
        });
        RecyclerView recyclerView = o02.f62773f;
        com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c cVar = new com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c(this.f53378l, new d(o02));
        recyclerView.setLayoutManager(new StaggeredGridLayoutManager(3, 0));
        this.f53377k = cVar;
        recyclerView.setAdapter(cVar);
        recyclerView.addItemDecoration(new e(recyclerView));
        final LiveSummary value = g0().n0().getValue();
        g0().n0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PurchaseItemListFragmentDialog.m0(LiveSummary.this, this, (LiveSummary) obj);
            }
        });
    }

    public final void p0(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53376j = aVar;
    }

    public final void q0(@m8.h n1 n1Var) {
        this.f53373g = n1Var;
    }

    public final void r0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53374h = aVar;
    }

    public final void s0(@m8.g com.qennnsad.aknkaksd.data.websocket.j jVar) {
        Intrinsics.checkNotNullParameter(jVar, "<set-?>");
        this.f53375i = jVar;
    }
}
