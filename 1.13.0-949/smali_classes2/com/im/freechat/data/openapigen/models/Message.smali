.class public final Lcom/im/freechat/data/openapigen/models/Message;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008@\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00f9\u0001\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010!J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0010\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\t\u0010P\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010/J\u0010\u0010R\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\t\u0010S\u001a\u00020\u0005H\u00c6\u0003J\t\u0010T\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0010\u0010V\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u000b\u0010W\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0082\u0002\u0010Z\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00032\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010[J\u0013\u0010\\\u001a\u00020]2\u0008\u0010^\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010_\u001a\u00020\u0005H\u00d6\u0001J\t\u0010`\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008(\u0010)R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008-\u0010)R\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u0008.\u0010/R\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u00081\u0010)R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0015\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u00084\u0010)R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0015\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008=\u0010)R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\'R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u00106R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010%R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010%R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010%R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010D\u00a8\u0006a"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/Message;",
        "",
        "id",
        "",
        "chatId",
        "",
        "senderId",
        "sentAt",
        "editedAt",
        "deletedAt",
        "serviceText",
        "",
        "text",
        "sticker",
        "caption",
        "photo",
        "Lcom/im/freechat/data/openapigen/models/Photo;",
        "video",
        "Lcom/im/freechat/data/openapigen/models/Video;",
        "document",
        "Lcom/im/freechat/data/openapigen/models/Document;",
        "media",
        "Lcom/im/freechat/data/openapigen/models/MediaGroup;",
        "animation",
        "Lcom/im/freechat/data/openapigen/models/Animation;",
        "messageEntities",
        "Lcom/im/freechat/data/openapigen/models/MessageEntities;",
        "forwardSender",
        "Lcom/im/freechat/data/openapigen/models/User;",
        "forwardSentAt",
        "forwardMessageId",
        "forwardChatId",
        "replyToMessageId",
        "(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V",
        "getAnimation",
        "()Lcom/im/freechat/data/openapigen/models/Animation;",
        "getCaption",
        "()Ljava/lang/String;",
        "getChatId",
        "()I",
        "getDeletedAt",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getDocument",
        "()Lcom/im/freechat/data/openapigen/models/Document;",
        "getEditedAt",
        "getForwardChatId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getForwardMessageId",
        "getForwardSender",
        "()Lcom/im/freechat/data/openapigen/models/User;",
        "getForwardSentAt",
        "getId",
        "()J",
        "getMedia",
        "()Lcom/im/freechat/data/openapigen/models/MediaGroup;",
        "getMessageEntities",
        "()Lcom/im/freechat/data/openapigen/models/MessageEntities;",
        "getPhoto",
        "()Lcom/im/freechat/data/openapigen/models/Photo;",
        "getReplyToMessageId",
        "getSenderId",
        "getSentAt",
        "getServiceText",
        "getSticker",
        "getText",
        "getVideo",
        "()Lcom/im/freechat/data/openapigen/models/Video;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Message;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animation:Lcom/im/freechat/data/openapigen/models/Animation;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final caption:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final chatId:I

.field private final deletedAt:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final document:Lcom/im/freechat/data/openapigen/models/Document;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final editedAt:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardChatId:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardMessageId:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardSender:Lcom/im/freechat/data/openapigen/models/User;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final forwardSentAt:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:J

.field private final media:Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final photo:Lcom/im/freechat/data/openapigen/models/Photo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final replyToMessageId:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final senderId:I

.field private final sentAt:J

.field private final serviceText:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final sticker:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final video:Lcom/im/freechat/data/openapigen/models/Video;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 3
    .param p1    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sender_id"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sent_at"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "edited_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "deleted_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "service_text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sticker"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Lcom/im/freechat/data/openapigen/models/Video;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "video"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Lcom/im/freechat/data/openapigen/models/Document;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "document"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Lcom/im/freechat/data/openapigen/models/MediaGroup;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Lcom/im/freechat/data/openapigen/models/Animation;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "animation"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Lcom/im/freechat/data/openapigen/models/MessageEntities;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_entities"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p19    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_sender"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_sent_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_chat_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "reply_to_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    move v1, p3

    .line 3
    iput v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    move v1, p4

    .line 4
    iput v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    move-object v1, p7

    .line 6
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object/from16 v17, v2

    goto :goto_7

    :cond_7
    move-object/from16 v17, p14

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move-object/from16 v18, v2

    goto :goto_8

    :cond_8
    move-object/from16 v18, p15

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move-object/from16 v19, v2

    goto :goto_9

    :cond_9
    move-object/from16 v19, p16

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    move-object/from16 v20, v2

    goto :goto_a

    :cond_a
    move-object/from16 v20, p17

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v21, v2

    goto :goto_b

    :cond_b
    move-object/from16 v21, p18

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v22, v2

    goto :goto_c

    :cond_c
    move-object/from16 v22, p19

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v23, v2

    goto :goto_d

    :cond_d
    move-object/from16 v23, p20

    :goto_d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v24, v2

    goto :goto_e

    :cond_e
    move-object/from16 v24, p21

    :goto_e
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v25, v2

    goto :goto_f

    :cond_f
    move-object/from16 v25, p22

    :goto_f
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move-object/from16 v26, v2

    goto :goto_10

    :cond_10
    move-object/from16 v26, p23

    :goto_10
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    .line 23
    invoke-direct/range {v3 .. v26}, Lcom/im/freechat/data/openapigen/models/Message;-><init>(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/Message;JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/Message;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p14

    :goto_b
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p23

    :goto_14
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p22, v15

    move-object/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lcom/im/freechat/data/openapigen/models/Message;->copy(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final component12()Lcom/im/freechat/data/openapigen/models/Video;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    return-object v0
.end method

.method public final component13()Lcom/im/freechat/data/openapigen/models/Document;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    return-object v0
.end method

.method public final component14()Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    return-object v0
.end method

.method public final component15()Lcom/im/freechat/data/openapigen/models/Animation;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    return-object v0
.end method

.method public final component16()Lcom/im/freechat/data/openapigen/models/MessageEntities;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    return-object v0
.end method

.method public final component17()Lcom/im/freechat/data/openapigen/models/User;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    return-object v0
.end method

.method public final component18()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component19()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    return v0
.end method

.method public final component20()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component21()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Message;
    .locals 25
    .param p1    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sender_id"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sent_at"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "edited_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "deleted_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "service_text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "sticker"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Lcom/im/freechat/data/openapigen/models/Video;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "video"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Lcom/im/freechat/data/openapigen/models/Document;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "document"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Lcom/im/freechat/data/openapigen/models/MediaGroup;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Lcom/im/freechat/data/openapigen/models/Animation;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "animation"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Lcom/im/freechat/data/openapigen/models/MessageEntities;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_entities"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p19    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_sender"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_sent_at"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_chat_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "reply_to_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    new-instance v24, Lcom/im/freechat/data/openapigen/models/Message;

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v23}, Lcom/im/freechat/data/openapigen/models/Message;-><init>(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v24
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/Message;

    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final getAnimation()Lcom/im/freechat/data/openapigen/models/Animation;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    return-object v0
.end method

.method public final getCaption()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    return v0
.end method

.method public final getDeletedAt()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDocument()Lcom/im/freechat/data/openapigen/models/Document;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    return-object v0
.end method

.method public final getEditedAt()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getForwardChatId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getForwardMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getForwardSender()Lcom/im/freechat/data/openapigen/models/User;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    return-object v0
.end method

.method public final getForwardSentAt()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    return-wide v0
.end method

.method public final getMedia()Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    return-object v0
.end method

.method public final getMessageEntities()Lcom/im/freechat/data/openapigen/models/MessageEntities;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    return-object v0
.end method

.method public final getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final getReplyToMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSenderId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    return v0
.end method

.method public final getSentAt()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    return-wide v0
.end method

.method public final getServiceText()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    return-object v0
.end method

.method public final getSticker()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Lcom/im/freechat/data/openapigen/models/Video;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Photo;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Video;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Document;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroup;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Animation;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MessageEntities;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/User;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    if-nez v1, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->senderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sentAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->sentAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", editedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->editedAt:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deletedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->deletedAt:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->serviceText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->sticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->video:Lcom/im/freechat/data/openapigen/models/Video;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", document="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->document:Lcom/im/freechat/data/openapigen/models/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->animation:Lcom/im/freechat/data/openapigen/models/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->messageEntities:Lcom/im/freechat/data/openapigen/models/MessageEntities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSender:Lcom/im/freechat/data/openapigen/models/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardSentAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardSentAt:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forwardChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->forwardChatId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replyToMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/Message;->replyToMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
