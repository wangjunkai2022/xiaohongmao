package com.im.freechat.ui.chat.chat_selector;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.google.android.exoplayer2.text.ttml.d;
import com.im.freechat.base.f;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel;
import f4.m;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;

/* compiled from: ChatSelectorFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u001a\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\n\u001a\u00020\tH\u0014J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016R\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0011\u001a\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;", "Lf4/m;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", d.W, "t0", "", "Z", "direction", "Landroid/os/Bundle;", "extras", "s0", "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;", "b", "Lkotlin/Lazy;", "q0", "()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;", "viewModel", "Lcom/im/freechat/ui/chatlist/d;", "c", "n0", "()Lcom/im/freechat/ui/chatlist/d;", "adapter", "", "d", "p0", "()[J", k4.b.f84737d, "", "e", "o0", "()I", k4.b.f84738e, "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatSelectorFragment extends f<ChatSelectorViewModel.Directions, m> {
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f42267b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42268c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f42269d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f42270e;

    /* compiled from: ChatSelectorFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<Integer> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final Integer invoke() {
            return Integer.valueOf(ChatSelectorFragment.this.requireArguments().getInt(k4.b.f84734a));
        }
    }

    /* compiled from: ChatSelectorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0016\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()[J"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<long[]> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @h
        /* renamed from: a */
        public final long[] invoke() {
            return ChatSelectorFragment.this.requireArguments().getLongArray(k4.b.f84737d);
        }
    }

    /* compiled from: ChatSelectorFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function1<Chat, Unit> {
        c() {
            super(1);
        }

        public final void a(@g Chat chat) {
            Intrinsics.checkNotNullParameter(chat, "chat");
            int chatId = chat.getChatId();
            ChatSelectorFragment chatSelectorFragment = ChatSelectorFragment.this;
            chatSelectorFragment.Y().e(ChatSelectorViewModel.Directions.CHAT, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(chatId)), TuplesKt.to(k4.b.f84737d, chatSelectorFragment.p0()), TuplesKt.to(k4.b.f84738e, Integer.valueOf(chatSelectorFragment.o0()))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    public ChatSelectorFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        ChatSelectorFragment$special$$inlined$viewModel$default$1 chatSelectorFragment$special$$inlined$viewModel$default$1 = new ChatSelectorFragment$special$$inlined$viewModel$default$1(this);
        this.f42267b = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ChatSelectorViewModel.class), new ChatSelectorFragment$special$$inlined$viewModel$default$3(chatSelectorFragment$special$$inlined$viewModel$default$1), new ChatSelectorFragment$special$$inlined$viewModel$default$2(chatSelectorFragment$special$$inlined$viewModel$default$1, null, null, org.koin.android.ext.android.a.a(this)));
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new ChatSelectorFragment$special$$inlined$inject$default$1(this, null, null));
        this.f42268c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new b());
        this.f42269d = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new a());
        this.f42270e = lazy3;
    }

    private final com.im.freechat.ui.chatlist.d n0() {
        return (com.im.freechat.ui.chatlist.d) this.f42268c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int o0() {
        return ((Number) this.f42270e.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long[] p0() {
        return (long[]) this.f42269d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(ChatSelectorFragment this$0, List list) {
        List<Chat> list2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.ui.chatlist.d n02 = this$0.n0();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!com.im.freechat.extend.g.a((Chat) obj)) {
                    arrayList.add(obj);
                }
            }
            list2 = com.im.freechat.extend.g.f(arrayList);
        } else {
            list2 = null;
        }
        n02.submitList(list2);
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        RecyclerView recyclerView = W().f65639b;
        recyclerView.setAdapter(n0());
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        Y().k();
        Y().j().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.chat_selector.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatSelectorFragment.r0(ChatSelectorFragment.this, (List) obj);
            }
        });
        n0().i(new c());
        Toolbar root = W().f65640c.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.toolbar.root");
        i0(root);
    }

    @Override // com.im.freechat.base.f
    @g
    /* renamed from: q0 */
    public ChatSelectorViewModel Y() {
        return (ChatSelectorViewModel) this.f42267b.getValue();
    }

    @Override // com.im.freechat.base.f
    /* renamed from: s0 */
    public void a0(@g ChatSelectorViewModel.Directions direction, @g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @g
    /* renamed from: t0 */
    public m g0(@g LayoutInflater inflater, @h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m d4 = m.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }
}
