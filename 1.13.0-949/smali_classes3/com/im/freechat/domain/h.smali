.class public interface abstract Lcom/im/freechat/domain/h;
.super Ljava/lang/Object;
.source "FileUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J@\u0010\u000b\u001a\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H&J-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000cH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u0004H&J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004H&J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H&J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/im/freechat/domain/h;",
        "",
        "Ljava/io/File;",
        "file",
        "",
        "uri",
        "name",
        "extension",
        "",
        "maxWidth",
        "maxHeight",
        "i",
        "",
        "messageId",
        "tempId",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "c",
        "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initialUri",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;",
        "b",
        "initialUriString",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment;",
        "f",
        "d",
        "uriString",
        "g",
        "Lcom/im/freechat/shared/entities/FileInfo;",
        "e",
        "path",
        "a",
        "attachment",
        "h",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/io/File;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/message/Attachment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lcom/im/freechat/shared/entities/FileInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract h(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/shared/entities/message/Attachment;
    .param p1    # Lcom/im/freechat/shared/entities/message/Attachment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .param p1    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method
