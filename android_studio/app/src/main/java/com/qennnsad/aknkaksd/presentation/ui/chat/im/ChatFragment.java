package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.FriendRequestActivity;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.SettingsFragment;
import com.qennnsad.aknkaksd.util.s1;
import e5.a1;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: ChatFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/a1;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;", "", "D0", "B0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "G0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "F0", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;", "k", "Lkotlin/Lazy;", "A0", "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;", "viewModel", "<init>", "()V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ChatFragment extends k<a1, d> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52543k;

    /* compiled from: ChatFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$a;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "getItemCount", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "", "a", "Ljava/util/List;", "fragments", "Landroidx/fragment/app/FragmentManager;", "fm", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends FragmentStateAdapter {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final List<Fragment> f52551a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g List<? extends Fragment> fragments, @m8.g FragmentManager fm, @m8.g Lifecycle lifecycle) {
            super(fm, lifecycle);
            Intrinsics.checkNotNullParameter(fragments, "fragments");
            Intrinsics.checkNotNullParameter(fm, "fm");
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            this.f52551a = fragments;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @m8.g
        public Fragment createFragment(int i4) {
            return this.f52551a.get(i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f52551a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
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
            ChatFragment.this.startActivity(new Intent(ChatFragment.this.requireContext(), FriendRequestActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatFragment.kt */
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
            ChatFragment.this.c0().navigate(R.id.toSearchUser);
        }
    }

    public ChatFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ChatFragment$special$$inlined$viewModels$default$2(new ChatFragment$special$$inlined$viewModels$default$1(this)));
        this.f52543k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ChatViewModel.class), new ChatFragment$special$$inlined$viewModels$default$3(lazy), new ChatFragment$special$$inlined$viewModels$default$4(null, lazy), new ChatFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    private final void B0() {
        e0().s().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatFragment.C0(ChatFragment.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(ChatFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ImageView imageView = ((a1) this$0.m0()).f62233c;
        Intrinsics.checkNotNullExpressionValue(imageView, "requireBinding().indicator");
        imageView.setVisibility((list == null || list.isEmpty()) ^ true ? 0 : 8);
    }

    private final void D0() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Fragment[]{new ChatListFragment(), new ContactListFragment(), new SettingsFragment()});
        final String[] strArr = {getString(R.string.im_tab_chats_list), getString(R.string.im_tab_contacts), getString(R.string.im_tab_settings)};
        a1 a1Var = (a1) m0();
        ViewPager2 viewPager2 = a1Var.f62237g;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycle");
        viewPager2.setAdapter(new a(listOf, childFragmentManager, lifecycle));
        new TabLayoutMediator(a1Var.f62236f, a1Var.f62237g, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.f
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                ChatFragment.E0(strArr, tab, i4);
            }
        }).attach();
        ImageView ivChatNotifications = a1Var.f62234d;
        Intrinsics.checkNotNullExpressionValue(ivChatNotifications, "ivChatNotifications");
        s1.U(ivChatNotifications, 0L, new b(), 1, null);
        ImageView ivChatSubscribe = a1Var.f62235e;
        Intrinsics.checkNotNullExpressionValue(ivChatSubscribe, "ivChatSubscribe");
        s1.U(ivChatSubscribe, 0L, new c(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(String[] titles, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(titles, "$titles");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setText(titles[i4]);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: A0 */
    public ChatViewModel e0() {
        return (ChatViewModel) this.f52543k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: F0 */
    public void onEvent(@m8.g d e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: G0 */
    public a1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        a1 d4 = a1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        D0();
        B0();
    }
}
