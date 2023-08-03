.class public final Lcom/im/freechat/ui/chat/history/a;
.super Ljava/lang/Object;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008&\u0010\'J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00c6\u0003J?\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\t\u0010\u0012\u001a\u00020\nH\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\r\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u000e\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u000f\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010 \u001a\u0004\u0008!\u0010\"R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/a;",
        "",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "a",
        "Lcom/im/freechat/shared/entities/contact/Sender;",
        "b",
        "",
        "c",
        "",
        "d",
        "",
        "e",
        "attachment",
        "sender",
        "sendTime",
        "chatId",
        "content",
        "f",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "h",
        "()Lcom/im/freechat/shared/entities/message/Attachment;",
        "Lcom/im/freechat/shared/entities/contact/Sender;",
        "l",
        "()Lcom/im/freechat/shared/entities/contact/Sender;",
        "J",
        "k",
        "()J",
        "I",
        "i",
        "()I",
        "Ljava/lang/String;",
        "j",
        "()Ljava/lang/String;",
        "<init>",
        "(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/shared/entities/message/Attachment;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/shared/entities/contact/Sender;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:J

.field private final d:I

.field private final e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Attachment;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/contact/Sender;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "sender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    .line 4
    iput-wide p3, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    .line 5
    iput p5, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    .line 6
    iput-object p6, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic g(Lcom/im/freechat/ui/chat/history/a;Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/ui/chat/history/a;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p5, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    :cond_3
    move v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-wide p5, v0

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/im/freechat/ui/chat/history/a;->f(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)Lcom/im/freechat/ui/chat/history/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/im/freechat/shared/entities/message/Attachment;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    return-object v0
.end method

.method public final b()Lcom/im/freechat/shared/entities/contact/Sender;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    return-object v0
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
    instance-of v1, p1, Lcom/im/freechat/ui/chat/history/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/ui/chat/history/a;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    iget-object v3, p1, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    iget-object v3, p1, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    iget-wide v5, p1, Lcom/im/freechat/ui/chat/history/a;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    iget v3, p1, Lcom/im/freechat/ui/chat/history/a;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)Lcom/im/freechat/ui/chat/history/a;
    .locals 8
    .param p1    # Lcom/im/freechat/shared/entities/message/Attachment;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/contact/Sender;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "sender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/history/a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/im/freechat/ui/chat/history/a;-><init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V

    return-object v0
.end method

.method public final h()Lcom/im/freechat/shared/entities/message/Attachment;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/Sender;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    invoke-static {v2, v3}, La5/a;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    return-wide v0
.end method

.method public final l()Lcom/im/freechat/shared/entities/contact/Sender;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttachmentWrapper(attachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->a:Lcom/im/freechat/shared/entities/message/Attachment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->b:Lcom/im/freechat/shared/entities/contact/Sender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/ui/chat/history/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/ui/chat/history/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
