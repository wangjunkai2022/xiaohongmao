package com.tangxiaolv.telegramgallery;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageEditorActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \n2\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\r"}, d2 = {"Lcom/tangxiaolv/telegramgallery/j;", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroid/content/Intent;", "Landroid/content/Context;", "context", "input", "createIntent", "", "resultCode", "intent", "a", "<init>", "()V", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends ActivityResultContract<Intent, Intent> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f56723a = new a(null);

    /* compiled from: ImageEditorActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"Lcom/tangxiaolv/telegramgallery/j$a;", "", "Landroid/content/Context;", "context", "", "sourcePath", "outputPath", "Landroid/content/Intent;", "a", "<init>", "()V", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final Intent a(@m8.g Context context, @m8.g String sourcePath, @m8.g String outputPath) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
            Intrinsics.checkNotNullParameter(outputPath, "outputPath");
            Intent intent = new Intent(context, ImageEditorActivity.class);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69657o, sourcePath);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69658p, outputPath);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69648f, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69649g, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69650h, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69651i, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69652j, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69653k, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69654l, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69655m, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69656n, true);
            intent.putExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69659q, true);
            return intent;
        }
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.h
    /* renamed from: a */
    public Intent parseResult(int i4, @m8.h Intent intent) {
        if (i4 == -1) {
            return intent;
        }
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.g
    public Intent createIntent(@m8.g Context context, @m8.g Intent input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return input;
    }
}
