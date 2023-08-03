package com.google.android.exoplayer2.ext.mediasession;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ext.mediasession.b;
import com.google.android.exoplayer2.ext.mediasession.c;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.util.j0;
import com.google.android.exoplayer2.v1;

/* compiled from: RepeatModeActionProvider.java */
/* loaded from: classes2.dex */
public final class d implements b.e {

    /* renamed from: e  reason: collision with root package name */
    public static final int f22044e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final String f22045f = "ACTION_EXO_REPEAT_MODE";

    /* renamed from: a  reason: collision with root package name */
    private final int f22046a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f22047b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence f22048c;

    /* renamed from: d  reason: collision with root package name */
    private final CharSequence f22049d;

    public d(Context context) {
        this(context, 3);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.e
    public void a(v1 v1Var, j jVar, String str, @Nullable Bundle bundle) {
        int k10 = v1Var.k();
        int a10 = j0.a(k10, this.f22046a);
        if (k10 != a10) {
            jVar.e(v1Var, a10);
        }
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.b.e
    public PlaybackStateCompat.CustomAction b(v1 v1Var) {
        CharSequence charSequence;
        int i4;
        int k10 = v1Var.k();
        if (k10 == 1) {
            charSequence = this.f22048c;
            i4 = c.d.f21924c;
        } else if (k10 != 2) {
            charSequence = this.f22049d;
            i4 = c.d.f21923b;
        } else {
            charSequence = this.f22047b;
            i4 = c.d.f21922a;
        }
        return new PlaybackStateCompat.CustomAction.b(f22045f, charSequence, i4).a();
    }

    public d(Context context, int i4) {
        this.f22046a = i4;
        this.f22047b = context.getString(c.h.f22002a);
        this.f22048c = context.getString(c.h.f22004c);
        this.f22049d = context.getString(c.h.f22003b);
    }
}
