package com.im.freechat.ui.widget;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.lifecycle.Observer;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class d implements Observer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ChatDetailsAudioPlayLayout f43720a;

    public /* synthetic */ d(ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout) {
        this.f43720a = chatDetailsAudioPlayLayout;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        ChatDetailsAudioPlayLayout.d(this.f43720a, (PlaybackStateCompat) obj);
    }
}
