.class final Lcom/google/common/util/concurrent/a1$a$a;
.super Lcom/google/common/util/concurrent/a1$a;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/a1$a;->a()Lcom/google/common/util/concurrent/a1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final a:Lcom/google/common/base/g0;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a1$a;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/base/g0;->c()Lcom/google/common/base/g0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/a1$a$a;->a:Lcom/google/common/base/g0;

    return-void
.end method


# virtual methods
.method protected b()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/a1$a$a;->a:Lcom/google/common/base/g0;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected c(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/n1;->i(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method
