package com.tangxiaolv.telegramgallery;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.tangxiaolv.telegramgallery.q;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageEditorActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;", "Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;", "", "L0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onBackPressed", "<init>", "()V", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ImageEditorActivity extends EditImageActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(ImageEditorActivity this$0, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(DialogInterface dialogInterface, int i4) {
        dialogInterface.cancel();
    }

    private final void L0() {
        Intent intent = new Intent();
        intent.putExtra(i.f56722a, true);
        setResult(-1, intent);
        finish();
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        switch (this.f69321i) {
            case 1:
                this.f69331s.U();
                return;
            case 2:
                this.f69332t.U();
                return;
            case 3:
                this.f69333u.U();
                return;
            case 4:
                this.f69334v.U();
                return;
            case 5:
                this.f69335w.U();
                return;
            case 6:
                this.f69336x.U();
                return;
            case 7:
                this.f69337y.U();
                return;
            case 8:
                this.f69338z.U();
                return;
            case 9:
                this.A.U();
                return;
            default:
                if (c0()) {
                    L0();
                    return;
                } else {
                    new AlertDialog.Builder(this).setMessage(q.o.N0).setCancelable(false).setPositiveButton(q.o.I0, new DialogInterface.OnClickListener() { // from class: com.tangxiaolv.telegramgallery.g
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            ImageEditorActivity.J0(ImageEditorActivity.this, dialogInterface, i4);
                        }
                    }).setNegativeButton(q.o.H0, h.f56721a).show();
                    return;
                }
        }
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
    }
}
