.class Lmaster/flame/danmaku/controller/a$b$d;
.super Lmaster/flame/danmaku/danmaku/model/m$b;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b;->w(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field e:I

.field f:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic g:I

.field final synthetic h:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic i:Z

.field final synthetic j:I

.field final synthetic k:Lmaster/flame/danmaku/controller/a$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b;ILmaster/flame/danmaku/danmaku/model/d;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$d;->k:Lmaster/flame/danmaku/controller/a$b;

    iput p2, p0, Lmaster/flame/danmaku/controller/a$b$d;->g:I

    iput-object p3, p0, Lmaster/flame/danmaku/controller/a$b$d;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-boolean p4, p0, Lmaster/flame/danmaku/controller/a$b$d;->i:Z

    iput p5, p0, Lmaster/flame/danmaku/controller/a$b$d;->j:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$b;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/controller/a$b$d;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$d;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/a$b$d;->f()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 7

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/controller/a$b$d;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/controller/a$b$d;->e:I

    iget v1, p0, Lmaster/flame/danmaku/controller/a$b$d;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$d;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iget v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    iget v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    iget v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    if-ne v3, v5, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    iget v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    if-ne v3, v5, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    iget v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    if-ne v3, v5, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->f:Ljava/lang/Object;

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$d;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->f:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 6
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$d;->f:Lmaster/flame/danmaku/danmaku/model/d;

    return v2

    .line 7
    :cond_2
    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/a$b$d;->i:Z

    if-eqz v3, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    .line 10
    :cond_5
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->h()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$d;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr v3, v4

    .line 11
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$d;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_6

    .line 12
    iget v5, p0, Lmaster/flame/danmaku/controller/a$b$d;->j:I

    int-to-float v6, v5

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_6

    cmpl-float v3, v0, v4

    if-ltz v3, :cond_6

    int-to-float v3, v5

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 13
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$d;->f:Lmaster/flame/danmaku/danmaku/model/d;

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public f()Lmaster/flame/danmaku/danmaku/model/d;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$d;->f:Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0
.end method
