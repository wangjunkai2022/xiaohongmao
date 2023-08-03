package com.im.freechat.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import f4.w1;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatDetailsDownLayout.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014B\u0019\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0013\u0010\u0017B!\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0013\u0010\u001aJ\u0014\u0010\u0005\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/ui/widget/ChatDetailsDownLayout;", "Landroid/widget/FrameLayout;", "Lkotlin/Function0;", "", com.alipay.sdk.authjs.a.f6838i, "setDownClickCallback", "", "count", "setUnreadMessageCount", "b", "Lkotlin/jvm/functions/Function0;", "mDownClickCallback", "Lf4/w1;", "binding", "Lf4/w1;", "getBinding", "()Lf4/w1;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", Session.b.f81849j, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "def", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatDetailsDownLayout extends FrameLayout {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final w1 f43715a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Function0<Unit> f43716b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsDownLayout(@g Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        w1 d4 = w1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43715a = d4;
        d4.f65835b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsDownLayout.b(ChatDetailsDownLayout.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ChatDetailsDownLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> function0 = this$0.f43716b;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @g
    public final w1 getBinding() {
        return this.f43715a;
    }

    public final void setDownClickCallback(@g Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f43716b = callback;
    }

    public final void setUnreadMessageCount(long j4) {
        if (j4 > 0) {
            this.f43715a.f65836c.setText(j4 > 99 ? "99+" : String.valueOf(j4));
            this.f43715a.f65836c.setVisibility(0);
            return;
        }
        this.f43715a.f65836c.setVisibility(8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsDownLayout(@g Context context, @g AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        w1 d4 = w1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43715a = d4;
        d4.f65835b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsDownLayout.b(ChatDetailsDownLayout.this, view);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsDownLayout(@g Context context, @g AttributeSet attrs, int i4) {
        super(context, attrs, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        w1 d4 = w1.d(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.from(context), this, true)");
        this.f43715a = d4;
        d4.f65835b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.widget.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsDownLayout.b(ChatDetailsDownLayout.this, view);
            }
        });
    }
}
