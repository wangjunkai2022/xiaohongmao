.class final Lcom/google/common/collect/p0$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p0<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/p0$c;

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/p0$c;

    invoke-direct {v0}, Lcom/google/common/collect/p0$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/p0$c;->b:Lcom/google/common/collect/p0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/p0;-><init>(ZLcom/google/common/collect/p0$a;)V

    return-void
.end method

.method static synthetic l()Lcom/google/common/collect/p0$c;
    .locals 1

    sget-object v0, Lcom/google/common/collect/p0$c;->b:Lcom/google/common/collect/p0$c;

    return-object v0
.end method

.method private s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/p0$c;->b:Lcom/google/common/collect/p0$c;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p0$c;->m(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic e()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p0$c;->n()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p0$c;->o()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$c;->p(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic j(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/p0$c;->q(Ljava/lang/Integer;J)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$c;->r(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public n()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method q(Ljava/lang/Integer;J)Ljava/lang/Integer;
    .locals 2

    const-string v0, "distance"

    .line 1
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/y;->c(JLjava/lang/String;)J

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->d(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DiscreteDomain.integers()"

    return-object v0
.end method
