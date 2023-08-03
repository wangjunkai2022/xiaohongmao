.class public Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;
.super Lmaster/flame/danmaku/danmaku/model/m$b;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/renderer/android/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lmaster/flame/danmaku/danmaku/model/n;

.field f:I

.field public g:Lmaster/flame/danmaku/danmaku/model/d;

.field public h:Lmaster/flame/danmaku/danmaku/model/d;

.field public i:Lmaster/flame/danmaku/danmaku/model/d;

.field j:Z

.field k:F

.field final synthetic l:Lmaster/flame/danmaku/danmaku/renderer/android/b$b;


# direct methods
.method protected constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->l:Lmaster/flame/danmaku/danmaku/renderer/android/b$b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$b;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    .line 4
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->j:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 3
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->j:Z

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->l:Lmaster/flame/danmaku/danmaku/renderer/android/b$b;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f:I

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 4
    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 5
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->j:Z

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_2

    .line 7
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    .line 8
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->k:F

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/n;->r()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 10
    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 11
    :cond_3
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    .line 12
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/d;->f()J

    move-result-wide v7

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->l()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    move-object v5, p1

    .line 13
    invoke-static/range {v4 .. v10}, Lg8/a;->i(Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->j:Z

    if-nez v0, :cond_4

    .line 14
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 15
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result p1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->o()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    sub-float/2addr p1, v0

    iput p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->k:F

    return v2
.end method

.method public f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;
    .locals 2

    .line 1
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V

    .line 2
    iget v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->f:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->a:I

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->f:Lmaster/flame/danmaku/danmaku/model/d;

    .line 5
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$b$a;->j:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->i:Z

    return-object v0
.end method
