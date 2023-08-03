.class Lcom/facebook/cache/disk/a$h;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Ln0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/facebook/cache/disk/a;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/a;Lcom/facebook/cache/disk/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a$h;-><init>(Lcom/facebook/cache/disk/a;)V

    return-void
.end method

.method private d(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/a;->l(Lcom/facebook/cache/disk/a;Ljava/io/File;)Lcom/facebook/cache/disk/a$d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/facebook/cache/disk/a$d;->a:Ljava/lang/String;

    const-string v2, ".tmp"

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a$h;->e(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    const-string v2, ".cnt"

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 4
    :cond_2
    invoke-static {v1}, Lcom/facebook/common/internal/j;->o(Z)V

    return p1
.end method

.method private e(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object p1, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-static {p1}, Lcom/facebook/cache/disk/a;->p(Lcom/facebook/cache/disk/a;)Ls0/a;

    move-result-object p1

    invoke-interface {p1}, Ls0/a;->now()J

    move-result-wide v2

    sget-wide v4, Lcom/facebook/cache/disk/a;->k:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-static {v0}, Lcom/facebook/cache/disk/a;->o(Lcom/facebook/cache/disk/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-static {v0}, Lcom/facebook/cache/disk/a;->n(Lcom/facebook/cache/disk/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    :cond_1
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a$h;->d(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cache/disk/a$h;->b:Lcom/facebook/cache/disk/a;

    invoke-static {v0}, Lcom/facebook/cache/disk/a;->n(Lcom/facebook/cache/disk/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/facebook/cache/disk/a$h;->a:Z

    :cond_0
    return-void
.end method
