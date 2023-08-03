package com.qennnsad.aknkaksd.util;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: Event.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00028\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006R$\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/util/t;", ExifInterface.GPS_DIRECTION_TRUE, "", "a", "()Ljava/lang/Object;", "c", "Ljava/lang/Object;", "content", "", "<set-?>", "b", "Z", "()Z", "hasBeenHandled", "<init>", "(Ljava/lang/Object;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class t<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f55036a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f55037b;

    public t(T t9) {
        this.f55036a = t9;
    }

    @m8.h
    public final T a() {
        if (this.f55037b) {
            return null;
        }
        this.f55037b = true;
        return this.f55036a;
    }

    public final boolean b() {
        return this.f55037b;
    }

    public final T c() {
        return this.f55036a;
    }
}
