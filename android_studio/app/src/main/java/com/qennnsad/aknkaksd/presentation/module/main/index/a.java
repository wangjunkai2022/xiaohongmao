package com.qennnsad.aknkaksd.presentation.module.main.index;

import androidx.annotation.StringRes;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: AnchorTypeData.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u001b\b\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\b\u0001\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H&R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\r\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f\u0082\u0001\u0006\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", "", "Landroidx/fragment/app/Fragment;", "a", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "c", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "type", "", "b", "I", "()I", MessageBundle.TITLE_ENTRY, "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;I)V", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/e;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/g;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/s;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/t;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AnchorType f51679a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51680b;

    private a(AnchorType anchorType, @StringRes int i4) {
        this.f51679a = anchorType;
        this.f51680b = i4;
    }

    public /* synthetic */ a(AnchorType anchorType, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(anchorType, i4);
    }

    @m8.g
    public abstract Fragment a();

    public final int b() {
        return this.f51680b;
    }

    @m8.g
    public final AnchorType c() {
        return this.f51679a;
    }
}
