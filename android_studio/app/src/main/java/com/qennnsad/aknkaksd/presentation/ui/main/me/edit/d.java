package com.qennnsad.aknkaksd.presentation.ui.main.me.edit;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditAvatarDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/d;", "Landroid/app/Dialog;", "", "onAttachedToWindow", "Lkotlin/Function0;", "a", "Lkotlin/jvm/functions/Function0;", "takePhoto", "b", "openGallery", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends Dialog {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function0<Unit> f52944a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function0<Unit> f52945b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@m8.g Context context, @m8.g Function0<Unit> takePhoto, @m8.g Function0<Unit> openGallery) {
        super(context, R.style.BottomDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(takePhoto, "takePhoto");
        Intrinsics.checkNotNullParameter(openGallery, "openGallery");
        this.f52944a = takePhoto;
        this.f52945b = openGallery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(d this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f52944a.invoke();
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(d this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f52945b.invoke();
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(d this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setContentView(R.layout.dialog_edit_avatar);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setGravity(80);
        }
        findViewById(R.id.tv_camera).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.d(d.this, view);
            }
        });
        findViewById(R.id.tv_gallery).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.e(d.this, view);
            }
        });
        findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.f(d.this, view);
            }
        });
    }
}
