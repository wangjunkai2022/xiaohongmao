package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.sdk.d;
import com.im.freechat.ui.chat.chat_selector.ChatSelectorFragment;
import com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel;
import com.im.freechat.ui.chat.group_manager.GroupManagerFragment;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Navigator.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0018¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J.\u0010\f\u001a\u00020\u00042\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J$\u0010\u0015\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u000fJ\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;", "Lcom/im/freechat/sdk/d$a;", "Landroid/os/Bundle;", "extras", "", "e", "d", "Ljava/lang/Class;", "Landroidx/fragment/app/Fragment;", "fragmentClass", "", "backStack", "h", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;", "event", "", "g", "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;", "f", "keepBackStack", "addToBackStack", "b", "", "a", "Landroidx/fragment/app/FragmentActivity;", "Landroidx/fragment/app/FragmentActivity;", "activity", "<init>", "(Landroidx/fragment/app/FragmentActivity;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@n6.b
/* loaded from: classes3.dex */
public final class l implements d.a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final FragmentActivity f52698a;

    /* compiled from: Navigator.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ChatDetailsViewModel.Directions.values().length];
            iArr[ChatDetailsViewModel.Directions.BACK.ordinal()] = 1;
            iArr[ChatDetailsViewModel.Directions.NAVIGATE_GROUP_MANAGER.ordinal()] = 2;
            iArr[ChatDetailsViewModel.Directions.NAVIGATE_USER_PROFILE.ordinal()] = 3;
            iArr[ChatDetailsViewModel.Directions.NAVIGATE_SELECT_CHAT.ordinal()] = 4;
            iArr[ChatDetailsViewModel.Directions.NAVIGATE_IN_APP_BROWSER.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ChatSelectorViewModel.Directions.values().length];
            iArr2[ChatSelectorViewModel.Directions.CHAT.ordinal()] = 1;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @u7.a
    public l(@m8.g FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f52698a = activity;
    }

    public static /* synthetic */ void c(l lVar, Bundle bundle, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        if ((i4 & 4) != 0) {
            z10 = true;
        }
        lVar.b(bundle, z9, z10);
    }

    private final void d(Bundle bundle) {
        h(ChatSelectorFragment.class, bundle, "chat_selector");
    }

    private final void e(Bundle bundle) {
        h(GroupManagerFragment.class, bundle, "group_manager");
    }

    private final boolean f(ChatSelectorViewModel.Directions directions, Bundle bundle) {
        if (a.$EnumSwitchMapping$1[directions.ordinal()] == 1) {
            b(bundle, false, false);
            return true;
        }
        return false;
    }

    private final boolean g(ChatDetailsViewModel.Directions directions, Bundle bundle) {
        int i4 = a.$EnumSwitchMapping$0[directions.ordinal()];
        if (i4 == 1) {
            this.f52698a.onBackPressed();
        } else if (i4 == 2) {
            e(bundle);
        } else if (i4 == 3) {
            UserProfileActivity.f51833l.a(this.f52698a, String.valueOf(bundle.getInt(com.im.freechat.ui.chat.userprofile.j.f43244a)));
        } else if (i4 == 4) {
            d(bundle);
        } else if (i4 != 5) {
            return false;
        } else {
            SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
            FragmentActivity fragmentActivity = this.f52698a;
            String string = bundle.getString("url");
            if (string == null) {
                return false;
            }
            SimpleWebViewActivity.a.d(aVar, fragmentActivity, string, false, false, 6, null);
        }
        return true;
    }

    private final void h(Class<? extends Fragment> cls, Bundle bundle, String str) {
        FragmentTransaction add = this.f52698a.getSupportFragmentManager().beginTransaction().add(R.id.fragment_container_view, SDKManager.f41970a.p().d(cls, bundle, this));
        if (str != null) {
            add.addToBackStack(str);
        }
        add.commit();
    }

    static /* synthetic */ void i(l lVar, Class cls, Bundle bundle, String str, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            str = null;
        }
        lVar.h(cls, bundle, str);
    }

    @Override // com.im.freechat.sdk.d.a
    public boolean a(@m8.g Object event, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(extras, "extras");
        if (event instanceof ChatDetailsViewModel.Directions) {
            return g((ChatDetailsViewModel.Directions) event, extras);
        }
        if (event instanceof ChatSelectorViewModel.Directions) {
            return f((ChatSelectorViewModel.Directions) event, extras);
        }
        return false;
    }

    public final void b(@m8.h Bundle bundle, boolean z9, boolean z10) {
        if (!z9) {
            FragmentManager supportFragmentManager = this.f52698a.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
            int backStackEntryCount = supportFragmentManager.getBackStackEntryCount();
            for (int i4 = 0; i4 < backStackEntryCount; i4++) {
                supportFragmentManager.popBackStack();
            }
        }
        h(ChatDetailsFragment.class, bundle, z10 ? "chat_details" : null);
    }
}
