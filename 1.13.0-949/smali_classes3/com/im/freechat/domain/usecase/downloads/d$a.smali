.class public final Lcom/im/freechat/domain/usecase/downloads/d$a;
.super Ljava/lang/Object;
.source "StartDownloadInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/domain/usecase/downloads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0003\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000f\u001a\u0004\u0008\t\u0010\u0011R\u0017\u0010\u0014\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/downloads/d$a;",
        "",
        "",
        "a",
        "J",
        "d",
        "()J",
        "mediaId",
        "",
        "b",
        "I",
        "()I",
        "chatId",
        "",
        "c",
        "Ljava/lang/String;",
        "e",
        "()Ljava/lang/String;",
        "remoteUrl",
        "fileName",
        "fileSize",
        "<init>",
        "(JILjava/lang/String;Ljava/lang/String;J)V",
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
.field private final a:J

.field private final b:I

.field private final c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "remoteUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->a:J

    .line 3
    iput p3, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->b:I

    .line 4
    iput-object p4, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->d:Ljava/lang/String;

    .line 6
    iput-wide p6, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->e:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->e:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->a:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/downloads/d$a;->c:Ljava/lang/String;

    return-object v0
.end method
