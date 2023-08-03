package com.qennnsad.aknkaksd.presentation.module.auth;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.navigation.ViewKt;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GuestRedirectFragment.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestRedirectFragment;", "Landroidx/fragment/app/Fragment;", "()V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GuestRedirectFragment extends Fragment {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(View view, View view2) {
        Intrinsics.checkNotNullExpressionValue(view, "");
        ViewKt.findNavController(view).navigate(R.id.action_guestRedirectFragment_to_signUpFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(GuestRedirectFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireActivity().finish();
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        final View inflate = inflater.inflate(R.layout.fragment_guest_redirect, viewGroup, false);
        inflate.findViewById(R.id.btn_link_phone).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GuestRedirectFragment.W(inflate, view);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Toolbar toolbar = (Toolbar) view.findViewById(R.id.toolbar);
        AppCompatActivity a10 = com.qennnsad.aknkaksd.util.extentions.a.a(this);
        if (a10 != null) {
            a10.setSupportActionBar(toolbar);
        }
        ((ImageButton) toolbar.findViewById(R.id.imgbtn_toolbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GuestRedirectFragment.X(GuestRedirectFragment.this, view2);
            }
        });
    }
}
