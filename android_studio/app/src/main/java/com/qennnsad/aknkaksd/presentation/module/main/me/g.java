package com.qennnsad.aknkaksd.presentation.module.main.me;

import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeProfileMenu.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001BA\b\u0004\u0012\b\b\u0001\u0010\t\u001a\u00020\u0005\u0012\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0018\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0016R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\u000f\u0010\u0015R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0017\u0010\f\u0082\u0001\u000b\u001b\u001c\u001d\u001e\u001f !\"#$%¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "menuItem", "", "a", "", "I", "f", "()I", "titleId", "b", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "iconId", "", "c", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "tip", "Z", "()Z", "showTipCoins", "e", "tipRes", "<init>", "(ILjava/lang/Integer;Ljava/lang/String;ZLjava/lang/Integer;)V", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/c;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/e;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/h;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/b0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/d0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/e0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/f0;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/g0;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class g extends i {

    /* renamed from: a  reason: collision with root package name */
    private final int f51798a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Integer f51799b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final String f51800c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f51801d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final Integer f51802e;

    public /* synthetic */ g(int i4, Integer num, String str, boolean z9, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? false : z9, (i10 & 16) != 0 ? null : num2, null);
    }

    public /* synthetic */ g(int i4, Integer num, String str, boolean z9, Integer num2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, num, str, z9, num2);
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.me.i
    public boolean a(@m8.g i menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        g gVar = menuItem instanceof g ? (g) menuItem : null;
        return gVar != null && gVar.f51798a == this.f51798a;
    }

    @m8.h
    public final Integer b() {
        return this.f51799b;
    }

    public final boolean c() {
        return this.f51801d;
    }

    @m8.h
    public final String d() {
        return this.f51800c;
    }

    @m8.h
    public final Integer e() {
        return this.f51802e;
    }

    public final int f() {
        return this.f51798a;
    }

    private g(@StringRes int i4, @DrawableRes Integer num, String str, boolean z9, @StringRes Integer num2) {
        super(null);
        this.f51798a = i4;
        this.f51799b = num;
        this.f51800c = str;
        this.f51801d = z9;
        this.f51802e = num2;
    }
}
