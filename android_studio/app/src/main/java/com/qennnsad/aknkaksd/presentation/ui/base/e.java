package com.qennnsad.aknkaksd.presentation.ui.base;

import com.qennnsad.aknkaksd.presentation.ui.base.n;
import java.lang.ref.WeakReference;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BasePresenter.kt */
@Deprecated(message = "To be removed when its 2 remaining descendants are finally migrated to MVVM")
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u0000*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001c\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\b\u0010\u0012R\u0011\u0010\u0015\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\f\u0010\u0014R\u0011\u0010\u0019\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/base/e;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;", "UiType", "", "", "a", "", "kotlin.jvm.PlatformType", "b", "Ljava/lang/String;", "TAG", "Ljava/lang/ref/WeakReference;", "c", "Ljava/lang/ref/WeakReference;", "mUiInterface", "Lf5/e;", "helper", "Lf5/e;", "()Lf5/e;", "Lg5/a;", "()Lg5/a;", "localDataManager", "Lcom/qennnsad/aknkaksd/data/repository/m;", "d", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "e", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;", "uiInterface", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class e<UiType extends n> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final f5.e f52509a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final String f52510b = getClass().getSimpleName();
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<UiType> f52511c;

    public e(UiType uitype) {
        this.f52511c = new WeakReference<>(uitype);
        Intrinsics.checkNotNull(uitype);
        this.f52509a = ((f5.d) dagger.hilt.c.a(uitype.b(), f5.d.class)).c();
    }

    public void a() {
        this.f52511c.clear();
    }

    @m8.g
    public final f5.e b() {
        return this.f52509a;
    }

    @m8.g
    public final g5.a c() {
        return this.f52509a.c();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m d() {
        return this.f52509a.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final UiType e() {
        return this.f52511c.get();
    }
}
