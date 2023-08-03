package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class w1 implements DialogInterface.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ w1 f54031a = new w1();

    private /* synthetic */ w1() {
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
        boolean X1;
        X1 = WebsocketActivity.X1(dialogInterface, i4, keyEvent);
        return X1;
    }
}
