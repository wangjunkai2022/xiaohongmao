package com.im.freechat.ui.chat.userprofile;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.fragment.FragmentKt;
import androidx.viewpager2.widget.ViewPager2;
import b4.b;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.im.freechat.extend.r;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.chat.history.HistoryTab;
import com.im.freechat.ui.chat.history.HistoryTabFragment;
import com.im.freechat.ui.chat.userprofile.UserProfileViewModel;
import f4.v;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: UserProfileFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\r\u001a\u00020\u0006H\u0014J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eJ\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000eR\u001b\u0010\"\u001a\u00020\u001d8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;", "Lf4/v;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "t0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "H0", "Z", "Landroid/os/Bundle;", "bundle", "u0", "direction", "extras", "F0", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "G0", "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;", "b", "Lkotlin/Lazy;", "v0", "()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;", "viewModel", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UserProfileFragment extends com.im.freechat.base.f<UserProfileViewModel.Directions, v> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43164b;

    /* renamed from: c  reason: collision with root package name */
    private k4.a f43165c;

    /* compiled from: UserProfileFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UserProfileViewModel.Directions.values().length];
            iArr[UserProfileViewModel.Directions.BACK.ordinal()] = 1;
            iArr[UserProfileViewModel.Directions.CHAT_SELECTOR.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public UserProfileFragment() {
        UserProfileFragment$special$$inlined$viewModel$default$1 userProfileFragment$special$$inlined$viewModel$default$1 = new UserProfileFragment$special$$inlined$viewModel$default$1(this);
        this.f43164b = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(UserProfileViewModel.class), new UserProfileFragment$special$$inlined$viewModel$default$3(userProfileFragment$special$$inlined$viewModel$default$1), new UserProfileFragment$special$$inlined$viewModel$default$2(userProfileFragment$special$$inlined$viewModel$default$1, null, null, org.koin.android.ext.android.a.a(this)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UserProfileFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.W().f65790e;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flLoading");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        frameLayout.setVisibility(it.booleanValue() ? 0 : 8);
        this$0.setHasOptionsMenu(!it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(UserProfileFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        k4.a aVar = this$0.f43165c;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        HistoryTabFragment d4 = aVar.d(HistoryTab.Media);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(UserProfileFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        k4.a aVar = this$0.f43165c;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        HistoryTabFragment d4 = aVar.d(HistoryTab.Links);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(UserProfileFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        k4.a aVar = this$0.f43165c;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        HistoryTabFragment d4 = aVar.d(HistoryTab.Files);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.y0(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(UserProfileFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().I();
    }

    private final void t0(UserModel userModel) {
        char first;
        Unit unit;
        W().f65791f.f65875f.setText(userModel.getDisplayName());
        W().f65798m.setText(String.valueOf(userModel.getUserId()));
        TextView textView = W().f65796k;
        String bio = userModel.getBio();
        if (bio == null || bio.length() == 0) {
            LinearLayout linearLayout = W().f65792g;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.layoutBio");
            linearLayout.setVisibility(8);
        } else {
            LinearLayout linearLayout2 = W().f65792g;
            Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.layoutBio");
            linearLayout2.setVisibility(0);
            textView.setText(userModel.getBio());
        }
        TextView textView2 = W().f65791f.f65873d;
        first = StringsKt___StringsKt.first(userModel.getDisplayName());
        textView2.setText(String.valueOf(first));
        W().f65791f.f65873d.setBackgroundTintList(ColorStateList.valueOf(r.a(userModel.getDisplayName())));
        if (userModel.getAvatar() != null) {
            ImageView imageView = W().f65791f.f65872c;
            Intrinsics.checkNotNullExpressionValue(imageView, "binding.lHeader.ivIcon");
            imageView.setVisibility(0);
            ImageView imageView2 = W().f65791f.f65872c;
            Intrinsics.checkNotNullExpressionValue(imageView2, "binding.lHeader.ivIcon");
            com.im.freechat.extend.m.o(imageView2, userModel.getAvatar());
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            ImageView imageView3 = W().f65791f.f65872c;
            Intrinsics.checkNotNullExpressionValue(imageView3, "binding.lHeader.ivIcon");
            imageView3.setVisibility(8);
        }
        TextView textView3 = W().f65791f.f65874e;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        textView3.setText(com.im.freechat.extend.m.l(userModel, requireContext));
        setHasOptionsMenu(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UserProfileFragment this$0, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        k4.a aVar = this$0.f43165c;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        tab.setText(aVar.getPageTitle(i4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UserProfileFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.m.c(requireActivity, String.valueOf(this$0.Y().z()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(UserProfileFragment this$0, UserModel userModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (userModel != null) {
            this$0.t0(userModel);
        }
        this$0.requireActivity().invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UserProfileFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        k4.a aVar = this$0.f43165c;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        HistoryTabFragment d4 = aVar.d(HistoryTab.Groups);
        if (d4 != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            d4.m0(it);
        }
    }

    @Override // com.im.freechat.base.f
    /* renamed from: F0 */
    public void a0(@m8.g UserProfileViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        int i4 = a.$EnumSwitchMapping$0[direction.ordinal()];
        if (i4 == 1) {
            FragmentKt.findNavController(this).navigateUp();
        } else if (i4 != 2) {
        } else {
            FragmentKt.findNavController(this).navigate(b.j.O0, extras);
        }
    }

    public final void G0(@m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        UserProfileViewModel Y = Y();
        UserProfileViewModel.Directions directions = UserProfileViewModel.Directions.CHAT_DETAILS;
        extras.putString(k4.b.f84734a, requireArguments().getString(k4.b.f84734a));
        Unit unit = Unit.INSTANCE;
        Y.e(directions, extras);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: H0 */
    public v g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        v d4 = v.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        List listOf;
        int i4 = requireArguments().getInt(j.f43244a);
        boolean z9 = requireArguments().getBoolean(j.f43245b, false);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(HistoryTab.Members);
        this.f43165c = new k4.a(this, listOf);
        Y().F(i4, z9);
        ViewPager2 viewPager2 = W().f65793h;
        k4.a aVar = this.f43165c;
        k4.a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
            aVar = null;
        }
        viewPager2.setOffscreenPageLimit(aVar.getItemCount());
        k4.a aVar3 = this.f43165c;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageAdapter");
        } else {
            aVar2 = aVar3;
        }
        viewPager2.setAdapter(aVar2);
        viewPager2.setOrientation(0);
        new TabLayoutMediator(W().f65794i, W().f65793h, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.im.freechat.ui.chat.userprofile.i
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i10) {
                UserProfileFragment.w0(UserProfileFragment.this, tab, i10);
            }
        }).attach();
        Y().y().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.y0(UserProfileFragment.this, (UserModel) obj);
            }
        });
        Y().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.z0(UserProfileFragment.this, (List) obj);
            }
        });
        Y().D().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.A0(UserProfileFragment.this, (Boolean) obj);
            }
        });
        Y().E().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.B0(UserProfileFragment.this, (List) obj);
            }
        });
        Y().C().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.C0(UserProfileFragment.this, (List) obj);
            }
        });
        Y().A().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.userprofile.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserProfileFragment.D0(UserProfileFragment.this, (List) obj);
            }
        });
        W().f65787b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.userprofile.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserProfileFragment.E0(UserProfileFragment.this, view);
            }
        });
        W().f65798m.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.userprofile.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserProfileFragment.x0(UserProfileFragment.this, view);
            }
        });
        Toolbar root = W().f65795j.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.toolbar.root");
        i0(root);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@m8.g Menu menu, @m8.g MenuInflater inflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        inflater.inflate(b.n.f2187g, menu);
        if (Y().y().getValue() == null) {
            setHasOptionsMenu(false);
            return;
        }
        menu.findItem(b.j.f1895q0).setVisible(false);
        menu.findItem(b.j.M0).setVisible(false);
        menu.findItem(b.j.f1792g0).setVisible(false);
        menu.findItem(b.j.L0).setVisible(false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == b.j.f1895q0) {
            Y().w();
            return true;
        } else if (itemId == b.j.M0) {
            Y().N();
            return true;
        } else if (itemId == b.j.f1792g0) {
            Y().u();
            return true;
        } else if (itemId == b.j.L0) {
            Y().M();
            return true;
        } else if (itemId == 16908332) {
            com.im.freechat.base.f.d0(this, UserProfileViewModel.Directions.BACK, null, 2, null);
            return true;
        } else {
            super.onOptionsItemSelected(item);
            return true;
        }
    }

    public final void u0(@m8.g Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        c0(UserProfileViewModel.Directions.CHAT_SELECTOR, bundle);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: v0 */
    public UserProfileViewModel Y() {
        return (UserProfileViewModel) this.f43164b.getValue();
    }
}
