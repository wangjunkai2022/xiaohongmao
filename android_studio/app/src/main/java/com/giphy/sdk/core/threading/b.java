package com.giphy.sdk.core.threading;

import android.os.Handler;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: HandlerExecutor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/giphy/sdk/core/threading/b;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "command", "", "execute", "Landroid/os/Handler;", "a", "Landroid/os/Handler;", "handler", "<init>", "(Landroid/os/Handler;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f16985a;

    public b(@g Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.f16985a = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@g Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        this.f16985a.post(command);
    }
}
