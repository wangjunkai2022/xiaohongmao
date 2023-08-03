.class public final Lcom/im/freechat/domain/m;
.super Ljava/lang/Object;
.source "NetworkUsage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0004\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/im/freechat/domain/m;",
        "",
        "",
        "a",
        "b",
        "Lcom/im/freechat/domain/NetworkType;",
        "c",
        "receivedBytes",
        "transmittedBytes",
        "type",
        "d",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "J",
        "f",
        "()J",
        "i",
        "(J)V",
        "g",
        "j",
        "Lcom/im/freechat/domain/NetworkType;",
        "h",
        "()Lcom/im/freechat/domain/NetworkType;",
        "k",
        "(Lcom/im/freechat/domain/NetworkType;)V",
        "<init>",
        "(JJLcom/im/freechat/domain/NetworkType;)V",
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
.field private a:J

.field private b:J

.field private c:Lcom/im/freechat/domain/NetworkType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLcom/im/freechat/domain/NetworkType;)V
    .locals 1
    .param p5    # Lcom/im/freechat/domain/NetworkType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/domain/m;->a:J

    .line 3
    iput-wide p3, p0, Lcom/im/freechat/domain/m;->b:J

    .line 4
    iput-object p5, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    return-void
.end method

.method public synthetic constructor <init>(JJLcom/im/freechat/domain/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p3

    :goto_1
    move-object v2, p0

    move-object v7, p5

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;)V

    return-void
.end method

.method public static synthetic e(Lcom/im/freechat/domain/m;JJLcom/im/freechat/domain/NetworkType;ILjava/lang/Object;)Lcom/im/freechat/domain/m;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/im/freechat/domain/m;->a:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/im/freechat/domain/m;->b:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/domain/m;->d(JJLcom/im/freechat/domain/NetworkType;)Lcom/im/freechat/domain/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/m;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/m;->b:J

    return-wide v0
.end method

.method public final c()Lcom/im/freechat/domain/NetworkType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    return-object v0
.end method

.method public final d(JJLcom/im/freechat/domain/NetworkType;)Lcom/im/freechat/domain/m;
    .locals 7
    .param p5    # Lcom/im/freechat/domain/NetworkType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/domain/m;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/domain/m;-><init>(JJLcom/im/freechat/domain/NetworkType;)V

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
    instance-of v1, p1, Lcom/im/freechat/domain/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/domain/m;

    iget-wide v3, p0, Lcom/im/freechat/domain/m;->a:J

    iget-wide v5, p1, Lcom/im/freechat/domain/m;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/domain/m;->b:J

    iget-wide v5, p1, Lcom/im/freechat/domain/m;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    iget-object p1, p1, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/m;->a:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/domain/m;->b:J

    return-wide v0
.end method

.method public final h()Lcom/im/freechat/domain/NetworkType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/im/freechat/domain/m;->a:J

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/domain/m;->b:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/im/freechat/domain/m;->a:J

    return-void
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Lcom/im/freechat/domain/m;->b:J

    return-void
.end method

.method public final k(Lcom/im/freechat/domain/NetworkType;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/NetworkType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkUsageStatistics(receivedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/domain/m;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transmittedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/domain/m;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/domain/m;->c:Lcom/im/freechat/domain/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
