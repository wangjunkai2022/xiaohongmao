package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.FragmentTransaction;
import com.didi.live.spring.R;
import com.im.freechat.ui.settings.data_usage.DataUsageFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DataUsageActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\n\u001a\u00020\bH\u0014¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/DataUsageActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Le5/e;", "Landroid/view/LayoutInflater;", "layoutInflater", "j0", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onStart", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class DataUsageActivity extends Hilt_DataUsageActivity<e5.e> {
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @m8.g
    /* renamed from: j0 */
    public e5.e I(@m8.g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        e5.e c10 = e5.e.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.frame, new DataUsageFragment());
        beginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(AppCompatResources.getDrawable(this, R.color.main_color));
        }
    }
}
