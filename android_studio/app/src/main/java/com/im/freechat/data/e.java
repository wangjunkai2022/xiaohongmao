package com.im.freechat.data;

import android.content.Context;
import com.facebook.common.statfs.StatFsHelper;
import com.im.freechat.data.sources.api.ApiService;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0019J5\u0010\b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/e;", "Lcom/im/freechat/domain/g;", "", "token", "uriString", "mimeType", "", com.qennnsad.aknkaksd.data.repository.f.f47745b, "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "name", "Ljava/io/File;", "b", "Landroid/content/Context;", "Landroid/content/Context;", "c", "()Landroid/content/Context;", "context", "Lcom/im/freechat/data/sources/api/ApiService;", "Lcom/im/freechat/data/sources/api/ApiService;", "apiService", "Lcom/im/freechat/domain/h;", "Lcom/im/freechat/domain/h;", "fileUtil", "<init>", "(Landroid/content/Context;Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/domain/h;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class e implements com.im.freechat.domain.g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f39765a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final ApiService f39766b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.h f39767c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.FileRepositoryImpl", f = "FileRepositoryImpl.kt", i = {}, l = {21}, m = "setAvatar", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39768a;

        /* renamed from: c  reason: collision with root package name */
        int f39770c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39768a = obj;
            this.f39770c |= Integer.MIN_VALUE;
            return e.this.a(null, null, null, 0L, this);
        }
    }

    public e(@m8.g Context context, @m8.g ApiService apiService, @m8.g com.im.freechat.domain.h fileUtil) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiService, "apiService");
        Intrinsics.checkNotNullParameter(fileUtil, "fileUtil");
        this.f39765a = context;
        this.f39766b = apiService;
        this.f39767c = fileUtil;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // com.im.freechat.domain.g
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(@m8.g java.lang.String r6, @m8.g java.lang.String r7, @m8.g java.lang.String r8, long r9, @m8.g kotlin.coroutines.Continuation<? super java.lang.String> r11) {
        /*
            r5 = this;
            boolean r9 = r11 instanceof com.im.freechat.data.e.a
            if (r9 == 0) goto L13
            r9 = r11
            com.im.freechat.data.e$a r9 = (com.im.freechat.data.e.a) r9
            int r10 = r9.f39770c
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r10 & r0
            if (r1 == 0) goto L13
            int r10 = r10 - r0
            r9.f39770c = r10
            goto L18
        L13:
            com.im.freechat.data.e$a r9 = new com.im.freechat.data.e$a
            r9.<init>(r11)
        L18:
            java.lang.Object r10 = r9.f39768a
            java.lang.Object r11 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r9.f39770c
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L32
            if (r0 != r2) goto L2a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5a
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = "avatar"
            java.io.File r7 = r5.b(r10, r7)
            okhttp3.MultipartBody$Part$Companion r0 = okhttp3.MultipartBody.Part.Companion
            okhttp3.RequestBody$Companion r3 = okhttp3.RequestBody.Companion
            okhttp3.MediaType$Companion r4 = okhttp3.MediaType.Companion
            okhttp3.MediaType r8 = r4.parse(r8)
            okhttp3.RequestBody r7 = r3.create(r7, r8)
            java.lang.String r8 = "avatar.jpg"
            okhttp3.MultipartBody$Part r7 = r0.createFormData(r10, r8, r7)
            com.im.freechat.data.sources.api.ApiService r8 = r5.f39766b
            r9.f39770c = r2
            java.lang.Object r10 = r8.updateUserInfo(r6, r7, r1, r9)
            if (r10 != r11) goto L5a
            return r11
        L5a:
            com.im.freechat.data.sources.api.entities.Response r10 = (com.im.freechat.data.sources.api.entities.Response) r10
            java.lang.Object r6 = r10.getData()
            com.im.freechat.data.sources.api.entities.contact.ContactResponse r6 = (com.im.freechat.data.sources.api.entities.contact.ContactResponse) r6
            if (r6 == 0) goto L68
            java.lang.String r1 = r6.getAvatar()
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.e.a(java.lang.String, java.lang.String, java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.g
    @m8.g
    public File b(@m8.g String name, @m8.g String uriString) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(uriString, "uriString");
        return this.f39767c.i(null, uriString, name, "jpg", StatFsHelper.f11024h, StatFsHelper.f11024h);
    }

    @m8.g
    public final Context c() {
        return this.f39765a;
    }
}
