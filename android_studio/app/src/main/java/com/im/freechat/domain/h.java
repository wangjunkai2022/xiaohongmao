package com.im.freechat.domain;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.FileInfo;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.ChosenAttachment;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* compiled from: FileUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J@\u0010\u000b\u001a\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH&J-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\fH¦@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u0004H&J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004H&J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H&J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lcom/im/freechat/domain/h;", "", "Ljava/io/File;", "file", "", "uri", "name", "extension", "", "maxWidth", "maxHeight", ContextChain.TAG_INFRA, "", "messageId", "tempId", "Lcom/im/freechat/shared/entities/message/Attachment;", "c", "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initialUri", "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "b", "initialUriString", "Lcom/im/freechat/shared/entities/message/ChosenAttachment;", "f", "d", "uriString", "g", "Lcom/im/freechat/shared/entities/FileInfo;", "e", "path", "a", "attachment", "h", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface h {

    /* compiled from: FileUtil.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a {
        public static /* synthetic */ File a(h hVar, File file, String str, String str2, String str3, int i4, int i10, int i11, Object obj) {
            if (obj == null) {
                return hVar.i((i11 & 1) != 0 ? null : file, (i11 & 2) != 0 ? null : str, str2, str3, i4, i10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getOrientedScaledImage");
        }
    }

    @m8.g
    File a(@m8.g String str);

    @m8.g
    ChosenAttachment.FileType b(@m8.g String str);

    @m8.h
    Object c(long j4, @m8.g String str, long j10, @m8.g Continuation<? super Attachment> continuation);

    @m8.g
    String d(@m8.h String str);

    @m8.h
    FileInfo e(@m8.h String str);

    @m8.g
    ChosenAttachment f(@m8.g String str);

    @m8.h
    String g(@m8.g String str);

    @m8.g
    Attachment h(@m8.g Attachment attachment);

    @m8.g
    File i(@m8.h File file, @m8.h String str, @m8.g String str2, @m8.g String str3, int i4, int i10);
}
