package com.koushikdutta.async.future;

import com.koushikdutta.async.future.Converter;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class h implements ThenFutureCallback {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ h f44456a = new h();

    private /* synthetic */ h() {
    }

    @Override // com.koushikdutta.async.future.ThenFutureCallback
    public final Future a(Object obj) {
        Future z9;
        z9 = Converter.z((Converter.MimedData) obj);
        return z9;
    }
}
