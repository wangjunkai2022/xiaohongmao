package com.qennnsad.aknkaksd.presentation.module.auth;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AuthActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Le5/b;", "Landroid/view/LayoutInflater;", "layoutInflater", "j0", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "<init>", "()V", "k", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class AuthActivity extends Hilt_AuthActivity<e5.b> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    public static final a f50991k = new a(null);

    /* compiled from: AuthActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\b\u001a\u00020\u0007*\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;", "", "Landroid/content/Context;", "", "startFragmentId", "", "keepSession", "", "c", "(Landroid/content/Context;Ljava/lang/Integer;Z)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void d(a aVar, Context context, Integer num, boolean z9, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                num = null;
            }
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            aVar.c(context, num, z9);
        }

        @JvmStatic
        @JvmOverloads
        public final void a(@m8.g Context context) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            d(this, context, null, false, 3, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void b(@m8.g Context context, @m8.h @IdRes Integer num) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            d(this, context, num, false, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void c(@m8.g Context context, @m8.h @IdRes Integer num, boolean z9) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intent intent = new Intent(context, AuthActivity.class);
            if (!z9) {
                intent.addFlags(268468224);
            }
            intent.putExtra("fragment_id", num);
            intent.putExtra(com.qennnsad.aknkaksd.presentation.module.auth.a.f51011c, z9);
            context.startActivity(intent);
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void k0(@m8.g Context context) {
        f50991k.a(context);
    }

    @JvmStatic
    @JvmOverloads
    public static final void l0(@m8.g Context context, @m8.h @IdRes Integer num) {
        f50991k.b(context, num);
    }

    @JvmStatic
    @JvmOverloads
    public static final void m0(@m8.g Context context, @m8.h @IdRes Integer num, boolean z9) {
        f50991k.c(context, num, z9);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @m8.g
    /* renamed from: j0 */
    public e5.b I(@m8.g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        e5.b c10 = e5.b.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        Bundle extras;
        int i4;
        super.onCreate(bundle);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        b0(((NavHostFragment) findFragmentById).getNavController());
        Intent intent = getIntent();
        if (intent == null || (extras = intent.getExtras()) == null || (i4 = extras.getInt("fragment_id")) == 0) {
            return;
        }
        M().navigate(i4);
    }
}
