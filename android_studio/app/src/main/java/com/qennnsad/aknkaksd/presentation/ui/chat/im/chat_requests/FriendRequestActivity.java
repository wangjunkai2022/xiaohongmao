package com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager2.widget.ViewPager2;
import com.didi.live.spring.R;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.g;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FriendRequestActivity.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/FriendRequestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onOptionsItemSelected", "", "item", "Landroid/view/MenuItem;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendRequestActivity extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(String[] titles, TabLayout.Tab tab, int i4) {
        Intrinsics.checkNotNullParameter(titles, "$titles");
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.setText(titles[i4]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        List listOf;
        super.onCreate(bundle);
        setContentView(R.layout.activity_chat_requests);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ActionBar supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setDisplayShowHomeEnabled(true);
        }
        g.a aVar = g.f52586h;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new g[]{aVar.a(true), aVar.a(false)});
        final String[] strArr = {getString(R.string.im_tab_received), getString(R.string.im_tab_sent)};
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycle");
        ChatFragment.a aVar2 = new ChatFragment.a(listOf, supportFragmentManager, lifecycle);
        ViewPager2 viewPager2 = (ViewPager2) findViewById(R.id.view_pager);
        viewPager2.setAdapter(aVar2);
        new TabLayoutMediator((TabLayout) findViewById(R.id.tab_layout), viewPager2, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.a
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i4) {
                FriendRequestActivity.H(strArr, tab, i4);
            }
        }).attach();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(@m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
