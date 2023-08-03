package com.qennnsad.aknkaksd.presentation.module.auth;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GuestLinkPhoneNumberActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Le5/g;", "Landroid/view/LayoutInflater;", "layoutInflater", "j0", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "<init>", "()V", "k", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class GuestLinkPhoneNumberActivity extends Hilt_GuestLinkPhoneNumberActivity<e5.g> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    public static final a f50992k = new a(null);

    /* compiled from: GuestLinkPhoneNumberActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0007¨\u0006\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;", "", "Landroid/content/Context;", "", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void a(@m8.g Context context) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            context.startActivity(new Intent(context, GuestLinkPhoneNumberActivity.class));
        }
    }

    @JvmStatic
    public static final void k0(@m8.g Context context) {
        f50992k.a(context);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @m8.g
    /* renamed from: j0 */
    public e5.g I(@m8.g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        e5.g c10 = e5.g.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        b0(((NavHostFragment) findFragmentById).getNavController());
    }
}
