package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;

/* loaded from: classes3.dex */
public abstract class Hilt_PkRightPlayerActivity extends PlayerActivity {

    /* renamed from: j3  reason: collision with root package name */
    private boolean f53636j3 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_PkRightPlayerActivity.this.K2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hilt_PkRightPlayerActivity() {
        H2();
    }

    private void H2() {
        addOnContextAvailableListener(new a());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.Hilt_PlayerActivity
    protected void K2() {
        if (this.f53636j3) {
            return;
        }
        this.f53636j3 = true;
        ((e) ((q6.d) q6.i.a(this)).generatedComponent()).i((PkRightPlayerActivity) q6.i.a(this));
    }
}
