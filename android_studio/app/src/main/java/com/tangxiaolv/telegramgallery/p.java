package com.tangxiaolv.telegramgallery;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;
import com.tangxiaolv.telegramgallery.GalleryConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GalleryActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u000f2\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"Lcom/tangxiaolv/telegramgallery/p;", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroid/content/Intent;", "", "Landroid/net/Uri;", "Landroid/content/Context;", "context", "input", "createIntent", "", "resultCode", "intent", "parseResult", "<init>", "()V", "a", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p extends ActivityResultContract<Intent, List<? extends Uri>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f56951a = new a(null);

    /* compiled from: GalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/tangxiaolv/telegramgallery/p$a;", "", "Landroid/content/Context;", "context", "", "singlePhoto", "Landroid/content/Intent;", "a", "<init>", "()V", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final Intent a(@m8.g Context context, boolean z9) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, GalleryActivity.class);
            intent.putExtra(GalleryActivity.f56233i, new GalleryConfig.b().e(z9).b(new String[]{"image/*", "video/*"}).a());
            return intent;
        }
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.g
    public Intent createIntent(@m8.g Context context, @m8.g Intent input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return input;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x002e A[SYNTHETIC] */
    @Override // androidx.activity.result.contract.ActivityResultContract
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<? extends android.net.Uri> parseResult(int r4, @m8.h android.content.Intent r5) {
        /*
            r3 = this;
            r0 = -1
            if (r4 != r0) goto L78
            if (r5 != 0) goto L7
            goto L78
        L7:
            java.lang.String r4 = "PHOTOS"
            java.io.Serializable r4 = r5.getSerializableExtra(r4)
            boolean r0 = r4 instanceof java.util.List
            if (r0 == 0) goto L14
            java.util.List r4 = (java.util.List) r4
            goto L15
        L14:
            r4 = 0
        L15:
            if (r4 != 0) goto L1b
            java.util.List r4 = kotlin.collections.CollectionsKt.emptyList()
        L1b:
            java.lang.String r0 = "VIDEOS"
            java.lang.String r5 = r5.getStringExtra(r0)
            java.util.List r4 = kotlin.collections.CollectionsKt.plus(r4, r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r4 = r4.iterator()
        L2e:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L4f
            java.lang.Object r0 = r4.next()
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            r2 = 1
            if (r1 == 0) goto L47
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L45
            goto L47
        L45:
            r1 = 0
            goto L48
        L47:
            r1 = 1
        L48:
            r1 = r1 ^ r2
            if (r1 == 0) goto L2e
            r5.add(r0)
            goto L2e
        L4f:
            java.util.ArrayList r4 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r5, r0)
            r4.<init>(r0)
            java.util.Iterator r5 = r5.iterator()
        L5e:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L77
            java.lang.Object r0 = r5.next()
            java.lang.String r0 = (java.lang.String) r0
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            android.net.Uri r0 = android.net.Uri.fromFile(r1)
            r4.add(r0)
            goto L5e
        L77:
            return r4
        L78:
            java.util.List r4 = kotlin.collections.CollectionsKt.emptyList()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.p.parseResult(int, android.content.Intent):java.util.List");
    }
}
