.class public final Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;
.super Ljava/lang/Object;
.source "DownloadEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "media_id",
        "chat_id"
    }
    tableName = "download"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0016\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
        "",
        "chatId",
        "",
        "mediaId",
        "",
        "downloadManagerID",
        "localPath",
        "",
        "remoteUrl",
        "fileSize",
        "downloaded",
        "status",
        "(IJJLjava/lang/String;Ljava/lang/String;JJI)V",
        "getChatId",
        "()I",
        "getDownloadManagerID",
        "()J",
        "getDownloaded",
        "getFileSize",
        "getLocalPath",
        "()Ljava/lang/String;",
        "getMediaId",
        "getRemoteUrl",
        "getStatus",
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
.field private final chatId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "chat_id"
    .end annotation
.end field

.field private final downloadManagerID:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "download_manager_id"
    .end annotation
.end field

.field private final downloaded:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "downloaded"
    .end annotation
.end field

.field private final fileSize:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "file_size"
    .end annotation
.end field

.field private final localPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "local_path"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final mediaId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
    .end annotation
.end field

.field private final remoteUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "remote_url"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final status:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Ljava/lang/String;JJI)V
    .locals 1
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "localPath"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteUrl"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->chatId:I

    .line 3
    iput-wide p2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->mediaId:J

    .line 4
    iput-wide p4, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->downloadManagerID:J

    .line 5
    iput-object p6, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->localPath:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->remoteUrl:Ljava/lang/String;

    .line 7
    iput-wide p8, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->fileSize:J

    .line 8
    iput-wide p10, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->downloaded:J

    .line 9
    iput p12, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->status:I

    return-void
.end method


# virtual methods
.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->chatId:I

    return v0
.end method

.method public final getDownloadManagerID()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->downloadManagerID:J

    return-wide v0
.end method

.method public final getDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->downloaded:J

    return-wide v0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->fileSize:J

    return-wide v0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->mediaId:J

    return-wide v0
.end method

.method public final getRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->status:I

    return v0
.end method
