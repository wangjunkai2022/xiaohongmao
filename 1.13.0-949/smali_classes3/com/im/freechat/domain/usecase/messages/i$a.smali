.class public final Lcom/im/freechat/domain/usecase/messages/i$a;
.super Ljava/lang/Object;
.source "SendGiphyStickerInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/domain/usecase/messages/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000e\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\r\u0010\u0005R\u0017\u0010\u0010\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0005R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/messages/i$a;",
        "",
        "",
        "a",
        "I",
        "()I",
        "chatId",
        "",
        "b",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "mediaId",
        "e",
        "width",
        "d",
        "height",
        "",
        "Ljava/lang/Long;",
        "()Ljava/lang/Long;",
        "replyToMessageId",
        "<init>",
        "(ILjava/lang/String;IILjava/lang/Long;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/Long;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "mediaId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->c:I

    .line 5
    iput p4, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->d:I

    .line 6
    iput-object p5, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/messages/i$a;->c:I

    return v0
.end method
