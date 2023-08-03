.class public final Lcom/im/freechat/utils/h;
.super Ljava/lang/Object;
.source "FileUtility.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u001a\u000c\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000\"\u0014\u0010\u0004\u001a\u00020\u00008\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0008\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\"\u0014\u0010\u000c\u001a\u00020\t8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\"\u0014\u0010\u000e\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "",
        "b",
        "I",
        "MAX_SIZE",
        "",
        "c",
        "J",
        "MB",
        "d",
        "THUMBSIZE",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "FileUtility"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final b:I = 0x500

.field public static final c:J = 0x100000L

.field public static final d:I = 0x80


# direct methods
.method public static final a(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "image"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, v0, v4, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "gif"

    if-eqz v5, :cond_1

    invoke-static {p0, v6, v4, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object p0, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->IMAGE_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    goto :goto_3

    :cond_1
    if-eqz p0, :cond_2

    .line 2
    invoke-static {p0, v0, v4, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0, v6, v4, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->GIF_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    goto :goto_3

    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "video"

    .line 3
    invoke-static {p0, v0, v4, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-ne p0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    sget-object p0, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->VIDEO_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    goto :goto_3

    .line 4
    :cond_5
    sget-object p0, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->NOT_MEDIA_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    :goto_3
    return-object p0
.end method
