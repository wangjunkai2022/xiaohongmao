package com.qennnsad.aknkaksd.domain.base;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequestException.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/HasActionException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/qennnsad/aknkaksd/domain/base/a;", "a", "Lcom/qennnsad/aknkaksd/domain/base/a;", "getAction", "()Lcom/qennnsad/aknkaksd/domain/base/a;", com.alipay.sdk.packet.d.f6907q, "<init>", "(Lcom/qennnsad/aknkaksd/domain/base/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HasActionException extends Exception {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final a f47924a;

    public HasActionException(@m8.g a action) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.f47924a = action;
    }

    @m8.g
    public final a getAction() {
        return this.f47924a;
    }
}
