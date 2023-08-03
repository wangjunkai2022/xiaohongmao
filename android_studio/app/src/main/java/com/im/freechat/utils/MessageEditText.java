package com.im.freechat.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import androidx.emoji2.widget.EmojiEditText;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageEditText.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R0\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006$"}, d2 = {"Lcom/im/freechat/utils/MessageEditText;", "Landroidx/emoji2/widget/EmojiEditText;", "Landroid/view/inputmethod/EditorInfo;", "editorInfo", "Landroid/view/inputmethod/InputConnection;", "onCreateInputConnection", "", "keyCode", "Landroid/view/KeyEvent;", "event", "", "onKeyPreIme", "Lkotlin/Function1;", "Landroid/net/Uri;", "", "a", "Lkotlin/jvm/functions/Function1;", "getCommitCallback", "()Lkotlin/jvm/functions/Function1;", "setCommitCallback", "(Lkotlin/jvm/functions/Function1;)V", "commitCallback", "Lkotlin/Function0;", "b", "Lkotlin/jvm/functions/Function0;", "getOnBackPressed", "()Lkotlin/jvm/functions/Function0;", "setOnBackPressed", "(Lkotlin/jvm/functions/Function0;)V", "onBackPressed", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MessageEditText extends EmojiEditText {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super Uri, Unit> f43737a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function0<Boolean> f43738b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MessageEditText(@m8.g Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MessageEditText(Context context, AttributeSet attributeSet, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i4 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(MessageEditText this$0, InputContentInfoCompat inputContentInfo, int i4, Bundle bundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(inputContentInfo, "inputContentInfo");
        boolean z9 = (i4 & 1) != 0;
        if (Build.VERSION.SDK_INT >= 25 && z9) {
            try {
                inputContentInfo.requestPermission();
            } catch (Exception unused) {
                return false;
            }
        }
        Function1<? super Uri, Unit> function1 = this$0.f43737a;
        if (function1 != null) {
            Uri contentUri = inputContentInfo.getContentUri();
            Intrinsics.checkNotNullExpressionValue(contentUri, "inputContentInfo.contentUri");
            function1.invoke(contentUri);
        }
        return true;
    }

    @m8.h
    public final Function1<Uri, Unit> getCommitCallback() {
        return this.f43737a;
    }

    @m8.h
    public final Function0<Boolean> getOnBackPressed() {
        return this.f43738b;
    }

    @Override // androidx.emoji2.widget.EmojiEditText, android.widget.TextView, android.view.View
    @m8.h
    public InputConnection onCreateInputConnection(@m8.g EditorInfo editorInfo) {
        Intrinsics.checkNotNullParameter(editorInfo, "editorInfo");
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection == null) {
            return null;
        }
        EditorInfoCompat.setContentMimeTypes(editorInfo, new String[]{"image/*"});
        return InputConnectionCompat.createWrapper(onCreateInputConnection, editorInfo, new InputConnectionCompat.OnCommitContentListener() { // from class: com.im.freechat.utils.k
            @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
            public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i4, Bundle bundle) {
                boolean b10;
                b10 = MessageEditText.b(MessageEditText.this, inputContentInfoCompat, i4, bundle);
                return b10;
            }
        });
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i4, @m8.g KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (i4 == 4 && event.getAction() == 1) {
            Function0<Boolean> function0 = this.f43738b;
            boolean z9 = false;
            if (function0 != null && function0.invoke().booleanValue()) {
                z9 = true;
            }
            if (z9) {
                return true;
            }
            return super.dispatchKeyEvent(event);
        }
        return super.dispatchKeyEvent(event);
    }

    public final void setCommitCallback(@m8.h Function1<? super Uri, Unit> function1) {
        this.f43737a = function1;
    }

    public final void setOnBackPressed(@m8.h Function0<Boolean> function0) {
        this.f43738b = function0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MessageEditText(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
