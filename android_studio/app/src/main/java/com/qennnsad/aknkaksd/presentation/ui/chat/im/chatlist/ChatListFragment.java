package com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.chatlist.ChatListViewModel;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.ui.widget.banner.BannerCarousel;
import com.qennnsad.aknkaksd.util.l;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: ChatListFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010TJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J&\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016R\u001b\u0010\u001b\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010M\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;", "Landroidx/fragment/app/Fragment;", "", "m0", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "list", "f0", "", "u0", "it", "n0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;", "f", "Lkotlin/Lazy;", "j0", "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;", "provider", "Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "g", "l0", "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/data/repository/m;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/repository/m;", "k0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "t0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/im/freechat/ui/chatlist/d;", "k", "Lcom/im/freechat/ui/chatlist/d;", "adapter", "Landroidx/recyclerview/widget/RecyclerView;", "l", "Landroidx/recyclerview/widget/RecyclerView;", "chatList", "Landroidx/appcompat/widget/SearchView;", "m", "Landroidx/appcompat/widget/SearchView;", "searchView", "Landroidx/core/widget/ContentLoadingProgressBar;", "n", "Landroidx/core/widget/ContentLoadingProgressBar;", "progress", "Landroid/widget/ImageView;", "o", "Landroid/widget/ImageView;", "ivEmpty", "Landroid/widget/TextView;", "p", "Landroid/widget/TextView;", "tvEmpty", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;", "q", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;", "bannerCarousel", "Lg5/a;", "localDataManager", "Lg5/a;", "i0", "()Lg5/a;", "s0", "(Lg5/a;)V", "Lx4/a;", "analytics", "Lx4/a;", "h0", "()Lx4/a;", "r0", "(Lx4/a;)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ChatListFragment extends j {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f52600f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f52601g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public g5.a f52602h;
    @u7.a

    /* renamed from: i  reason: collision with root package name */
    public m f52603i;
    @u7.a

    /* renamed from: j  reason: collision with root package name */
    public x4.a f52604j;

    /* renamed from: k  reason: collision with root package name */
    private com.im.freechat.ui.chatlist.d f52605k;

    /* renamed from: l  reason: collision with root package name */
    private RecyclerView f52606l;

    /* renamed from: m  reason: collision with root package name */
    private SearchView f52607m;

    /* renamed from: n  reason: collision with root package name */
    private ContentLoadingProgressBar f52608n;

    /* renamed from: o  reason: collision with root package name */
    private ImageView f52609o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f52610p;

    /* renamed from: q  reason: collision with root package name */
    private BannerCarousel f52611q;

    /* compiled from: ChatListFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Chat.Type.values().length];
            iArr[Chat.Type.SINGLE.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Chat, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g Chat chat) {
            Intrinsics.checkNotNullParameter(chat, "chat");
            int chatId = chat.getChatId();
            ChatListFragment chatListFragment = ChatListFragment.this;
            boolean z9 = chatListFragment.l0().z();
            SearchView searchView = chatListFragment.f52607m;
            if (searchView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchView");
                searchView = null;
            }
            searchView.setQuery("", false);
            if (z9) {
                FragmentActivity requireActivity = chatListFragment.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                Message lastChatMessage = chat.getLastChatMessage();
                com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(requireActivity, chatId, lastChatMessage != null ? Long.valueOf(lastChatMessage.getMessageId()) : null, null, null, null, 28, null);
                return;
            }
            FragmentActivity requireActivity2 = chatListFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity()");
            com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(requireActivity2, chatId, null, null, null, null, 30, null);
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
    public static final class c extends Lambda implements Function1<Chat, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g Chat it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ChatListFragment.this.n0(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
            a(chat);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d", "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;", "", s2.d.f93273b, "", "onQueryTextSubmit", "newText", "onQueryTextChange", "a", "Ljava/lang/String;", "prevQuery", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements SearchView.OnQueryTextListener {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private String f52621a;

        d() {
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
                java.lang.String r3 = r2.f52621a
                if (r3 == 0) goto L1a
                boolean r3 = kotlin.text.StringsKt.isBlank(r3)
                if (r3 == 0) goto L1b
            L1a:
                r0 = 1
            L1b:
                if (r0 != 0) goto L26
                com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment r3 = com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.this
                com.im.freechat.ui.chatlist.ChatListViewModel r3 = com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.d0(r3)
                r3.x()
            L26:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.d.onQueryTextChange(java.lang.String):boolean");
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
                r2.f52621a = r3
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
                com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment r1 = com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.this
                com.im.freechat.ui.chatlist.ChatListViewModel r1 = com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.d0(r1)
                r1.I(r3)
            L1a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.d.onQueryTextSubmit(java.lang.String):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<String, UrlTarget, Unit> {
        e() {
            super(2);
        }

        public final void a(@m8.g String url, @m8.g UrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            FragmentActivity requireActivity = ChatListFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            l.z(requireActivity, url, target, false, false, 12, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, UrlTarget urlTarget) {
            a(str, urlTarget);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            long longValue;
            int compareValues;
            Chat chat = (Chat) t10;
            Long updateSystemTime = chat.getUpdateSystemTime();
            long j4 = 0;
            if (updateSystemTime != null) {
                longValue = updateSystemTime.longValue();
            } else {
                Message lastChatMessage = chat.getLastChatMessage();
                Long valueOf = lastChatMessage != null ? Long.valueOf(lastChatMessage.getSendTime()) : null;
                longValue = valueOf != null ? valueOf.longValue() : 0L;
            }
            Long valueOf2 = Long.valueOf(longValue);
            Chat chat2 = (Chat) t9;
            Long updateSystemTime2 = chat2.getUpdateSystemTime();
            if (updateSystemTime2 != null) {
                j4 = updateSystemTime2.longValue();
            } else {
                Message lastChatMessage2 = chat2.getLastChatMessage();
                Long valueOf3 = lastChatMessage2 != null ? Long.valueOf(lastChatMessage2.getSendTime()) : null;
                if (valueOf3 != null) {
                    j4 = valueOf3.longValue();
                }
            }
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf2, Long.valueOf(j4));
            return compareValues;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            String draftMessage = ((Chat) t10).getDraftMessage();
            if (draftMessage == null) {
                draftMessage = "";
            }
            String draftMessage2 = ((Chat) t9).getDraftMessage();
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(draftMessage, draftMessage2 != null ? draftMessage2 : "");
            return compareValues;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            Long pinnedTime = ((Chat) t10).getPinnedTime();
            Long valueOf = Long.valueOf(pinnedTime != null ? pinnedTime.longValue() : 0L);
            Long pinnedTime2 = ((Chat) t9).getPinnedTime();
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(pinnedTime2 != null ? pinnedTime2.longValue() : 0L));
            return compareValues;
        }
    }

    /* compiled from: ChatListFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "a", "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class i extends Lambda implements Function0<ChatListViewModel> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ChatListViewModel invoke() {
            return ChatListFragment.this.j0().b();
        }
    }

    public ChatListFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ChatListFragment$special$$inlined$viewModels$default$2(new ChatListFragment$special$$inlined$viewModels$default$1(this)));
        this.f52600f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ChatListViewModelProvider.class), new ChatListFragment$special$$inlined$viewModels$default$3(lazy), new ChatListFragment$special$$inlined$viewModels$default$4(null, lazy), new ChatListFragment$special$$inlined$viewModels$default$5(this, lazy));
        lazy2 = LazyKt__LazyJVMKt.lazy(new i());
        this.f52601g = lazy2;
    }

    private final void f0(List<Chat> list) {
        RecyclerView recyclerView = this.f52606l;
        TextView textView = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatList");
            recyclerView = null;
        }
        final boolean canScrollVertically = recyclerView.canScrollVertically(-1);
        com.im.freechat.ui.chatlist.d dVar = this.f52605k;
        if (dVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            dVar = null;
        }
        dVar.submitList(u0(list), new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.d
            @Override // java.lang.Runnable
            public final void run() {
                ChatListFragment.g0(canScrollVertically, this);
            }
        });
        SearchView searchView = this.f52607m;
        if (searchView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchView");
            searchView = null;
        }
        boolean z9 = true;
        searchView.setVisibility(l0().z() || (list.isEmpty() ^ true) ? 0 : 8);
        ImageView imageView = this.f52609o;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivEmpty");
            imageView = null;
        }
        imageView.setVisibility(!l0().z() && list.isEmpty() ? 0 : 8);
        TextView textView2 = this.f52610p;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvEmpty");
        } else {
            textView = textView2;
        }
        textView.setVisibility((l0().z() || !list.isEmpty()) ? false : false ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(boolean z9, ChatListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            return;
        }
        RecyclerView recyclerView = this$0.f52606l;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatList");
            recyclerView = null;
        }
        recyclerView.scrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChatListViewModel l0() {
        return (ChatListViewModel) this.f52601g.getValue();
    }

    private final void m0() {
        RecyclerView recyclerView = this.f52606l;
        BannerCarousel bannerCarousel = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatList");
            recyclerView = null;
        }
        com.im.freechat.ui.chatlist.d dVar = new com.im.freechat.ui.chatlist.d();
        this.f52605k = dVar;
        dVar.i(new b());
        dVar.k(new c());
        recyclerView.setAdapter(dVar);
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        SearchView searchView = this.f52607m;
        if (searchView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchView");
            searchView = null;
        }
        searchView.setOnQueryTextListener(new d());
        BannerCarousel bannerCarousel2 = this.f52611q;
        if (bannerCarousel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerCarousel");
        } else {
            bannerCarousel = bannerCarousel2;
        }
        bannerCarousel.c(i0().b().getChatList(), k0(), h0(), new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(final Chat chat) {
        if (com.im.freechat.extend.g.e(chat) || com.im.freechat.extend.g.b(chat)) {
            return;
        }
        final int i4 = a.$EnumSwitchMapping$0[chat.getType().ordinal()] == 1 ? R.string.activity_main_chat_delete : R.string.activity_main_chat_delete_group;
        final int i10 = com.im.freechat.extend.g.d(chat) ? R.string.activity_main_chat_unpin : R.string.activity_main_chat_pin;
        final String[] strArr = {getString(i4)};
        new AlertDialog.Builder(requireContext()).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                ChatListFragment.o0(strArr, this, i4, chat, i10, dialogInterface, i11);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(String[] items, ChatListFragment this$0, int i4, Chat it, int i10, DialogInterface dialogInterface, int i11) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        String str = items[i11];
        if (Intrinsics.areEqual(str, this$0.getString(i4))) {
            this$0.l0().w(it.getChatId());
        } else if (Intrinsics.areEqual(str, this$0.getString(i10))) {
            this$0.l0().L(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(ChatListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ContentLoadingProgressBar contentLoadingProgressBar = this$0.f52608n;
        if (contentLoadingProgressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progress");
            contentLoadingProgressBar = null;
        }
        Intrinsics.checkNotNullExpressionValue(it, "it");
        contentLoadingProgressBar.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(ChatListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null) {
            return;
        }
        this$0.f0(list);
    }

    private final List<Chat> u0(List<Chat> list) {
        List<Chat> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new f());
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new g());
        }
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new h());
        }
        return mutableList;
    }

    @m8.g
    public final x4.a h0() {
        x4.a aVar = this.f52604j;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    @m8.g
    public final g5.a i0() {
        g5.a aVar = this.f52602h;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final ChatListViewModelProvider j0() {
        return (ChatListViewModelProvider) this.f52600f.getValue();
    }

    @m8.g
    public final m k0() {
        m mVar = this.f52603i;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_chat_list, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.chat_list);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.chat_list)");
        this.f52606l = (RecyclerView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.search);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.search)");
        this.f52607m = (SearchView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.progress);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.progress)");
        this.f52608n = (ContentLoadingProgressBar) findViewById3;
        View findViewById4 = inflate.findViewById(R.id.iv_empty);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.iv_empty)");
        this.f52609o = (ImageView) findViewById4;
        View findViewById5 = inflate.findViewById(R.id.tv_empty);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.tv_empty)");
        this.f52610p = (TextView) findViewById5;
        View findViewById6 = inflate.findViewById(R.id.banner_carousel);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.banner_carousel)");
        this.f52611q = (BannerCarousel) findViewById6;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        m0();
        l0().B().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.p0(ChatListFragment.this, (Boolean) obj);
            }
        });
        l0().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListFragment.q0(ChatListFragment.this, (List) obj);
            }
        });
    }

    public final void r0(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f52604j = aVar;
    }

    public final void s0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f52602h = aVar;
    }

    public final void t0(@m8.g m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f52603i = mVar;
    }
}
