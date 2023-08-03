package com.im.freechat.ui.create.choosechattype;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.im.freechat.base.f;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel;
import com.im.freechat.ui.create.choosemember.h;
import f4.n;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: ChooseChatTypeFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0014J\b\u0010\r\u001a\u00020\u0004H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;", "Lf4/n;", "", "t0", "s0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "x0", "Z", "onResume", "direction", "Landroid/os/Bundle;", "extras", "w0", "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;", "b", "Lkotlin/Lazy;", "p0", "()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;", "viewModel", "Lcom/im/freechat/ui/chatlist/d;", "c", "o0", "()Lcom/im/freechat/ui/chatlist/d;", "adapter", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChooseChatTypeFragment extends f<ChooseChatTypeViewModel.Directions, n> {
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43467b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43468c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChooseChatTypeFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<Chat, Unit> {
        a() {
            super(1);
        }

        public final void a(@g Chat chat) {
            Intrinsics.checkNotNullParameter(chat, "chat");
            ChooseChatTypeFragment.this.c0(ChooseChatTypeViewModel.Directions.NAVIGATE_CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(chat.getChatId()))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    public ChooseChatTypeFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChooseChatTypeFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43467b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChooseChatTypeFragment$special$$inlined$inject$default$2(this, null, null));
        this.f43468c = lazy2;
    }

    private final com.im.freechat.ui.chatlist.d o0() {
        return (com.im.freechat.ui.chatlist.d) this.f43468c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(ChooseChatTypeFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.o0().submitList(list != null ? com.im.freechat.extend.g.f(list) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(ChooseChatTypeFragment this$0, UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LinearLayout linearLayout = this$0.W().f65652d;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llGroup");
        boolean z9 = true;
        linearLayout.setVisibility((userInfo == null || !userInfo.isSuperUser()) ? false : false ? 0 : 8);
    }

    private final void s0() {
        FragmentActivity requireActivity = requireActivity();
        AppCompatActivity appCompatActivity = requireActivity instanceof AppCompatActivity ? (AppCompatActivity) requireActivity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(W().f65654f);
            return;
        }
        Toolbar toolbar = W().f65654f;
        Intrinsics.checkNotNullExpressionValue(toolbar, "binding.toolbar");
        toolbar.setVisibility(8);
    }

    private final void t0() {
        W().f65653e.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.choosechattype.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseChatTypeFragment.u0(ChooseChatTypeFragment.this, view);
            }
        });
        W().f65652d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.choosechattype.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseChatTypeFragment.v0(ChooseChatTypeFragment.this, view);
            }
        });
        RecyclerView recyclerView = W().f65650b;
        com.im.freechat.ui.chatlist.d o02 = o0();
        o02.i(new a());
        recyclerView.setAdapter(o02);
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(ChooseChatTypeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c0(ChooseChatTypeViewModel.Directions.NAVIGATE_CHOOSE_MEMBER, BundleKt.bundleOf(TuplesKt.to(h.f43539c, Chat.Type.SINGLE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(ChooseChatTypeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c0(ChooseChatTypeViewModel.Directions.NAVIGATE_CHOOSE_MEMBER, BundleKt.bundleOf(TuplesKt.to(h.f43539c, Chat.Type.GROUP)));
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        Y().m();
        t0();
        Y().k().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.choosechattype.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChooseChatTypeFragment.q0(ChooseChatTypeFragment.this, (List) obj);
            }
        });
        Y().l().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.choosechattype.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChooseChatTypeFragment.r0(ChooseChatTypeFragment.this, (UserInfo) obj);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        s0();
    }

    @Override // com.im.freechat.base.f
    @g
    /* renamed from: p0 */
    public ChooseChatTypeViewModel Y() {
        return (ChooseChatTypeViewModel) this.f43467b.getValue();
    }

    @Override // com.im.freechat.base.f
    /* renamed from: w0 */
    public void a0(@g ChooseChatTypeViewModel.Directions direction, @g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @g
    /* renamed from: x0 */
    public n g0(@g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        n d4 = n.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }
}
