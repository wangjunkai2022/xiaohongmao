.class public final Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
.super Ljava/lang/Object;
.source "AttachmentEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "parent_message_id"
            }
            entity = Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
            onDelete = 0x5
            onUpdate = 0x5
            parentColumns = {
                "message_id"
            }
        .end subannotation
    }
    tableName = "attachment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u00081\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0017J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0010\u00103\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0010\u00104\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u00105\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000b\u00106\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010>\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u000b\u0010?\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u00c8\u0001\u0010A\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010F\u001a\u00020\u000bH\u00d6\u0001J\t\u0010G\u001a\u00020\u0008H\u00d6\u0001R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008!\u0010\u0019R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008\"\u0010#R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001cR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008&\u0010#R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010(R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001cR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001cR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u00080\u0010\u0019\u00a8\u0006H"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "",
        "mediaId",
        "",
        "messageId",
        "type",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "localPath",
        "",
        "remoteUrl",
        "width",
        "",
        "height",
        "previewLocalPath",
        "previewRemoteUrl",
        "fileSize",
        "duration",
        "latitude",
        "",
        "longitude",
        "fileName",
        "mimeType",
        "gifId",
        "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getDuration",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getFileName",
        "()Ljava/lang/String;",
        "getFileSize",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getGifId",
        "getHeight",
        "getLatitude",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getLocalPath",
        "getLongitude",
        "getMediaId",
        "()J",
        "getMessageId",
        "getMimeType",
        "getPreviewLocalPath",
        "getPreviewRemoteUrl",
        "getRemoteUrl",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getWidth",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
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
.field private final duration:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "filename"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fileSize:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "file_size"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final gifId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "gif_id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final height:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "height"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final latitude:Ljava/lang/Float;
    .annotation build Landroidx/room/ColumnInfo;
        name = "lat"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final localPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "local_path"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final longitude:Ljava/lang/Float;
    .annotation build Landroidx/room/ColumnInfo;
        name = "lng"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mediaId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private final messageId:J
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "parent_message_id"
    .end annotation
.end field

.field private final mimeType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mime_type"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final previewLocalPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "preview_local_path"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final previewRemoteUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "preview_remote_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final remoteUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "remote_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_type"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final width:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "width"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p5    # Lcom/im/freechat/shared/entities/message/Message$MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p5

    const-string v2, "type"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    .line 2
    iput-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    move-wide v2, p3

    .line 3
    iput-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    .line 4
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-object v1, p6

    .line 5
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    move-object v1, p7

    .line 6
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p14

    :goto_b
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p18

    :goto_f
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->copy(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final component13()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    return-wide v0
.end method

.method public final component3()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
    .locals 20
    .param p5    # Lcom/im/freechat/shared/entities/message/Message$MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

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

    const-string v0, "type"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v18}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getDuration()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    return-object v0
.end method

.method public final getGifId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    return-wide v0
.end method

.method public final getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    return-wide v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviewLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviewRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    if-nez v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttachmentEntity(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mediaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewRemoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->previewRemoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->duration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->latitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->longitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gifId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->gifId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
