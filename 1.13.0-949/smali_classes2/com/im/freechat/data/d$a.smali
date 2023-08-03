.class public final Lcom/im/freechat/data/d$a;
.super Ljava/lang/Object;
.source "DownloadManagerRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\u0003\u0010\nR\u0017\u0010\u000e\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\nR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u000f\u0010\nR\u0017\u0010\u0014\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0012\u001a\u0004\u0008\u000c\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/data/d$a;",
        "",
        "",
        "a",
        "J",
        "b",
        "()J",
        "id",
        "",
        "I",
        "()I",
        "downloaded",
        "c",
        "e",
        "total",
        "d",
        "status",
        "",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "path",
        "<init>",
        "(JIIILjava/lang/String;)V",
        "data_release"
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

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIIILjava/lang/String;)V
    .locals 1
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/data/d$a;->a:J

    .line 3
    iput p3, p0, Lcom/im/freechat/data/d$a;->b:I

    .line 4
    iput p4, p0, Lcom/im/freechat/data/d$a;->c:I

    .line 5
    iput p5, p0, Lcom/im/freechat/data/d$a;->d:I

    .line 6
    iput-object p6, p0, Lcom/im/freechat/data/d$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/d$a;->b:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/d$a;->a:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/d$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/d$a;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/d$a;->c:I

    return v0
.end method
