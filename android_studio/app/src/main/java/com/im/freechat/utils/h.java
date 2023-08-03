package com.im.freechat.utils;

import kotlin.Metadata;

/* compiled from: FileUtility.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u001a\f\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000\"\u0014\u0010\u0004\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003\"\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007\"\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0014\u0010\u000e\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0007¨\u0006\u000f"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "a", "Ljava/lang/String;", "TAG", "", "b", "I", "MAX_SIZE", "", "c", "J", "MB", "d", "THUMBSIZE", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final String f43781a = "FileUtility";

    /* renamed from: b  reason: collision with root package name */
    public static final int f43782b = 1280;

    /* renamed from: c  reason: collision with root package name */
    public static final long f43783c = 1048576;

    /* renamed from: d  reason: collision with root package name */
    public static final int f43784d = 128;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003c, code lost:
        if (r7 == true) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.im.freechat.shared.entities.message.ChosenAttachment.FileType a(@m8.h java.lang.String r7) {
        /*
            java.lang.String r0 = "image"
            r1 = 0
            r2 = 2
            r3 = 1
            r4 = 0
            if (r7 == 0) goto L10
            boolean r5 = kotlin.text.StringsKt.startsWith$default(r7, r0, r4, r2, r1)
            if (r5 != r3) goto L10
            r5 = 1
            goto L11
        L10:
            r5 = 0
        L11:
            java.lang.String r6 = "gif"
            if (r5 == 0) goto L1e
            boolean r5 = kotlin.text.StringsKt.contains$default(r7, r6, r4, r2, r1)
            if (r5 != 0) goto L1e
            com.im.freechat.shared.entities.message.ChosenAttachment$FileType r7 = com.im.freechat.shared.entities.message.ChosenAttachment.FileType.IMAGE_FILE
            goto L47
        L1e:
            if (r7 == 0) goto L28
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r7, r0, r4, r2, r1)
            if (r0 != r3) goto L28
            r0 = 1
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L34
            boolean r0 = kotlin.text.StringsKt.contains$default(r7, r6, r4, r2, r1)
            if (r0 == 0) goto L34
            com.im.freechat.shared.entities.message.ChosenAttachment$FileType r7 = com.im.freechat.shared.entities.message.ChosenAttachment.FileType.GIF_FILE
            goto L47
        L34:
            if (r7 == 0) goto L3f
            java.lang.String r0 = "video"
            boolean r7 = kotlin.text.StringsKt.startsWith$default(r7, r0, r4, r2, r1)
            if (r7 != r3) goto L3f
            goto L40
        L3f:
            r3 = 0
        L40:
            if (r3 == 0) goto L45
            com.im.freechat.shared.entities.message.ChosenAttachment$FileType r7 = com.im.freechat.shared.entities.message.ChosenAttachment.FileType.VIDEO_FILE
            goto L47
        L45:
            com.im.freechat.shared.entities.message.ChosenAttachment$FileType r7 = com.im.freechat.shared.entities.message.ChosenAttachment.FileType.NOT_MEDIA_FILE
        L47:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.utils.h.a(java.lang.String):com.im.freechat.shared.entities.message.ChosenAttachment$FileType");
    }
}
