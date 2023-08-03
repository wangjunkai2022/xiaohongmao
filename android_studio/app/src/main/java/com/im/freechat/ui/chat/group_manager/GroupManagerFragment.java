package com.im.freechat.ui.chat.group_manager;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.im.freechat.base.a;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.chat.group_manager.GroupManagerViewModel;
import com.im.freechat.ui.chat.history.HistoryTab;
import com.im.freechat.ui.chat.history.HistoryTabFragment;
import com.im.freechat.ui.contacts.ContactListFragment;
import f4.a2;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: GroupManagerFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\bS\u0010TJ\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0005H\u0014J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0006\u0010 \u001a\u00020\u0005J\u0018\u0010$\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0016J\b\u0010)\u001a\u00020\u0005H\u0016J\b\u0010*\u001a\u00020\u0005H\u0016R\u001b\u00100\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010-\u001a\u0004\b3\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010-\u001a\u0004\b8\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010-\u001a\u0004\b=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010-\u001a\u0004\bB\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR$\u0010M\u001a\u00020'2\u0006\u0010I\u001a\u00020'8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\bJ\u0010\u0015\"\u0004\bK\u0010LR\"\u0010R\u001a\u0010\u0012\f\u0012\n O*\u0004\u0018\u00010E0E0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010Q¨\u0006U"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;", "Lf4/s;", "Lcom/im/freechat/ui/contacts/e;", "", "S0", "d1", "c1", "Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "D0", "j1", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "member", "h1", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "f1", "Z", "Landroid/os/Bundle;", "bundle", "F0", "direction", "extras", "Z0", "a1", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", y.b.f83919g, "b1", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "onResume", "onDestroyView", "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;", "b", "Lkotlin/Lazy;", "K0", "()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;", "viewModel", "Lcom/im/freechat/ui/chat/group_manager/c;", "c", "G0", "()Lcom/im/freechat/ui/chat/group_manager/c;", "adapter", "Lcom/im/freechat/ui/create/choosemember/b;", "d", "H0", "()Lcom/im/freechat/ui/create/choosemember/b;", "candidatesAdapter", "Lk4/a;", "e", "J0", "()Lk4/a;", "pageAdapter", "Lcom/im/freechat/ui/contacts/ContactListFragment;", "f", "I0", "()Lcom/im/freechat/ui/contacts/ContactListFragment;", "contactsFragment", "", "g", "Ljava/lang/String;", "currentGroupAvatar", "value", "h", "g1", "(Z)V", "editing", "Landroidx/activity/result/ActivityResultLauncher;", "kotlin.jvm.PlatformType", ContextChain.TAG_INFRA, "Landroidx/activity/result/ActivityResultLauncher;", "pickImage", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GroupManagerFragment extends com.im.freechat.base.f<GroupManagerViewModel.Directions, f4.s> implements com.im.freechat.ui.contacts.e {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f42690b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42691c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f42692d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f42693e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f42694f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f42695g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f42696h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final ActivityResultLauncher<String> f42697i;

    /* compiled from: GroupManagerFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[GroupManagerViewModel.Directions.values().length];
            iArr[GroupManagerViewModel.Directions.MAIN_SCREEN.ordinal()] = 1;
            iArr[GroupManagerViewModel.Directions.USER_PROFILE.ordinal()] = 2;
            iArr[GroupManagerViewModel.Directions.CHAT_SELECTOR.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ChatMember.Role.values().length];
            iArr2[ChatMember.Role.NORMAL.ordinal()] = 1;
            iArr2[ChatMember.Role.MANAGER.ordinal()] = 2;
            iArr2[ChatMember.Role.OWNER.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ly8/a;", "invoke", "()Ly8/a;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<y8.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f42707a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final y8.a invoke() {
            return y8.b.b(Integer.valueOf((int) com.im.freechat.ui.create.choosemember.h.f43537a));
        }
    }

    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListFragment;", "a", "()Lcom/im/freechat/ui/contacts/ContactListFragment;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<ContactListFragment> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f42708a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ContactListFragment invoke() {
            return ContactListFragment.a.b(ContactListFragment.f43349i, ContactType.FOLLOW, false, false, false, false, 8, null);
        }
    }

    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"com/im/freechat/ui/chat/group_manager/GroupManagerFragment$d", "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "", "onTabSelected", "onTabUnselected", "onTabReselected", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements TabLayout.OnTabSelectedListener {
        d() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(@m8.h TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@m8.h TabLayout.Tab tab) {
            RecyclerView recyclerView = GroupManagerFragment.A0(GroupManagerFragment.this).f65738l;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.memberList");
            recyclerView.setVisibility(tab != null && tab.getPosition() == HistoryTab.Members.ordinal() ? 0 : 8);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(@m8.h TabLayout.Tab tab) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/ChatMember;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<ChatMember, Unit> {
        e() {
            super(1);
        }

        public final void a(@m8.g ChatMember it) {
            Intrinsics.checkNotNullParameter(it, "it");
            GroupManagerFragment.this.h1(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ChatMember chatMember) {
            a(chatMember);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/ChatMember;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<ChatMember, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g ChatMember it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.getContact().isCurrentUser()) {
                return;
            }
            GroupManagerFragment.this.c0(GroupManagerViewModel.Directions.USER_PROFILE, BundleKt.bundleOf(TuplesKt.to(com.im.freechat.ui.chat.userprofile.j.f43244a, Integer.valueOf(it.getContact().getUserId()))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ChatMember chatMember) {
            a(chatMember);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function1<List<? extends UserModel>, Unit> {
        g() {
            super(1);
        }

        public final void a(@m8.g List<UserModel> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (!it.isEmpty()) {
                GroupManagerFragment.A0(GroupManagerFragment.this).f65728b.show();
            } else {
                GroupManagerFragment.A0(GroupManagerFragment.this).f65728b.hide();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends UserModel> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", s2.d.f93273b, "", "typeAhead", "", "a", "(Ljava/lang/String;Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function2<String, Boolean, Unit> {
        h() {
            super(2);
        }

        public final void a(@m8.g String query, boolean z9) {
            Intrinsics.checkNotNullParameter(query, "query");
            ContactListFragment.E0(GroupManagerFragment.this.I0(), query, null, z9, 2, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, Boolean bool) {
            a(str, bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: TextView.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i implements TextWatcher {
        public i() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            char first;
            TextView textView = GroupManagerFragment.A0(GroupManagerFragment.this).f65736j.f65869f;
            if (editable == null || editable.length() == 0) {
                Intrinsics.checkNotNullExpressionValue(textView, "");
                textView.setVisibility(8);
                return;
            }
            Intrinsics.checkNotNullExpressionValue(textView, "");
            textView.setVisibility(0);
            first = StringsKt___StringsKt.first(editable);
            textView.setText(String.valueOf(first));
            com.im.freechat.utils.v.a(textView, editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: GroupManagerFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lk4/a;", "a", "()Lk4/a;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class j extends Lambda implements Function0<k4.a> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final k4.a invoke() {
            List listOf;
            GroupManagerFragment groupManagerFragment = GroupManagerFragment.this;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(HistoryTab.Groups);
            return new k4.a(groupManagerFragment, listOf);
        }
    }

    public GroupManagerFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new GroupManagerFragment$special$$inlined$inject$default$1(this, null, null));
        this.f42690b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new GroupManagerFragment$special$$inlined$inject$default$2(this, null, null));
        this.f42691c = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new GroupManagerFragment$special$$inlined$inject$default$3(this, null, b.f42707a));
        this.f42692d = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new j());
        this.f42693e = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(c.f42708a);
        this.f42694f = lazy5;
        ActivityResultLauncher<String> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.group_manager.p
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                GroupManagerFragment.e1(GroupManagerFragment.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…vatar(it)\n        }\n    }");
        this.f42697i = registerForActivityResult;
    }

    public static final /* synthetic */ f4.s A0(GroupManagerFragment groupManagerFragment) {
        return groupManagerFragment.W();
    }

    private final void D0(Chat chat) {
        char first;
        EditText editText = W().f65736j.f65867d;
        if (!this.f42696h) {
            editText.setText(chat.getTitle());
            String title = chat.getTitle();
            editText.setSelection(title != null ? title.length() : 0);
        }
        ImageView imageView = W().f65736j.f65868e;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.llHeader.ivAvatar");
        com.im.freechat.extend.m.o(imageView, chat.getAvatar());
        a2 a2Var = W().f65742p;
        if (!Intrinsics.areEqual(chat.getAvatar(), this.f42695g)) {
            ImageView ivToolbarAvatar = a2Var.f65414c;
            Intrinsics.checkNotNullExpressionValue(ivToolbarAvatar, "ivToolbarAvatar");
            com.im.freechat.extend.m.o(ivToolbarAvatar, chat.getAvatar());
            a2Var.f65414c.postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.group_manager.j
                @Override // java.lang.Runnable
                public final void run() {
                    GroupManagerFragment.E0(GroupManagerFragment.this);
                }
            }, 3000L);
        }
        TextView textView = a2Var.f65417f;
        String title2 = chat.getTitle();
        Intrinsics.checkNotNull(title2);
        first = StringsKt___StringsKt.first(title2);
        textView.setText(String.valueOf(first));
        TextView tvToolbarAvatar = a2Var.f65417f;
        Intrinsics.checkNotNullExpressionValue(tvToolbarAvatar, "tvToolbarAvatar");
        com.im.freechat.utils.v.a(tvToolbarAvatar, chat.getTitle());
        W().f65742p.f65418g.setText(chat.getTitle());
        LinearLayout linearLayout = W().f65737k;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llShareLink");
        linearLayout.setVisibility(Y().Z() && chat.getInvitationLink() != null ? 0 : 8);
        this.f42695g = chat.getAvatar();
        requireActivity().invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(GroupManagerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().M().setValue(Boolean.FALSE);
    }

    private final com.im.freechat.ui.chat.group_manager.c G0() {
        return (com.im.freechat.ui.chat.group_manager.c) this.f42691c.getValue();
    }

    private final com.im.freechat.ui.create.choosemember.b H0() {
        return (com.im.freechat.ui.create.choosemember.b) this.f42692d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ContactListFragment I0() {
        return (ContactListFragment) this.f42694f.getValue();
    }

    private final k4.a J0() {
        return (k4.a) this.f42693e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(GroupManagerFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.W().f65731e;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flLoading");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        frameLayout.setVisibility(it.booleanValue() ? 0 : 8);
        this$0.setHasOptionsMenu(!it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(GroupManagerFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ProgressBar progressBar = this$0.W().f65736j.f65865b;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.llHeader.avatarLoading");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        progressBar.setVisibility(it.booleanValue() ? 0 : 8);
        ProgressBar progressBar2 = this$0.W().f65742p.f65415d;
        Intrinsics.checkNotNullExpressionValue(progressBar2, "binding.toolbar.ivToolbarAvatarLoading");
        progressBar2.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(GroupManagerFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HistoryTabFragment d4 = this$0.J0().d(HistoryTab.Media);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(GroupManagerFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HistoryTabFragment d4 = this$0.J0().d(HistoryTab.Links);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(GroupManagerFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HistoryTabFragment d4 = this$0.J0().d(HistoryTab.Files);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(GroupManagerFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.G0().submitList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(GroupManagerFragment this$0, Chat chat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (chat == null) {
            return;
        }
        this$0.D0(chat);
    }

    private final void S0() {
        Toolbar root = W().f65742p.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.toolbar.root");
        i0(root);
        RecyclerView recyclerView = W().f65738l;
        recyclerView.setAdapter(G0());
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        com.im.freechat.ui.chat.group_manager.c G0 = G0();
        G0.i(new e());
        G0.h(new f());
        RecyclerView recyclerView2 = W().f65729c;
        recyclerView2.setAdapter(H0());
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(requireContext());
        flexboxLayoutManager.setFlexDirection(0);
        flexboxLayoutManager.setJustifyContent(0);
        recyclerView2.setLayoutManager(flexboxLayoutManager);
        W().f65733g.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupManagerFragment.T0(GroupManagerFragment.this, view);
            }
        });
        W().f65737k.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupManagerFragment.U0(GroupManagerFragment.this, view);
            }
        });
        H0().r(new g());
        H0().s(new h());
        W().f65728b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupManagerFragment.V0(GroupManagerFragment.this, view);
            }
        });
        if (!I0().isAdded()) {
            getChildFragmentManager().beginTransaction().add(b.j.Qc, I0()).commitNow();
        }
        W().f65736j.f65869f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupManagerFragment.W0(GroupManagerFragment.this, view);
            }
        });
        ViewPager2 viewPager2 = W().f65739m;
        viewPager2.setOffscreenPageLimit(J0().getItemCount());
        viewPager2.setAdapter(J0());
        viewPager2.setOrientation(0);
        viewPager2.setSaveEnabled(false);
        new TabLayoutMediator(W().f65741o, W().f65739m, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.im.freechat.ui.chat.group_manager.i
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                GroupManagerFragment.X0(GroupManagerFragment.this, tab, i4);
            }
        }).attach();
        W().f65741o.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new d());
        EditText editText = W().f65736j.f65867d;
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.im.freechat.ui.chat.group_manager.o
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                boolean Y0;
                Y0 = GroupManagerFragment.Y0(GroupManagerFragment.this, textView, i4, keyEvent);
                return Y0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(editText, "");
        editText.addTextChangedListener(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(GroupManagerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(GroupManagerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.d1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(GroupManagerFragment this$0, View view) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GroupManagerViewModel Y = this$0.Y();
        List<UserModel> l10 = this$0.H0().l();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(l10, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (UserModel userModel : l10) {
            arrayList.add(Integer.valueOf(userModel.getUserId()));
        }
        Y.F(arrayList);
        this$0.b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(GroupManagerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f42697i.launch("image/*");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(GroupManagerFragment this$0, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setText(this$0.J0().getPageTitle(i4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Y0(GroupManagerFragment this$0, TextView textView, int i4, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i4 == 0 || i4 == 6) {
            CharSequence text = textView != null ? textView.getText() : null;
            if (!(text == null || text.length() == 0)) {
                this$0.Y().m0(String.valueOf(textView != null ? textView.getText() : null));
                this$0.g1(false);
                return true;
            }
        }
        return false;
    }

    private final void c1() {
        LinearLayout linearLayout = W().f65735i;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llGroupManagementBtns");
        linearLayout.setVisibility(8);
        RecyclerView recyclerView = W().f65729c;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.candidatesList");
        recyclerView.setVisibility(0);
        ConstraintLayout constraintLayout = W().f65732f;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.historyTabs");
        constraintLayout.setVisibility(8);
        FrameLayout frameLayout = W().f65740n;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.rootLayout");
        frameLayout.setVisibility(0);
    }

    private final void d1() {
        String invitationLink;
        Chat value = Y().N().getValue();
        if (value == null || (invitationLink = value.getInvitationLink()) == null) {
            return;
        }
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.m.e(requireActivity, invitationLink, null, 2, null);
        j0(new a.b.C0302a(b.s.K1, null, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(GroupManagerFragment this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (uri != null) {
            this$0.Y().l0(uri);
        }
    }

    private final void g1(boolean z9) {
        this.f42696h = z9;
        j1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1(final ChatMember chatMember) {
        int i4;
        if (chatMember.getContact().isCurrentUser()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final UserModel contact = chatMember.getContact();
        arrayList.add(getString(b.s.f2313l2));
        if (Y().Y()) {
            int i10 = a.$EnumSwitchMapping$1[chatMember.getRole().ordinal()];
            if (i10 != 1) {
                if (i10 == 2 && Y().P() == ChatMember.Role.OWNER) {
                    arrayList.add(getString(b.s.H1));
                }
            } else {
                if (Y().P() == ChatMember.Role.OWNER) {
                    arrayList.add(getString(b.s.f2443y1));
                }
                if (chatMember.getStatus() == ChatMember.Status.NORMAL) {
                    i4 = b.s.f2433x1;
                } else {
                    i4 = b.s.G1;
                }
                arrayList.add(getString(i4));
                arrayList.add(getString(b.s.I1));
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                GroupManagerFragment.i1(arrayList, this, contact, chatMember, dialogInterface, i11);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(ArrayList items, GroupManagerFragment this$0, UserModel contact, ChatMember member, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contact, "$contact");
        Intrinsics.checkNotNullParameter(member, "$member");
        String str = (String) items.get(i4);
        if (Intrinsics.areEqual(str, this$0.getString(b.s.f2423w1))) {
            this$0.Y().L(contact.getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2229d0))) {
            this$0.Y().H(contact.getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2354p2))) {
            this$0.Y().k0(contact.getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2334n2))) {
            this$0.Y().j0(contact.getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2443y1))) {
            this$0.Y().W(member.getContact().getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.H1))) {
            this$0.Y().d0(member.getContact().getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.I1))) {
            this$0.Y().e0(member.getContact().getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2433x1))) {
            this$0.Y().G(member.getContact().getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.G1))) {
            this$0.Y().i0(member.getContact().getUserId());
        } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2313l2))) {
            this$0.Y().J(member.getContact().getUserId());
        }
    }

    private final void j1() {
        LinearLayout linearLayout = W().f65736j.f65866c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHeader.convNameLayout");
        linearLayout.setVisibility(this.f42696h ? 0 : 8);
        FrameLayout frameLayout = W().f65734h;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.llAddMemberParent");
        frameLayout.setVisibility(this.f42696h ^ true ? 0 : 8);
        ConstraintLayout constraintLayout = W().f65742p.f65416e;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.toolbar.toolbarContent");
        constraintLayout.setVisibility(this.f42696h ^ true ? 0 : 8);
        requireActivity().invalidateOptionsMenu();
    }

    public final void F0(@m8.g Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        c0(GroupManagerViewModel.Directions.CHAT_SELECTOR, bundle);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: K0 */
    public GroupManagerViewModel Y() {
        return (GroupManagerViewModel) this.f42690b.getValue();
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        S0();
        setHasOptionsMenu(true);
        Y().X(requireArguments().getInt(k4.b.f84734a));
        Y().S().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.L0(GroupManagerFragment.this, (Boolean) obj);
            }
        });
        Y().M().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.s
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.M0(GroupManagerFragment.this, (Boolean) obj);
            }
        });
        Y().T().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.N0(GroupManagerFragment.this, (List) obj);
            }
        });
        Y().R().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.O0(GroupManagerFragment.this, (List) obj);
            }
        });
        Y().Q().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.P0(GroupManagerFragment.this, (List) obj);
            }
        });
        Y().U().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.Q0(GroupManagerFragment.this, (List) obj);
            }
        });
        Y().N().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.group_manager.q
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GroupManagerFragment.R0(GroupManagerFragment.this, (Chat) obj);
            }
        });
    }

    @Override // com.im.freechat.base.f
    /* renamed from: Z0 */
    public void a0(@m8.g GroupManagerViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        int i4 = a.$EnumSwitchMapping$0[direction.ordinal()];
        if (i4 == 1) {
            requireActivity().finish();
        } else if (i4 == 2) {
            FragmentKt.findNavController(this).navigate(b.j.f1925t0, extras);
        } else if (i4 != 3) {
        } else {
            FragmentKt.findNavController(this).navigate(b.j.f1915s0, extras);
        }
    }

    public final void a1(@m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        GroupManagerViewModel Y = Y();
        GroupManagerViewModel.Directions directions = GroupManagerViewModel.Directions.CHAT_DETAILS;
        extras.putString(k4.b.f84734a, requireArguments().getString(k4.b.f84734a));
        Unit unit = Unit.INSTANCE;
        Y.e(directions, extras);
    }

    public final void b1() {
        LinearLayout linearLayout = W().f65735i;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llGroupManagementBtns");
        linearLayout.setVisibility(0);
        RecyclerView recyclerView = W().f65729c;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.candidatesList");
        recyclerView.setVisibility(8);
        H0().q();
        FrameLayout frameLayout = W().f65740n;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.rootLayout");
        frameLayout.setVisibility(8);
        ConstraintLayout constraintLayout = W().f65732f;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.historyTabs");
        constraintLayout.setVisibility(0);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: f1 */
    public f4.s g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.s d4 = f4.s.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@m8.g Menu menu, @m8.g MenuInflater inflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        inflater.inflate(b.n.f2185e, menu);
        boolean z9 = true;
        menu.setGroupVisible(b.j.T4, !this.f42696h && Y().Y());
        menu.findItem(b.j.Ga).getSubMenu().setGroupVisible(b.j.Y0, Y().Y());
        menu.findItem(b.j.f1885p0).setVisible(Y().Y());
        menu.findItem(b.j.G0).setVisible(Y().Y() && Y().Z());
        menu.findItem(b.j.H0).setVisible(Y().Y() && !Y().Z());
        menu.findItem(b.j.f1935u0).setVisible(Y().Y() && Y().V());
        menu.findItem(b.j.I0).setVisible((!Y().Y() || Y().V()) ? false : false);
    }

    @Override // com.im.freechat.base.f, androidx.fragment.app.Fragment
    public void onDestroyView() {
        W().f65739m.setAdapter(null);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == b.j.f1885p0) {
            g1(!this.f42696h);
        } else if (itemId == b.j.f1955w0) {
            Y().a0();
        } else if (itemId == 16908332) {
            if (this.f42696h) {
                g1(false);
            } else {
                RecyclerView recyclerView = W().f65729c;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.candidatesList");
                if (!(recyclerView.getVisibility() == 0)) {
                    return false;
                }
                b1();
            }
        } else if (itemId == b.j.H0) {
            Y().g0(true);
        } else if (itemId == b.j.G0) {
            Y().g0(false);
        } else if (itemId == b.j.I0) {
            Y().h0(true);
        } else if (itemId != b.j.f1935u0) {
            return super.onOptionsItemSelected(item);
        } else {
            Y().h0(false);
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        g1(false);
    }

    @Override // com.im.freechat.ui.contacts.e
    public void x(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        if (Y().I(contact)) {
            Toast.makeText(requireContext(), b.s.Y2, 0).show();
        } else {
            H0().j(contact);
        }
    }
}
