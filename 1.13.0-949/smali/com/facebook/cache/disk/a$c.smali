.class Lcom/facebook/cache/disk/a$c;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/d$c;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk0/c;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedFile"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/cache/disk/a$c;->a:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lk0/c;->b(Ljava/io/File;)Lk0/c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/a$c;->b:Lk0/c;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/facebook/cache/disk/a$c;->c:J

    .line 7
    iput-wide p1, p0, Lcom/facebook/cache/disk/a$c;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/disk/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/a$c;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lk0/a;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/cache/disk/a$c;->c()Lk0/c;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/a$c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/a$c;->b:Lk0/c;

    invoke-virtual {v0}, Lk0/c;->d()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/a$c;->d:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/a$c;->d:J

    return-wide v0
.end method

.method public c()Lk0/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/a$c;->b:Lk0/c;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/a$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/a$c;->b:Lk0/c;

    invoke-virtual {v0}, Lk0/c;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/a$c;->c:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/a$c;->c:J

    return-wide v0
.end method
