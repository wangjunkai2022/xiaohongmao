package com.qennnsad.aknkaksd.presentation.module.contributors;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentTransaction;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContributorsActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \b2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "<init>", "()V", "d", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ContributorsActivity extends Hilt_ContributorsActivity {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final a f51292d = new a(null);

    /* compiled from: ContributorsActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity$a;", "", "Landroid/app/Activity;", "", "userId", "", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void a(@m8.g Activity activity, @m8.g String userId) {
            Intrinsics.checkNotNullParameter(activity, "<this>");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intent intent = new Intent(activity, ContributorsActivity.class);
            intent.putExtra(com.qennnsad.aknkaksd.presentation.module.contributors.a.f51336a, userId);
            activity.startActivity(intent);
        }
    }

    @JvmStatic
    public static final void M(@m8.g Activity activity, @m8.g String str) {
        f51292d.a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_fragment_container);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        ContributorsFragment contributorsFragment = new ContributorsFragment();
        Pair[] pairArr = new Pair[1];
        Bundle extras = getIntent().getExtras();
        pairArr[0] = TuplesKt.to(com.qennnsad.aknkaksd.presentation.module.contributors.a.f51336a, extras != null ? extras.getString(com.qennnsad.aknkaksd.presentation.module.contributors.a.f51336a) : null);
        contributorsFragment.setArguments(BundleKt.bundleOf(pairArr));
        Unit unit = Unit.INSTANCE;
        beginTransaction.add(R.id.fragment_container, contributorsFragment).commit();
    }
}
