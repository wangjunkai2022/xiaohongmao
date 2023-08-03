.class Lcom/google/common/cache/e$o;
.super Lcom/google/common/cache/e$d;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/e;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expireAfterWrite already set"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 2
    iput-wide p2, p1, Lcom/google/common/cache/e;->h:J

    .line 3
    iput-object p4, p1, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
