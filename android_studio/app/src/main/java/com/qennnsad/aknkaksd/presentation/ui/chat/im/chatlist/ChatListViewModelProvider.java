package com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist;

import androidx.lifecycle.ViewModel;
import com.im.freechat.ui.chatlist.ChatListViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: ChatListViewModelProvider.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001b\u0010\n\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\t¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;", "Landroidx/lifecycle/ViewModel;", "Lcom/im/freechat/sdk/d;", "a", "Lcom/im/freechat/sdk/d;", "uiManager", "Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "b", "Lkotlin/Lazy;", "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "viewModel", "<init>", "(Lcom/im/freechat/sdk/d;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatListViewModelProvider extends ViewModel {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.sdk.d f52625a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f52626b;

    /* compiled from: ChatListViewModelProvider.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "a", "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<ChatListViewModel> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ChatListViewModel invoke() {
            Scope h4;
            com.im.freechat.sdk.d dVar = ChatListViewModelProvider.this.f52625a;
            if (dVar instanceof org.koin.core.component.b) {
                h4 = ((org.koin.core.component.b) dVar).getScope();
            } else {
                h4 = dVar.getKoin().I().h();
            }
            return (ChatListViewModel) ((ViewModel) h4.p(Reflection.getOrCreateKotlinClass(ChatListViewModel.class), null, null));
        }
    }

    @u7.a
    public ChatListViewModelProvider(@m8.g com.im.freechat.sdk.d uiManager) {
        Intrinsics.checkNotNullParameter(uiManager, "uiManager");
        this.f52625a = uiManager;
        this.f52626b = LazyKt.lazy(new a());
    }

    @m8.g
    public final ChatListViewModel b() {
        return (ChatListViewModel) this.f52626b.getValue();
    }
}
