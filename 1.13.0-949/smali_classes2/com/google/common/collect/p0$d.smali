.class final Lcom/google/common/collect/p0$d;
.super Lcom/google/common/collect/p0;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p0<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/p0$d;

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/p0$d;

    invoke-direct {v0}, Lcom/google/common/collect/p0$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/p0$d;->b:Lcom/google/common/collect/p0$d;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/p0;-><init>(ZLcom/google/common/collect/p0$a;)V

    return-void
.end method

.method static synthetic l()Lcom/google/common/collect/p0$d;
    .locals 1

    sget-object v0, Lcom/google/common/collect/p0$d;->b:Lcom/google/common/collect/p0$d;

    return-object v0
.end method

.method private s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/p0$d;->b:Lcom/google/common/collect/p0$d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p0$d;->m(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic e()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p0$d;->n()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p0$d;->o()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$d;->p(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic j(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/p0$d;->q(Ljava/lang/Long;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$d;->r(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    cmp-long p1, v0, v6

    if-lez p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public n()Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method q(Ljava/lang/Long;J)Ljava/lang/Long;
    .locals 4

    const-string v0, "distance"

    .line 1
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/y;->c(JLjava/lang/String;)J

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "overflow"

    invoke-static {p1, p2}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 4
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DiscreteDomain.longs()"

    return-object v0
.end method
