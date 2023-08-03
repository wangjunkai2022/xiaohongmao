package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.PinMessageConfig;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.repository.m;
import io.sentry.protocol.t;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryListFragmentDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 J2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002:\u0001KB\u0007¢\u0006\u0004\bH\u0010IJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016R\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0014X\u0094D¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010 \u001a\u00020\u001b8\u0014X\u0094D¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010#\u001a\u00020\u001b8\u0014X\u0094D¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b\"\u0010\u001fR\u001a\u0010%\u001a\u00020\u001b8\u0014X\u0094D¢\u0006\f\n\u0004\b$\u0010\u001d\u001a\u0004\b\u001d\u0010\u001fR\u001a\u0010(\u001a\u00020\u001b8\u0014X\u0094D¢\u0006\f\n\u0004\b&\u0010\u001d\u001a\u0004\b'\u0010\u001fR\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u0010/R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00105R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u0010?R\"\u0010B\u001a\u00020A8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006L"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/k;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/j;", "", "w0", "Landroid/view/View;", "view", "c0", "", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "data", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/qennnsad/aknkaksd/data/repository/m;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/repository/m;", "q0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "v0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "", "k", "I", "X", "()I", "layoutId", "", "l", "Z", "a0", "()Z", "shouldExpand", "m", "b0", "shouldLock", "n", "shouldCancel", "o", "d0", "isRounded", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;", "p", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;", "historyAdapter", "Landroid/widget/ImageView;", "q", "Landroid/widget/ImageView;", "icClose", "r", "icHint", "Landroid/widget/TextView;", "s", "Landroid/widget/TextView;", "btnConfirm", "t", "tvHeader", "Landroid/widget/EditText;", "u", "Landroid/widget/EditText;", "etContent", "Landroidx/recyclerview/widget/RecyclerView;", "v", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lg5/a;", "localDataManager", "Lg5/a;", "p0", "()Lg5/a;", "u0", "(Lg5/a;)V", "<init>", "()V", "w", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class g extends com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.a<k, j> implements k {
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    public static final a f53343w = new a(null);
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    public static final String f53344x = "AID";
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public m f53345i;
    @u7.a

    /* renamed from: j  reason: collision with root package name */
    public g5.a f53346j;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f53348l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f53349m;

    /* renamed from: p  reason: collision with root package name */
    private c f53352p;

    /* renamed from: q  reason: collision with root package name */
    private ImageView f53353q;

    /* renamed from: r  reason: collision with root package name */
    private ImageView f53354r;

    /* renamed from: s  reason: collision with root package name */
    private TextView f53355s;

    /* renamed from: t  reason: collision with root package name */
    private TextView f53356t;

    /* renamed from: u  reason: collision with root package name */
    private EditText f53357u;

    /* renamed from: v  reason: collision with root package name */
    private RecyclerView f53358v;

    /* renamed from: k  reason: collision with root package name */
    private final int f53347k = R.layout.fragment_pinned_msg_purchase_dialog;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f53350n = true;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f53351o = true;

    /* compiled from: HistoryListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g$a;", "", "", "anchorId", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;", "a", "ARG_AID", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final g a(@m8.g String anchorId) {
            Intrinsics.checkNotNullParameter(anchorId, "anchorId");
            g gVar = new g();
            Bundle bundle = new Bundle();
            bundle.putString(g.f53344x, anchorId);
            gVar.setArguments(bundle);
            return gVar;
        }
    }

    /* compiled from: HistoryListFragmentDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\f8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0013"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g$b", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "", "getItemOffsets", "", "a", "I", "()I", "px", "b", "spanCount", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        private final int f53359a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53360b = 3;

        b(RecyclerView recyclerView) {
            this.f53359a = recyclerView.getResources().getDimensionPixelSize(R.dimen.activity_vertical_margin);
        }

        public final int a() {
            return this.f53359a;
        }

        public final int b() {
            return this.f53360b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@m8.g Rect outRect, @m8.g View view, @m8.g RecyclerView parent, @m8.g RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            outRect.setEmpty();
            parent.getChildLayoutPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            Object valueOf = adapter != null ? Integer.valueOf(adapter.getItemCount() - 1) : Boolean.FALSE;
            if (valueOf instanceof Integer) {
                ((Number) valueOf).intValue();
            }
            outRect.set(0, 0, 0, this.f53359a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(g this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(g this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.w0();
    }

    @JvmStatic
    @m8.g
    public static final g t0(@m8.g String str) {
        return f53343w.a(str);
    }

    private final void w0() {
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
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.d
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                g.x0(dialog, this, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(Dialog this_apply, g this$0, DialogInterface dialogInterface) {
        PinMessageConfig pinMessage;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = (TextView) this_apply.findViewById(R.id.tvContent);
        ConfigBean e4 = this$0.p0().e();
        textView.setText((e4 == null || (pinMessage = e4.getPinMessage()) == null || (r1 = pinMessage.getIntro()) == null) ? "" : "");
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.k
    public void A(@m8.g List<PinnedMessageBean> data) {
        List<PinnedMessageBean> mutableList;
        Intrinsics.checkNotNullParameter(data, "data");
        c cVar = this.f53352p;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("historyAdapter");
            cVar = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) data);
        cVar.i(mutableList);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected int X() {
        return this.f53347k;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected boolean Z() {
        return this.f53350n;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected boolean a0() {
        return this.f53348l;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected boolean b0() {
        return this.f53349m;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected void c0(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Bundle arguments = getArguments();
        EditText editText = null;
        String string = arguments != null ? arguments.getString(f53344x) : null;
        View findViewById = view.findViewById(R.id.icClose);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.icClose)");
        this.f53353q = (ImageView) findViewById;
        View findViewById2 = view.findViewById(R.id.icHint);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.icHint)");
        this.f53354r = (ImageView) findViewById2;
        View findViewById3 = view.findViewById(R.id.btnConfirm);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.btnConfirm)");
        this.f53355s = (TextView) findViewById3;
        View findViewById4 = view.findViewById(R.id.etContent);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.etContent)");
        this.f53357u = (EditText) findViewById4;
        View findViewById5 = view.findViewById(R.id.recyclerView);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.recyclerView)");
        this.f53358v = (RecyclerView) findViewById5;
        View findViewById6 = view.findViewById(R.id.tvHeader);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.tvHeader)");
        this.f53356t = (TextView) findViewById6;
        ImageView imageView = this.f53353q;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icClose");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g.r0(g.this, view2);
            }
        });
        ImageView imageView2 = this.f53354r;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icHint");
            imageView2 = null;
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                g.s0(g.this, view2);
            }
        });
        TextView textView = this.f53355s;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnConfirm");
            textView = null;
        }
        textView.setVisibility(8);
        RecyclerView recyclerView = this.f53358v;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        c cVar = new c(q0(), null);
        this.f53352p = cVar;
        recyclerView.setAdapter(cVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        recyclerView.addItemDecoration(new b(recyclerView));
        TextView textView2 = this.f53356t;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvHeader");
            textView2 = null;
        }
        textView2.setText("醒目留言历史");
        EditText editText2 = this.f53357u;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etContent");
        } else {
            editText = editText2;
        }
        editText.setVisibility(8);
        if (string != null) {
            ((j) Y()).g(string);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.a
    protected boolean d0() {
        return this.f53351o;
    }

    @m8.g
    public final g5.a p0() {
        g5.a aVar = this.f53346j;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final m q0() {
        m mVar = this.f53345i;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    public final void u0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53346j = aVar;
    }

    public final void v0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f53345i = mVar;
    }
}
