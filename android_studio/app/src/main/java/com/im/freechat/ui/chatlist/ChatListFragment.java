package com.im.freechat.ui.chatlist;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.core.os.BundleKt;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import b4.b;
import com.bigkoo.convenientbanner.ConvenientBanner;
import com.bigkoo.convenientbanner.holder.CBViewHolderCreator;
import com.bigkoo.convenientbanner.holder.Holder;
import com.bigkoo.convenientbanner.listener.OnItemClickListener;
import com.im.freechat.shared.entities.banner.Banner;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.chatlist.ChatListViewModel;
import io.sentry.protocol.t;
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
import timber.log.Timber;

/* compiled from: ChatListFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0016\u0010\u000e\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H\u0002J\u0012\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u001a\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0014J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0016R\u001b\u0010\"\u001a\u00020\u001d8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010'\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;", "Lf4/l;", "", "F0", "E0", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "list", "w0", "it", "I0", "Lcom/im/freechat/shared/entities/banner/Banner;", "u0", "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;", t.b.f83859d, "L0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "K0", "Z", "onResume", "direction", "Landroid/os/Bundle;", "extras", "H0", "Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "b", "Lkotlin/Lazy;", "z0", "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "viewModel", "Lcom/im/freechat/ui/chatlist/d;", "c", "y0", "()Lcom/im/freechat/ui/chatlist/d;", "adapter", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatListFragment extends com.im.freechat.base.f<ChatListViewModel.Directions, f4.l> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43249b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43250c;

    /* compiled from: ChatListFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Chat.Type.values().length];
            iArr[Chat.Type.SINGLE.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ChatListViewModel.NetworkState.values().length];
            iArr2[ChatListViewModel.NetworkState.RECONNECTING.ordinal()] = 1;
            iArr2[ChatListViewModel.NetworkState.SYNCHRONIZING.ordinal()] = 2;
            iArr2[ChatListViewModel.NetworkState.CONNECTED.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"com/im/freechat/ui/chatlist/ChatListFragment$b", "Lcom/bigkoo/convenientbanner/holder/CBViewHolderCreator;", "Landroid/view/View;", "itemView", "Lcom/bigkoo/convenientbanner/holder/Holder;", "Lcom/im/freechat/shared/entities/banner/Banner;", "a", "", "b", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements CBViewHolderCreator {
        b() {
        }

        @m8.g
        public Holder<Banner> a(@m8.h View view) {
            return new com.im.freechat.ui.main.a(view);
        }

        public int b() {
            return b.m.f2165x1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Chat, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g Chat chat) {
            Intrinsics.checkNotNullParameter(chat, "chat");
            int chatId = chat.getChatId();
            ChatListFragment chatListFragment = ChatListFragment.this;
            boolean z9 = chatListFragment.Y().z();
            ChatListFragment.s0(chatListFragment).f65621i.setQuery("", false);
            ChatListFragment.s0(chatListFragment).f65621i.setIconified(true);
            ChatListViewModel.Directions directions = ChatListViewModel.Directions.OPEN_CHAT;
            Bundle bundleOf = BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(chatId)));
            if (z9) {
                Message lastChatMessage = chat.getLastChatMessage();
                bundleOf.putLong(k4.b.f84735b, lastChatMessage != null ? lastChatMessage.getMessageId() : 0L);
            }
            Unit unit = Unit.INSTANCE;
            chatListFragment.c0(directions, bundleOf);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Chat, Unit> {
        d() {
            super(1);
        }

        public final void a(@m8.g Chat it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ChatListFragment.this.I0(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"com/im/freechat/ui/chatlist/ChatListFragment$e", "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;", "", s2.d.f93273b, "", "onQueryTextSubmit", "newText", "onQueryTextChange", "a", "Ljava/lang/String;", "prevQuery", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e implements SearchView.OnQueryTextListener {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private String f43259a;

        e() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
            if (r3 != false) goto L13;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onQueryTextChange(@m8.h java.lang.String r3) {
            /*
                r2 = this;
                r0 = 0
                r1 = 1
                if (r3 == 0) goto Ld
                boolean r3 = kotlin.text.StringsKt.isBlank(r3)
                if (r3 == 0) goto Lb
                goto Ld
            Lb:
                r3 = 0
                goto Le
            Ld:
                r3 = 1
            Le:
                if (r3 == 0) goto L26
                java.lang.String r3 = r2.f43259a
                if (r3 == 0) goto L1a
                boolean r3 = kotlin.text.StringsKt.isBlank(r3)
                if (r3 == 0) goto L1b
            L1a:
                r0 = 1
            L1b:
                if (r0 != 0) goto L26
                com.im.freechat.ui.chatlist.ChatListFragment r3 = com.im.freechat.ui.chatlist.ChatListFragment.this
                com.im.freechat.ui.chatlist.ChatListViewModel r3 = r3.Y()
                r3.x()
            L26:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chatlist.ChatListFragment.e.onQueryTextChange(java.lang.String):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0011  */
        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onQueryTextSubmit(@m8.h java.lang.String r3) {
            /*
                r2 = this;
                r2.f43259a = r3
                r0 = 0
                if (r3 == 0) goto Le
                boolean r1 = kotlin.text.StringsKt.isBlank(r3)
                if (r1 == 0) goto Lc
                goto Le
            Lc:
                r1 = 0
                goto Lf
            Le:
                r1 = 1
            Lf:
                if (r1 != 0) goto L1a
                com.im.freechat.ui.chatlist.ChatListFragment r1 = com.im.freechat.ui.chatlist.ChatListFragment.this
                com.im.freechat.ui.chatlist.ChatListViewModel r1 = r1.Y()
                r1.I(r3)
            L1a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chatlist.ChatListFragment.e.onQueryTextSubmit(java.lang.String):boolean");
        }
    }

    public ChatListFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChatListFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43249b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new ChatListFragment$special$$inlined$inject$default$2(this, null, null));
        this.f43250c = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(ChatListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ContentLoadingProgressBar contentLoadingProgressBar = this$0.W().f65620h;
        Intrinsics.checkNotNullExpressionValue(contentLoadingProgressBar, "binding.progressSmall");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        contentLoadingProgressBar.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ChatListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null) {
            return;
        }
        this$0.w0(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(ChatListFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.u0(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(ChatListFragment this$0, ChatListViewModel.NetworkState networkState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Timber.b bVar = Timber.f93860a;
        bVar.a("NetworkState: " + networkState, new Object[0]);
        this$0.L0(networkState);
    }

    private final void E0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        ((AppCompatActivity) requireActivity).setSupportActionBar(W().f65623k);
    }

    private final void F0() {
        W().f65618f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chatlist.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatListFragment.G0(ChatListFragment.this, view);
            }
        });
        RecyclerView recyclerView = W().f65616d;
        recyclerView.setAdapter(y0());
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        com.im.freechat.ui.chatlist.d y02 = y0();
        y02.i(new c());
        y02.k(new d());
        W().f65621i.setOnQueryTextListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(ChatListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.base.f.d0(this$0, ChatListViewModel.Directions.CHOOSE_CHAT_TYPE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0(final Chat chat) {
        int i4;
        int i10;
        if (com.im.freechat.extend.g.e(chat) || com.im.freechat.extend.g.a(chat) || com.im.freechat.extend.g.b(chat)) {
            return;
        }
        if (a.$EnumSwitchMapping$0[chat.getType().ordinal()] == 1) {
            i4 = b.s.N1;
        } else {
            i4 = b.s.O1;
        }
        final int i11 = i4;
        if (com.im.freechat.extend.g.d(chat)) {
            i10 = b.s.X1;
        } else {
            i10 = b.s.V1;
        }
        final int i12 = i10;
        final String[] strArr = {getString(i11)};
        new AlertDialog.Builder(requireContext()).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chatlist.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i13) {
                ChatListFragment.J0(strArr, this, i11, chat, i12, dialogInterface, i13);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(String[] items, ChatListFragment this$0, int i4, Chat it, int i10, DialogInterface dialogInterface, int i11) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        String str = items[i11];
        if (Intrinsics.areEqual(str, this$0.getString(i4))) {
            this$0.Y().w(it.getChatId());
        } else if (Intrinsics.areEqual(str, this$0.getString(i10))) {
            this$0.Y().L(it);
        }
    }

    private final void L0(ChatListViewModel.NetworkState networkState) {
        int i4 = networkState == null ? -1 : a.$EnumSwitchMapping$1[networkState.ordinal()];
        if (i4 == 1) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            ActionBar supportActionBar = ((AppCompatActivity) requireActivity).getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setTitle(b.s.f2220c2);
            }
            ProgressBar progressBar = W().f65622j;
            Intrinsics.checkNotNullExpressionValue(progressBar, "binding.syncProgress");
            progressBar.setVisibility(0);
        } else if (i4 == 2) {
            FragmentActivity requireActivity2 = requireActivity();
            Intrinsics.checkNotNull(requireActivity2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            ActionBar supportActionBar2 = ((AppCompatActivity) requireActivity2).getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.setTitle(b.s.W1);
            }
            ProgressBar progressBar2 = W().f65622j;
            Intrinsics.checkNotNullExpressionValue(progressBar2, "binding.syncProgress");
            progressBar2.setVisibility(0);
        } else if (i4 != 3) {
        } else {
            FragmentActivity requireActivity3 = requireActivity();
            Intrinsics.checkNotNull(requireActivity3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            ActionBar supportActionBar3 = ((AppCompatActivity) requireActivity3).getSupportActionBar();
            if (supportActionBar3 != null) {
                supportActionBar3.setTitle("");
            }
            ProgressBar progressBar3 = W().f65622j;
            Intrinsics.checkNotNullExpressionValue(progressBar3, "binding.syncProgress");
            progressBar3.setVisibility(8);
        }
    }

    public static final /* synthetic */ f4.l s0(ChatListFragment chatListFragment) {
        return chatListFragment.W();
    }

    private final void u0(final List<Banner> list) {
        if (!list.isEmpty()) {
            View view = W().f65615c;
            Intrinsics.checkNotNullExpressionValue(view, "binding.banner");
            view.setVisibility(0);
            W().f65615c.setPages(new b(), list).setPageIndicator(new int[]{b.h.Z5, b.h.f1478a6}).startTurning(5000L).setOnItemClickListener(new OnItemClickListener() { // from class: com.im.freechat.ui.chatlist.k
                public final void a(int i4) {
                    ChatListFragment.v0(list, this, i4);
                }
            }).setPageIndicatorAlign(ConvenientBanner.PageIndicatorAlign.CENTER_HORIZONTAL);
            return;
        }
        View view2 = W().f65615c;
        Intrinsics.checkNotNullExpressionValue(view2, "binding.banner");
        view2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(List list, ChatListFragment this$0, int i4) {
        Intrinsics.checkNotNullParameter(list, "$list");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (TextUtils.isEmpty(((Banner) list.get(i4)).getLink())) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(((Banner) list.get(i4)).getLink()));
        try {
            this$0.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    private final void w0(List<Chat> list) {
        final boolean canScrollVertically = W().f65616d.canScrollVertically(-1);
        y0().submitList(com.im.freechat.extend.g.f(list), new Runnable() { // from class: com.im.freechat.ui.chatlist.l
            @Override // java.lang.Runnable
            public final void run() {
                ChatListFragment.x0(canScrollVertically, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(boolean z9, ChatListFragment this$0) {
        f4.l X;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9 || (X = this$0.X()) == null || (recyclerView = X.f65616d) == null) {
            return;
        }
        recyclerView.scrollToPosition(0);
    }

    private final com.im.freechat.ui.chatlist.d y0() {
        return (com.im.freechat.ui.chatlist.d) this.f43250c.getValue();
    }

    @Override // com.im.freechat.base.f
    /* renamed from: H0 */
    public void a0(@m8.g ChatListViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: K0 */
    public f4.l g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.l d4 = f4.l.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        F0();
        Y().B().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chatlist.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.A0(ChatListFragment.this, (Boolean) obj);
            }
        });
        Y().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chatlist.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.B0(ChatListFragment.this, (List) obj);
            }
        });
        Y().y().observe(this, new Observer() { // from class: com.im.freechat.ui.chatlist.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.C0(ChatListFragment.this, (List) obj);
            }
        });
        Y().C().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chatlist.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.D0(ChatListFragment.this, (ChatListViewModel.NetworkState) obj);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        E0();
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: z0 */
    public ChatListViewModel Y() {
        return (ChatListViewModel) this.f43249b.getValue();
    }
}
