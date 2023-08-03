package com.im.freechat.ui.chat.message_gallery;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.os.BundleKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageGalleryActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u000b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/a;", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroid/content/Intent;", "Landroid/os/Bundle;", "Landroid/content/Context;", "context", "input", "createIntent", "", "resultCode", "intent", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends ActivityResultContract<Intent, Bundle> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final C0354a f43137a = new C0354a(null);
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f43138b = "clicked_item";

    /* compiled from: MessageGalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\u000b\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/a$a;", "", "Landroid/content/Context;", "context", "", k4.b.f84734a, "", "clickedItemId", "Landroid/content/Intent;", "a", "", "KEY_CLICKED_ITEM_ID", "Ljava/lang/String;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.ui.chat.message_gallery.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0354a {
        private C0354a() {
        }

        public /* synthetic */ C0354a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final Intent a(@m8.g Context context, int i4, long j4) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, MessageGalleryActivity.class);
            intent.putExtra(k4.b.f84734a, i4);
            intent.putExtra(a.f43138b, j4);
            return intent;
        }
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.g
    /* renamed from: a */
    public Bundle parseResult(int i4, @m8.h Intent intent) {
        Pair[] pairArr = new Pair[3];
        pairArr[0] = TuplesKt.to(k4.b.f84736c, intent != null ? intent.getStringExtra(k4.b.f84736c) : null);
        pairArr[1] = TuplesKt.to(k4.b.f84737d, intent != null ? intent.getStringArrayExtra(k4.b.f84737d) : null);
        pairArr[2] = TuplesKt.to(k4.b.f84734a, intent != null ? intent.getStringExtra(k4.b.f84734a) : null);
        return BundleKt.bundleOf(pairArr);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.g
    public Intent createIntent(@m8.g Context context, @m8.g Intent input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return input;
    }
}
