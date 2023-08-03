package com.qennnsad.aknkaksd.util;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ObservableUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000¨\u0006\u0003"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/f0;", "b", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class w0 {
    @m8.g
    public static final <T> io.reactivex.f0<T, T> b() {
        return v0.f55118a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final io.reactivex.e0 c(io.reactivex.z observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        return observable.subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c());
    }
}
