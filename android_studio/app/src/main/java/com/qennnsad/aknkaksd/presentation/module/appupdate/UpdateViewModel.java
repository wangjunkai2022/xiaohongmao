package com.qennnsad.aknkaksd.presentation.module.appupdate;

import androidx.lifecycle.ViewModel;
import com.qennnsad.aknkaksd.util.m1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdateViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0013\u0010\b\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/qennnsad/aknkaksd/util/m1;", "a", "Lcom/qennnsad/aknkaksd/util/m1;", "updateUtil", "", "()Ljava/lang/String;", "path", "<init>", "(Lcom/qennnsad/aknkaksd/util/m1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UpdateViewModel extends ViewModel {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m1 f50975a;

    @u7.a
    public UpdateViewModel(@m8.g m1 updateUtil) {
        Intrinsics.checkNotNullParameter(updateUtil, "updateUtil");
        this.f50975a = updateUtil;
    }

    @m8.h
    public final String a() {
        return this.f50975a.h();
    }
}
