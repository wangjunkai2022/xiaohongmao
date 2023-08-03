package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.FragmentTransaction;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleWebViewActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Le5/f;", "Landroid/view/LayoutInflater;", "layoutInflater", "j0", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Lg5/a;", "localDataManager", "Lg5/a;", "k0", "()Lg5/a;", "l0", "(Lg5/a;)V", "<init>", "()V", "l", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class SimpleWebViewActivity extends Hilt_SimpleWebViewActivity<e5.f> {
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final a f52046l = new a(null);
    @u7.a

    /* renamed from: k  reason: collision with root package name */
    public g5.a f52047k;

    /* compiled from: SimpleWebViewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\t\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H\u0007¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;", "", "Landroid/content/Context;", "", "url", "", "hideNavBar", n.f52152c, "", "c", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void d(a aVar, Context context, String str, boolean z9, boolean z10, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            if ((i4 & 4) != 0) {
                z10 = false;
            }
            aVar.c(context, str, z9, z10);
        }

        @JvmStatic
        @JvmOverloads
        public final void a(@m8.g Context context, @m8.g String url) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(url, "url");
            d(this, context, url, false, false, 6, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void b(@m8.g Context context, @m8.g String url, boolean z9) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(url, "url");
            d(this, context, url, z9, false, 4, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void c(@m8.g Context context, @m8.g String url, boolean z9, boolean z10) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(url, "url");
            Intent intent = new Intent(context, SimpleWebViewActivity.class);
            intent.putExtra("url", url);
            intent.putExtra(n.f52151b, z9);
            intent.putExtra(n.f52152c, z10);
            context.startActivity(intent);
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void m0(@m8.g Context context, @m8.g String str) {
        f52046l.a(context, str);
    }

    @JvmStatic
    @JvmOverloads
    public static final void n0(@m8.g Context context, @m8.g String str, boolean z9) {
        f52046l.b(context, str, z9);
    }

    @JvmStatic
    @JvmOverloads
    public static final void o0(@m8.g Context context, @m8.g String str, boolean z9, boolean z10) {
        f52046l.c(context, str, z9, z10);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @m8.g
    /* renamed from: j0 */
    public e5.f I(@m8.g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        e5.f c10 = e5.f.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    @m8.g
    public final g5.a k0() {
        g5.a aVar = this.f52047k;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    public final void l0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f52047k = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        q5.b.h(this, false, false);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        SimpleWebViewFragment simpleWebViewFragment = new SimpleWebViewFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString("url", getIntent().getStringExtra("url"));
        bundle2.putBoolean(n.f52151b, getIntent().getBooleanExtra(n.f52151b, false));
        bundle2.putBoolean(n.f52152c, getIntent().getBooleanExtra(n.f52152c, false));
        simpleWebViewFragment.setArguments(bundle2);
        Unit unit = Unit.INSTANCE;
        beginTransaction.add(R.id.fragment_container, simpleWebViewFragment).commit();
    }
}
