package com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.sdk.a;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.qennnsad.aknkaksd.util.o0;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FriendRequestFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 32\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J&\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/¨\u00064"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;", "Landroidx/fragment/app/Fragment;", "", "b0", "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "list", "Y", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroy", "", "a", "Ljava/lang/String;", "LOG_TAG", "", "b", "Lkotlin/Lazy;", "a0", "()Z", h.f52599a, "Lcom/im/freechat/sdk/a$a;", "c", "Lcom/im/freechat/sdk/a$a;", "suspendRunner", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;", "d", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;", "adapter", "Landroidx/recyclerview/widget/RecyclerView;", "e", "Landroidx/recyclerview/widget/RecyclerView;", "chatRequestList", "Landroid/widget/ImageView;", "f", "Landroid/widget/ImageView;", "ivEmpty", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "tvEmpty", "<init>", "()V", "h", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g extends Fragment {
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    public static final a f52586h = new a(null);
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f52587a = "ChatRequestsFragment";
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f52588b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final a.C0327a f52589c;

    /* renamed from: d  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d f52590d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView f52591e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f52592f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f52593g;

    /* compiled from: FriendRequestFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g$a;", "", "", h.f52599a, "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final g a(boolean z9) {
            g gVar = new g();
            Bundle bundle = new Bundle();
            bundle.putBoolean(h.f52599a, z9);
            gVar.setArguments(bundle);
            return gVar;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((FriendStatus) t9).getInvitedTime()), Long.valueOf(((FriendStatus) t10).getInvitedTime()));
            return compareValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendRequestFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<FriendStatus, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g FriendStatus it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SDKManager.d().x(g.this.f52589c, it.getUser().getUserId(), true);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FriendStatus friendStatus) {
            a(friendStatus);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendRequestFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<FriendStatus, Unit> {
        d() {
            super(1);
        }

        public final void a(@m8.g FriendStatus it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (g.this.a0()) {
                SDKManager.d().x(g.this.f52589c, it.getUser().getUserId(), false);
            } else {
                SDKManager.d().e(g.this.f52589c, it.getUser().getUserId());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FriendStatus friendStatus) {
            a(friendStatus);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FriendRequestFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function1<List<? extends FriendStatus>, Unit> {
        e() {
            super(1);
        }

        public final void a(@m8.g List<FriendStatus> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            g.this.Y(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends FriendStatus> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FriendRequestFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class f extends Lambda implements Function1<List<? extends FriendStatus>, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g List<FriendStatus> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            g.this.Y(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends FriendStatus> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FriendRequestFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.g$g  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0432g extends Lambda implements Function0<Boolean> {
        C0432g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(g.this.requireArguments().getBoolean(h.f52599a));
        }
    }

    public g() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new C0432g());
        this.f52588b = lazy;
        this.f52589c = new a.C0327a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(List<FriendStatus> list) {
        List sortedWith;
        o0.a(this.f52587a, "Chat Requests callback: " + list);
        RecyclerView recyclerView = this.f52591e;
        TextView textView = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatRequestList");
            recyclerView = null;
        }
        final boolean canScrollVertically = recyclerView.canScrollVertically(-1);
        com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d dVar = this.f52590d;
        if (dVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            dVar = null;
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new b());
        dVar.submitList(sortedWith, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.f
            @Override // java.lang.Runnable
            public final void run() {
                g.Z(canScrollVertically, this);
            }
        });
        ImageView imageView = this.f52592f;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivEmpty");
            imageView = null;
        }
        imageView.setVisibility(list.isEmpty() ? 0 : 8);
        TextView textView2 = this.f52593g;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvEmpty");
        } else {
            textView = textView2;
        }
        textView.setVisibility(list.isEmpty() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(boolean z9, g this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            return;
        }
        RecyclerView recyclerView = this$0.f52591e;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatRequestList");
            recyclerView = null;
        }
        recyclerView.scrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0() {
        return ((Boolean) this.f52588b.getValue()).booleanValue();
    }

    private final void b0() {
        TextView textView = this.f52593g;
        com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d dVar = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvEmpty");
            textView = null;
        }
        textView.setText(a0() ? "您还没有对话请求！" : "您还没有发送任何对话请求！");
        com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d dVar2 = new com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d(a0());
        dVar2.h(new c());
        dVar2.i(new d());
        this.f52590d = dVar2;
        RecyclerView recyclerView = this.f52591e;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatRequestList");
            recyclerView = null;
        }
        com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.d dVar3 = this.f52590d;
        if (dVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            dVar = dVar3;
        }
        recyclerView.setAdapter(dVar);
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_chat_requests_list, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.chat_request_list);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.chat_request_list)");
        this.f52591e = (RecyclerView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.iv_empty);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.iv_empty)");
        this.f52592f = (ImageView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.tv_empty);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.tv_empty)");
        this.f52593g = (TextView) findViewById3;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f52589c.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        b0();
        if (a0()) {
            SDKManager.d().r(this.f52589c, new e());
        } else {
            SDKManager.d().t(this.f52589c, new f());
        }
    }
}
