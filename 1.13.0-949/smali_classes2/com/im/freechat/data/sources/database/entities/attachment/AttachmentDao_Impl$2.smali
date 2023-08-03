.class Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "AttachmentDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMessageId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/Converters;->fromType(Lcom/im/freechat/shared/entities/message/Message$MediaType;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    .line 5
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 7
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 13
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 15
    :goto_2
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 18
    :goto_3
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 21
    :goto_4
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 24
    :goto_5
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 27
    :goto_6
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_7

    .line 28
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 29
    :cond_7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 30
    :goto_7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLatitude()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_8

    .line 31
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 32
    :cond_8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLatitude()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 33
    :goto_8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLongitude()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_9

    .line 34
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    .line 35
    :cond_9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLongitude()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 36
    :goto_9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_a

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    .line 38
    :cond_a
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 39
    :goto_a
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_b

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    .line 41
    :cond_b
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 42
    :goto_b
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getGifId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_c

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    .line 44
    :cond_c
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getGifId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `attachment` (`media_id`,`parent_message_id`,`media_type`,`local_path`,`remote_url`,`width`,`height`,`preview_local_path`,`preview_remote_url`,`file_size`,`duration`,`lat`,`lng`,`filename`,`mime_type`,`gif_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
