.class public interface abstract Lcom/im/freechat/shared/entities/message/Attachment;
.super Ljava/lang/Object;
.source "Attachment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005R\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0001\u0006\u0014\u0015\u0016\u0017\u0018\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "",
        "fileName",
        "",
        "getFileName",
        "()Ljava/lang/String;",
        "localPath",
        "getLocalPath",
        "mediaId",
        "",
        "getMediaId",
        "()J",
        "messageId",
        "getMessageId",
        "remoteUrl",
        "getRemoteUrl",
        "type",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "Lcom/im/freechat/shared/entities/message/GifAttachment;",
        "Lcom/im/freechat/shared/entities/message/ImageAttachment;",
        "Lcom/im/freechat/shared/entities/message/LocationAttachment;",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getFileName()Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getLocalPath()Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getMediaId()J
.end method

.method public abstract getMessageId()J
.end method

.method public abstract getRemoteUrl()Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .annotation build Lm8/g;
    .end annotation
.end method
