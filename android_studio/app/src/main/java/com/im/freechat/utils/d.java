package com.im.freechat.utils;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UiUtils.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B/\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/utils/d;", "Landroid/text/style/ClickableSpan;", "Landroid/text/TextPaint;", "ds", "", "updateDrawState", "Landroid/view/View;", "p0", "onClick", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "", "b", "I", "color", "", "c", "Z", com.google.android.exoplayer2.text.ttml.d.f25716h0, "<init>", "(Lkotlin/jvm/functions/Function1;IZ)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends ClickableSpan {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function1<Unit, Unit> f43745a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43746b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f43747c;

    public /* synthetic */ d(Function1 function1, int i4, boolean z9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i10 & 2) != 0 ? -1 : i4, (i10 & 4) != 0 ? false : z9);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@m8.g View p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        this.f43745a.invoke(Unit.INSTANCE);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@m8.g TextPaint ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        super.updateDrawState(ds);
        int i4 = this.f43746b;
        if (i4 != -1) {
            ds.setColor(i4);
        }
        ds.setUnderlineText(this.f43747c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@m8.g Function1<? super Unit, Unit> onClick, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.f43745a = onClick;
        this.f43746b = i4;
        this.f43747c = z9;
    }
}
