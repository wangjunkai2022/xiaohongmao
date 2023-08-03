.class public final Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
.super Ljava/lang/Object;
.source "MessageMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$MediaIdGenerator;,
        Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageMapper.kt\ncom/im/freechat/data/sources/database/entities/message/MessageMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1603#2,9:422\n1851#2:431\n1852#2:433\n1612#2:434\n1603#2,9:435\n1851#2:444\n1852#2:446\n1612#2:447\n1603#2,9:448\n1851#2:457\n1852#2:459\n1612#2:460\n1603#2,9:462\n1851#2:471\n1852#2:473\n1612#2:474\n1603#2,9:475\n1851#2:484\n1852#2:486\n1612#2:487\n1#3:432\n1#3:445\n1#3:458\n1#3:461\n1#3:472\n1#3:485\n*S KotlinDebug\n*F\n+ 1 MessageMapper.kt\ncom/im/freechat/data/sources/database/entities/message/MessageMapper\n*L\n34#1:422,9\n34#1:431\n34#1:433\n34#1:434\n62#1:435,9\n62#1:444\n62#1:446\n62#1:447\n94#1:448,9\n94#1:457\n94#1:459\n94#1:460\n121#1:462,9\n121#1:471\n121#1:473\n121#1:474\n353#1:475,9\n353#1:484\n353#1:486\n353#1:487\n34#1:432\n62#1:445\n94#1:458\n121#1:472\n353#1:485\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rJ\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J&\u0010\u0011\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bJ8\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00062\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\u00020%2\u0006\u0010\n\u001a\u00020\u0015J5\u0010&\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00060\'2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010)J\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0004J\u0014\u0010,\u001a\u00020\t*\u00020-2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u00020.2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u00020/2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u0002002\u0006\u0010\u0010\u001a\u00020\rH\u0002\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "",
        "()V",
        "attachmentsToMediaGroup",
        "Lcom/im/freechat/data/openapigen/models/MediaGroup;",
        "attachments",
        "",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "getAttachmentEntities",
        "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
        "message",
        "Lcom/im/freechat/data/openapigen/models/Message;",
        "getMediaId",
        "",
        "remoteUrl",
        "",
        "messageId",
        "map",
        "Lcom/im/freechat/shared/entities/message/MessageStyle;",
        "entity",
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "contactMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "repliedMessage",
        "attachment",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "entities",
        "repliedMessages",
        "",
        "mapAttachment",
        "mapTarget",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "target",
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;",
        "mapToEntity",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "mapToEntityAndAttachment",
        "Lkotlin/Pair;",
        "lastReadMessageId",
        "(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;",
        "mediaToAttachments",
        "media",
        "toAttachmentEntity",
        "Lcom/im/freechat/data/openapigen/models/Animation;",
        "Lcom/im/freechat/data/openapigen/models/Document;",
        "Lcom/im/freechat/data/openapigen/models/Photo;",
        "Lcom/im/freechat/data/openapigen/models/Video;",
        "MediaIdGenerator",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAttachmentEntities(Lcom/im/freechat/data/openapigen/models/Message;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/openapigen/models/Message;",
            ")",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Photo;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getVideo()Lcom/im/freechat/data/openapigen/models/Video;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getVideo()Lcom/im/freechat/data/openapigen/models/Video;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Video;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getDocument()Lcom/im/freechat/data/openapigen/models/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getDocument()Lcom/im/freechat/data/openapigen/models/Document;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Document;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getMedia()Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getMedia()Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mediaToAttachments(JLcom/im/freechat/data/openapigen/models/MediaGroup;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getAnimation()Lcom/im/freechat/data/openapigen/models/Animation;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getAnimation()Lcom/im/freechat/data/openapigen/models/Animation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Animation;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final map(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;)Lcom/im/freechat/shared/entities/message/MessageStyle;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->getBold()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->getBold()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;->getLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageStyle;

    .line 96
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 97
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;->getLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 98
    sget-object v5, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->BOLD:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, v0

    .line 99
    invoke-direct/range {v2 .. v9}, Lcom/im/freechat/shared/entities/message/MessageStyle;-><init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->getUrl()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->getUrl()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getTarget()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageStyle;

    .line 103
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 105
    sget-object v5, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;->URL:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    .line 106
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->getTarget()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapTarget(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;)Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    move-result-object v7

    move-object v2, v0

    .line 108
    invoke-direct/range {v2 .. v7}, Lcom/im/freechat/shared/entities/message/MessageStyle;-><init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static synthetic map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    return-object p0
.end method

.method private final mapTarget(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;)Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
    .locals 1

    .line 1
    sget-object v0, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;->BROWSER:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;->APP:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    :goto_0
    return-object p1
.end method

.method private final toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Animation;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;
    .locals 20

    move-wide/from16 v3, p2

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p0

    move-wide/from16 v1, p2

    invoke-virtual {v15, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v1

    .line 36
    sget-object v5, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getWidth()I

    move-result v7

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getHeight()I

    move-result v8

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Animation;->getGiphyId()Ljava/lang/String;

    move-result-object v16

    .line 43
    new-instance v19, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-object/from16 v0, v19

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, v17

    const/16 v17, 0x740

    const/16 v18, 0x0

    .line 46
    invoke-direct/range {v0 .. v18}, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19
.end method

.method private final toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Document;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;
    .locals 20

    move-wide/from16 v3, p2

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Document;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p0

    move-wide/from16 v1, p2

    invoke-virtual {v13, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v1

    .line 29
    sget-object v5, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Document;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Document;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Document;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Document;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 34
    new-instance v19, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-object/from16 v0, v19

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const/16 v17, 0x2770

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19
.end method

.method private final toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Photo;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;
    .locals 20

    move-wide/from16 v3, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p0

    move-wide/from16 v1, p2

    invoke-virtual {v13, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2
    sget-object v5, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getWidth()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getHeight()I

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getPreview()Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Photo;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 10
    new-instance v19, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-object/from16 v0, v19

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const/16 v17, 0x2700

    const/16 v18, 0x0

    .line 13
    invoke-direct/range {v0 .. v18}, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19
.end method

.method private final toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Video;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;
    .locals 20

    move-wide/from16 v3, p2

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p0

    move-wide/from16 v1, p2

    invoke-virtual {v13, v0, v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v1

    .line 15
    sget-object v5, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getWidth()I

    move-result v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getHeight()I

    move-result v8

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v11

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getPreview()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Video;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 24
    new-instance v19, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-object/from16 v0, v19

    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 26
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const/16 v17, 0x2600

    const/16 v18, 0x0

    .line 27
    invoke-direct/range {v0 .. v18}, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19
.end method


# virtual methods
.method public final attachmentsToMediaGroup(Ljava/util/List;)Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;)",
            "Lcom/im/freechat/data/openapigen/models/MediaGroup;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "attachments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 4
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    new-instance v2, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    .line 6
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 8
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 9
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v12

    .line 11
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getDuration()Ljava/lang/Integer;

    move-result-object v10

    .line 14
    new-instance v1, Lcom/im/freechat/data/openapigen/models/Video;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/im/freechat/data/openapigen/models/Video;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 15
    invoke-direct {v2, v4, v1, v3, v4}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance v2, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    .line 17
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 19
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 20
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v12

    .line 22
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 24
    new-instance v1, Lcom/im/freechat/data/openapigen/models/Photo;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/im/freechat/data/openapigen/models/Photo;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x2

    .line 25
    invoke-direct {v2, v1, v4, v3, v4}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 27
    :cond_3
    new-instance p1, Lcom/im/freechat/data/openapigen/models/MediaGroup;

    invoke-direct {p1, v0}, Lcom/im/freechat/data/openapigen/models/MediaGroup;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final getMediaId(Ljava/lang/String;J)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "remoteUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$MediaIdGenerator;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$MediaIdGenerator;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$MediaIdGenerator;->hashCode()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public final map(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
    .locals 21
    .param p1    # Lcom/im/freechat/shared/entities/message/Attachment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "attachment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v1, :cond_0

    .line 23
    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 26
    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getWidth()Ljava/lang/Integer;

    move-result-object v10

    .line 27
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getHeight()Ljava/lang/Integer;

    move-result-object v11

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v5

    .line 30
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getDuration()I

    move-result v15

    .line 31
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v16

    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 34
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v12

    .line 35
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v19

    .line 36
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object v2, v0

    .line 37
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 39
    invoke-direct/range {v2 .. v20}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :cond_0
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    if-eqz v1, :cond_1

    .line 41
    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 42
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v5

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getDuration()I

    move-result v1

    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 48
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object v2, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 50
    invoke-direct/range {v2 .. v20}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_1
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v1, :cond_2

    .line 52
    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$MediaType;->FILE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v5

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/message/FileAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileSize()J

    move-result-wide v14

    .line 58
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 59
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v19

    .line 60
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object v2, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 61
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 62
    invoke-direct/range {v2 .. v20}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_2
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    if-eqz v1, :cond_3

    .line 64
    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getWidth()I

    move-result v10

    .line 68
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getHeight()I

    move-result v11

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v5

    .line 71
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 72
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v19

    .line 74
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object v2, v0

    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 76
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 77
    invoke-direct/range {v2 .. v20}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/GifAttachment;

    if-eqz v1, :cond_4

    .line 79
    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$MediaType;->GIF:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/message/GifAttachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getWidth()I

    move-result v10

    .line 83
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getHeight()I

    move-result v11

    .line 84
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getGifId()Ljava/lang/String;

    move-result-object v20

    .line 85
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    .line 86
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v5

    .line 87
    invoke-interface/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 88
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object v2, v0

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 90
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 91
    invoke-direct/range {v2 .. v20}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 92
    :cond_4
    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/LocationAttachment;

    if-eqz v0, :cond_5

    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final map(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/Message;
    .locals 22
    .param p1    # Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "contactMapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getAttachments()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object/from16 v7, p0

    .line 5
    invoke-virtual {v7, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapAttachment(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getSenderEntity()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;)Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 9
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getSendTime()J

    move-result-wide v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v11

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v6

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getForwardSenderEntity()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;)Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v14

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardMessageId()Ljava/lang/Long;

    move-result-object v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getForwardChatId()Ljava/lang/Integer;

    move-result-object v15

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getEditTime()Ljava/lang/Long;

    move-result-object v16

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMentionAll()Z

    move-result v19

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMentions()Ljava/util/Map;

    move-result-object v18

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getStyles()Ljava/util/List;

    move-result-object v20

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->isService()Z

    move-result v21

    .line 21
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message;

    move-object v3, v0

    move-object v7, v2

    move-object v1, v12

    move-object/from16 v12, p3

    move-object/from16 v17, v1

    invoke-direct/range {v3 .. v21}, Lcom/im/freechat/shared/entities/message/Message;-><init>(JILcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/String;JLcom/im/freechat/shared/entities/message/Message$MessageStatus;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/Long;Lcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;ZLjava/util/List;Z)V

    return-object v0
.end method

.method public final map(Ljava/util/List;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactMapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repliedMessages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 111
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 112
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/shared/entities/message/Message;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 113
    :goto_1
    invoke-virtual {p0, v1, p2, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final mapAttachment(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)Lcom/im/freechat/shared/entities/message/Attachment;
    .locals 28
    .param p1    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v11

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1
    move-wide v14, v2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 10
    new-instance v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/im/freechat/shared/entities/message/FileAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 11
    :pswitch_1
    new-instance v1, Lkotlin/NotImplementedError;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 12
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v12

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v18, v4

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_3
    move-wide/from16 v16, v2

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v6

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 24
    new-instance v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-object v3, v0

    invoke-direct/range {v3 .. v18}, Lcom/im/freechat/shared/entities/message/VideoAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JI)V

    goto/16 :goto_6

    .line 25
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v25

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v27, v4

    goto :goto_1

    :cond_4
    const/16 v27, 0x0

    .line 27
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v24

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v20

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v22

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v26

    .line 31
    new-instance v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v27}, Lcom/im/freechat/shared/entities/message/AudioAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 32
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 34
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    .line 35
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getGifId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    move-object v9, v0

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v2

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v4

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 40
    new-instance v0, Lcom/im/freechat/shared/entities/message/GifAttachment;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/im/freechat/shared/entities/message/GifAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    .line 41
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v18

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v23, v0

    goto :goto_4

    :cond_8
    const/16 v23, 0x0

    .line 43
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v24, v4

    goto :goto_5

    :cond_9
    const/16 v24, 0x0

    .line 44
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v17

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v13

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v15

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v22

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v21

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v20

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v19

    .line 51
    new-instance v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-object v12, v0

    invoke-direct/range {v12 .. v24}, Lcom/im/freechat/shared/entities/message/ImageAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mapToEntity(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 22
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "message"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->getUserId()I

    move-result v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v7

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v10

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getMentionAll()Z

    move-result v16

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getMentions()Ljava/util/Map;

    move-result-object v17

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStyles()Ljava/util/List;

    move-result-object v18

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object v2, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x47c0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final mapToEntityAndAttachment(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;
    .locals 20
    .param p1    # Lcom/im/freechat/data/openapigen/models/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/openapigen/models/Message;",
            "Ljava/lang/Long;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getSenderId()I

    move-result v5

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getChatId()I

    move-result v7

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getSentAt()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    :goto_0
    cmp-long v6, v1, v10

    if-lez v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getServiceText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_COMPLETED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    :goto_1
    move-object v10, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getCaption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getServiceText()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v6, v1

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getForwardSender()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    :cond_4
    move-object v12, v0

    .line 10
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getForwardMessageId()Ljava/lang/Long;

    move-result-object v13

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getForwardChatId()Ljava/lang/Integer;

    move-result-object v14

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v15

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getEditedAt()Ljava/lang/Long;

    move-result-object v11

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getMessageEntities()Lcom/im/freechat/data/openapigen/models/MessageEntities;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MessageEntities;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;

    move-object/from16 p2, v1

    move-object/from16 v1, p0

    .line 18
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;)Lcom/im/freechat/shared/entities/message/MessageStyle;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p2

    goto :goto_3

    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v18, v0

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Message;->getServiceText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 21
    :goto_4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object v2, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    .line 22
    invoke-direct/range {p0 .. p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getAttachmentEntities(Lcom/im/freechat/data/openapigen/models/Message;)Ljava/util/List;

    move-result-object v2

    .line 23
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final mediaToAttachments(JLcom/im/freechat/data/openapigen/models/MediaGroup;)Ljava/util/List;
    .locals 3
    .param p3    # Lcom/im/freechat/data/openapigen/models/MediaGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/im/freechat/data/openapigen/models/MediaGroup;",
            ")",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "media"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/MediaGroup;->getItems()Ljava/util/List;

    move-result-object p3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    .line 5
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Photo;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->getVideo()Lcom/im/freechat/data/openapigen/models/Video;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->getVideo()Lcom/im/freechat/data/openapigen/models/Video;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->toAttachmentEntity(Lcom/im/freechat/data/openapigen/models/Video;J)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
